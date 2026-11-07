.class final Ljava/util/concurrent/CompletableFuture$UniRun;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 747
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->fn:Ljava/lang/Runnable;

    .line 748
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 752
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_49

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_49

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->fn:Ljava/lang/Runnable;

    move-object v5, v0

    .local v5, "f":Ljava/lang/Runnable;
    if-nez v0, :cond_16

    goto :goto_49

    .line 755
    :cond_16
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3e

    .line 756
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2a

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2a

    .line 757
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_3e

    .line 760
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2a
    if-gtz p1, :cond_33

    :try_start_2c
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$UniRun;->claim()Z

    move-result v0

    if-nez v0, :cond_33

    .line 761
    return-object v2

    .line 763
    :cond_33
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 764
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3a

    .line 768
    goto :goto_3e

    .line 766
    :catchall_3a
    move-exception v0

    .line 767
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 770
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3e
    :goto_3e
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniRun;->fn:Ljava/lang/Runnable;

    .line 771
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 754
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v5    # "f":Ljava/lang/Runnable;
    :cond_49
    :goto_49
    return-object v2
.end method
