.class Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;
.super Landroid/os/IRemoteCallback$Stub;
.source "AppPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$vPRGxW2kcKcqj57Iy-Lm2H0p8Ik(Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;->lambda$sendResult$0(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 389
    iput-object p1, p0, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 390
    iput-object p2, p0, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 391
    return-void
.end method

.method private synthetic blacklist lambda$sendResult$0(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .line 397
    iget-object v0, p0, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Bundle;

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 397
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictor$RemoteCallbackWrapper;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    throw v2
.end method
