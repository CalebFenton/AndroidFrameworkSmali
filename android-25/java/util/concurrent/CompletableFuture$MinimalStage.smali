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
        "Ljava/util/concurrent/CompletableFuture",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2705
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2706
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 2722
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2718
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2740
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2737
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2720
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2746
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2710
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2712
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2714
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getNumberOfDependents()I
    .locals 1

    #@0
    .prologue
    .line 2734
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 2730
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isCompletedExceptionally()Z
    .locals 1

    #@0
    .prologue
    .line 2732
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isDone()Z
    .locals 1

    #@0
    .prologue
    .line 2728
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public join()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2716
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2708
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    #@5
    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2726
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2724
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2743
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture<TT;>.MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
