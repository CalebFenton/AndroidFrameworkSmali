.class public Landroid/app/appsearch/SearchSessionUtil;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchSessionUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist createGetDocumentCallback(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)",
            "Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSessionUtil$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/app/appsearch/SearchSessionUtil$1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static blacklist safeExecute(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "**>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 5
    const-string p2, "AppSearchSessionUtil"

    const-string v0, "Failed to schedule runnable"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-interface {p1, p0}, Landroid/app/appsearch/BatchResultCallback;->onSystemError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static blacklist safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/appsearch/AppSearchResult<",
            "TT;>;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 2
    const-string p2, "AppSearchSessionUtil"

    const-string v0, "Failed to schedule runnable"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->throwableToFailedResult(Ljava/lang/Throwable;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist sendSystemErrorToCallback(Landroid/app/appsearch/AppSearchResult;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "*>;",
            "Landroid/app/appsearch/BatchResultCallback<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, v1, p0}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/app/appsearch/BatchResultCallback;->onSystemError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
