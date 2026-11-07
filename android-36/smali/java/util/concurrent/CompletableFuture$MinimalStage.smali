.class final Ljava/util/concurrent/CompletableFuture$MinimalStage;
.super Ljava/util/concurrent/CompletableFuture;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinimalStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2937
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Object;

    .line 2938
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2958
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2954
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2978
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2975
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2956
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2984
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api exceptionNow()Ljava/lang/Throwable;
    .registers 2

    .line 2952
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2942
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 2944
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2946
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNumberOfDependents()I
    .registers 2

    .line 2972
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 2

    .line 2966
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCompletedExceptionally()Z
    .registers 2

    .line 2968
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 2964
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api join()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2948
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2940
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    return-object v0
.end method

.method public whitelist test-api obtrudeException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2962
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api obtrudeValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2960
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2981
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api resultNow()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2950
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api state()Ljava/util/concurrent/Future$State;
    .registers 2

    .line 2970
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2987
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$MinimalStage;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 2988
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2990
    :cond_f
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2991
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v2, v0, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture$MinimalStage;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 2992
    return-object v0
.end method
