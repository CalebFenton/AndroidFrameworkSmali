.class final Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniComposeExceptionally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field blacklist fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1001
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally<TT;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava/util/function/Function;

    .line 1002
    return-void
.end method


# virtual methods
.method final blacklist tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1007
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_62

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_62

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_62

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    if-nez v0, :cond_16

    goto :goto_62

    .line 1010
    :cond_16
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_57

    .line 1011
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_54

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_54

    .line 1014
    if-gtz p1, :cond_2f

    :try_start_28
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->claim()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1015
    return-object v2

    .line 1016
    :cond_2f
    invoke-interface {v5, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1017
    .local v0, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v7, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v7

    if-eqz v7, :cond_42

    .line 1018
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1020
    :cond_42
    new-instance v7, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v7, v4, v0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1021
    iget-object v7, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_4f

    if-nez v7, :cond_53

    .line 1022
    return-object v2

    .line 1024
    .end local v0    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :catchall_4f
    move-exception v0

    .line 1025
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1026
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    goto :goto_57

    .line 1029
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_54
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    .line 1031
    :cond_57
    :goto_57
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava/util/function/Function;

    .line 1032
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1009
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    :cond_62
    :goto_62
    return-object v2
.end method
