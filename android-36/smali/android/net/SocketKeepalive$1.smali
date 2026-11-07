.class Landroid/net/SocketKeepalive$1;
.super Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/SocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/SocketKeepalive;

.field final synthetic blacklist val$callback:Landroid/net/SocketKeepalive$Callback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/net/SocketKeepalive;Landroid/net/SocketKeepalive$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/SocketKeepalive;
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

    .line 265
    iput-object p1, p0, Landroid/net/SocketKeepalive$1;->this$0:Landroid/net/SocketKeepalive;

    iput-object p2, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    iput-object p3, p0, Landroid/net/SocketKeepalive$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/net/connectivity/android/net/ISocketKeepaliveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDataReceived$5(Landroid/net/SocketKeepalive$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 331
    invoke-virtual {p0}, Landroid/net/SocketKeepalive$Callback;->onDataReceived()V

    .line 332
    return-void
.end method

.method static synthetic blacklist lambda$onError$4(Landroid/net/SocketKeepalive$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;
    .param p1, "error"    # I

    .line 319
    invoke-virtual {p0, p1}, Landroid/net/SocketKeepalive$Callback;->onError(I)V

    .line 320
    return-void
.end method

.method static synthetic blacklist lambda$onPaused$3(Landroid/net/SocketKeepalive$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 307
    invoke-virtual {p0}, Landroid/net/SocketKeepalive$Callback;->onPaused()V

    .line 308
    return-void
.end method

.method static synthetic blacklist lambda$onResumed$1(Landroid/net/SocketKeepalive$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 283
    invoke-virtual {p0}, Landroid/net/SocketKeepalive$Callback;->onResumed()V

    .line 284
    return-void
.end method

.method static synthetic blacklist lambda$onStarted$0(Landroid/net/SocketKeepalive$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 271
    invoke-virtual {p0}, Landroid/net/SocketKeepalive$Callback;->onStarted()V

    .line 272
    return-void
.end method

.method static synthetic blacklist lambda$onStopped$2(Landroid/net/SocketKeepalive$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/SocketKeepalive$Callback;

    .line 295
    invoke-virtual {p0}, Landroid/net/SocketKeepalive$Callback;->onStopped()V

    .line 296
    return-void
.end method


# virtual methods
.method public blacklist onDataReceived()V
    .registers 6

    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 330
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/SocketKeepalive$Callback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    throw v2
.end method

.method public blacklist onError(I)V
    .registers 7
    .param p1, "error"    # I

    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3, p1}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda3;-><init>(Landroid/net/SocketKeepalive$Callback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v2
.end method

.method public blacklist onPaused()V
    .registers 6

    .line 304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 306
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/SocketKeepalive$Callback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw v2
.end method

.method public blacklist onResumed()V
    .registers 6

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->this$0:Landroid/net/SocketKeepalive;

    iget-object v2, v2, Landroid/net/SocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/SocketKeepalive$Callback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    throw v2
.end method

.method public blacklist onStarted()V
    .registers 6

    .line 268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 270
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->this$0:Landroid/net/SocketKeepalive;

    iget-object v2, v2, Landroid/net/SocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda5;-><init>(Landroid/net/SocketKeepalive$Callback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    throw v2
.end method

.method public blacklist onStopped()V
    .registers 6

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 294
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/SocketKeepalive$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/net/SocketKeepalive$1;->val$callback:Landroid/net/SocketKeepalive$Callback;

    new-instance v4, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3}, Landroid/net/SocketKeepalive$1$$ExternalSyntheticLambda4;-><init>(Landroid/net/SocketKeepalive$Callback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v2
.end method
