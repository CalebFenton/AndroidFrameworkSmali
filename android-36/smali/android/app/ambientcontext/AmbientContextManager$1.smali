.class Landroid/app/ambientcontext/AmbientContextManager$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "AmbientContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ambientcontext/AmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/ambientcontext/AmbientContextManager;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ambientcontext/AmbientContextManager;
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

    .line 353
    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onEvents$0(Landroid/app/ambientcontext/AmbientContextCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "ambientContextCallback"    # Landroid/app/ambientcontext/AmbientContextCallback;
    .param p1, "events"    # Ljava/util/List;

    .line 358
    invoke-interface {p0, p1}, Landroid/app/ambientcontext/AmbientContextCallback;->onEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRegistrationComplete$1(Landroid/app/ambientcontext/AmbientContextCallback;I)V
    .registers 2
    .param p0, "ambientContextCallback"    # Landroid/app/ambientcontext/AmbientContextCallback;
    .param p1, "statusCode"    # I

    .line 369
    invoke-interface {p0, p1}, Landroid/app/ambientcontext/AmbientContextCallback;->onRegistrationComplete(I)V

    return-void
.end method


# virtual methods
.method public blacklist onEvents(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/ambientcontext/AmbientContextEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    new-instance v4, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ambientcontext/AmbientContextCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw v2
.end method

.method public blacklist onRegistrationComplete(I)V
    .registers 7
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 368
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager$1;->val$ambientContextCallback:Landroid/app/ambientcontext/AmbientContextCallback;

    new-instance v4, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/app/ambientcontext/AmbientContextManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/ambientcontext/AmbientContextCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    throw v2
.end method
