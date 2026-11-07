.class Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;
.super Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.source "AndroidFuture.java"

# interfaces
.implements Ljava/util/function/BiConsumer;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThenComposeAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
        "TU;>;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mFn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mSourceResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 333
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync<TT;TU;>;"
    .local p1, "source":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    .line 334
    invoke-static {p2}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    .line 335
    invoke-static {p3}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mExecutor:Ljava/util/concurrent/Executor;

    .line 338
    invoke-virtual {p1, p0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 339
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 325
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync<TT;TU;>;"
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 343
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync<TT;TU;>;"
    if-eqz p2, :cond_6

    .line 345
    invoke-virtual {p0, p2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_15

    .line 346
    :cond_6
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    if-eqz v0, :cond_12

    .line 348
    iput-object p1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 353
    :cond_12
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->complete(Ljava/lang/Object;)Z

    .line 355
    :goto_15
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 361
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync<TT;TU;>;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mSourceResult:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletionStage;

    invoke-static {v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletionStage;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    .line 367
    .local v1, "secondJob":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    .line 368
    nop

    .line 370
    invoke-interface {v1, p0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    .line 371
    return-void

    .line 362
    .end local v1    # "secondJob":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    :catchall_18
    move-exception v1

    .line 363
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_19
    invoke-virtual {p0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1f

    .line 367
    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    .line 364
    return-void

    .line 367
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$ThenComposeAsync;->mFn:Ljava/util/function/Function;

    .line 368
    throw v1
.end method
