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
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field fn:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Supplier",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1582
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "fn":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 1583
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    #@5
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    #@7
    .line 1582
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 1588
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->run()V

    #@3
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1586
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 1586
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 1592
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    #@3
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_1

    #@5
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    #@7
    .local v2, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz v2, :cond_1

    #@9
    .line 1593
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava/util/concurrent/CompletableFuture;

    #@b
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    #@d
    .line 1594
    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1596
    :try_start_0
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 1601
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@1b
    .line 1590
    .end local v2    # "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    :cond_1
    return-void

    #@1c
    .line 1597
    .restart local v2    # "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    :catch_0
    move-exception v1

    #@1d
    .line 1598
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@20
    goto :goto_0
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1587
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 1587
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncSupply<TT;>;"
    return-void
.end method
