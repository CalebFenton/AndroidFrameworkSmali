.class final Ljava/util/concurrent/CompletableFuture$AsyncSupply;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSupply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field greylist-max-o dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field greylist-max-o fn:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1730
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "fn":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1731
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    .line 1732
    return-void
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 1736
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 1726
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 1734
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 1740
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    move-object v2, v0

    .local v2, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz v0, :cond_22

    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    .line 1742
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1f

    .line 1744
    :try_start_13
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    .line 1747
    goto :goto_1f

    .line 1745
    :catchall_1b
    move-exception v0

    .line 1746
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1749
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1751
    .end local v2    # "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    :cond_22
    return-void
.end method

.method public bridge synthetic whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1726
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 1735
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    return-void
.end method
