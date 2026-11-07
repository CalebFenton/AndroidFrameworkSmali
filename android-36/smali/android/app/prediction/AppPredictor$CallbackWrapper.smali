.class Landroid/app/prediction/AppPredictor$CallbackWrapper;
.super Landroid/app/prediction/IPredictionCallback$Stub;
.source "AppPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$FBKIE-Z6gEZZW3x7W8tsnhbZ7TY(Landroid/app/prediction/AppPredictor$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictor$CallbackWrapper;->lambda$onResult$0(Landroid/content/pm/ParceledListSlice;)V

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
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 366
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-direct {p0}, Landroid/app/prediction/IPredictionCallback$Stub;-><init>()V

    .line 367
    iput-object p2, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 368
    iput-object p1, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 369
    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "result"    # Landroid/content/pm/ParceledListSlice;

    .line 375
    iget-object v0, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "result"    # Landroid/content/pm/ParceledListSlice;

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/app/prediction/AppPredictor$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/app/prediction/AppPredictor$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictor$CallbackWrapper;Landroid/content/pm/ParceledListSlice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    throw v2
.end method
