.class final Ljava/util/concurrent/CompletableFuture$AsyncRun;
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
    name = "AsyncRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1618
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 1619
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    #@5
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    #@7
    .line 1618
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 1624
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->run()V

    #@3
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1622
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 1622
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    const/4 v3, 0x0

    #@1
    .line 1628
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    #@3
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_1

    #@5
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    #@7
    .local v2, "f":Ljava/lang/Runnable;
    if-eqz v2, :cond_1

    #@9
    .line 1629
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    #@b
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    #@d
    .line 1630
    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1632
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@14
    .line 1633
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1638
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    #@1a
    .line 1626
    .end local v2    # "f":Ljava/lang/Runnable;
    :cond_1
    return-void

    #@1b
    .line 1634
    .restart local v2    # "f":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    #@1c
    .line 1635
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    #@1f
    goto :goto_0
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1623
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 1623
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;, "Ljava/util/concurrent/CompletableFuture<TT;>.AsyncRun;"
    return-void
.end method
