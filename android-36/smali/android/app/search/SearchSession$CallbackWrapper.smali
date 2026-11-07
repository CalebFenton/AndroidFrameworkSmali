.class Landroid/app/search/SearchSession$CallbackWrapper;
.super Landroid/app/search/ISearchCallback$Stub;
.source "SearchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchSession;
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
            "Landroid/app/search/SearchTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$WeWgWZfIwgFnHHy90wVZVI9Dvhc(Landroid/app/search/SearchSession$CallbackWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/search/SearchSession$CallbackWrapper;->lambda$onResult$0(Ljava/util/List;)V

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
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 302
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/search/SearchTarget;>;>;"
    invoke-direct {p0}, Landroid/app/search/ISearchCallback$Stub;-><init>()V

    .line 303
    iput-object p2, p0, Landroid/app/search/SearchSession$CallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 304
    iput-object p1, p0, Landroid/app/search/SearchSession$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 305
    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Ljava/util/List;)V
    .registers 3
    .param p1, "list"    # Ljava/util/List;

    .line 321
    iget-object v0, p0, Landroid/app/search/SearchSession$CallbackWrapper;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/content/pm/ParceledListSlice;)V
    .registers 9
    .param p1, "result"    # Landroid/content/pm/ParceledListSlice;

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/search/SearchTarget;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 316
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 317
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_25

    .line 318
    const-string/jumbo v4, "key_ipc_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 321
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_25
    iget-object v3, p0, Landroid/app/search/SearchSession$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSession$CallbackWrapper;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_34

    .line 323
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/search/SearchTarget;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw v2
.end method
