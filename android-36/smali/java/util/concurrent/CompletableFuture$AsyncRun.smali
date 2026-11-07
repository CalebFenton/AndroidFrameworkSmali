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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o fn:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1766
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1767
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1768
    return-void
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 1772
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 1762
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 1770
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 1776
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_21

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    move-object v2, v0

    .local v2, "f":Ljava/lang/Runnable;
    if-eqz v0, :cond_21

    .line 1777
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1778
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1e

    .line 1780
    :try_start_13
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1781
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a

    .line 1784
    goto :goto_1e

    .line 1782
    :catchall_1a
    move-exception v0

    .line 1783
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1786
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1788
    .end local v2    # "f":Ljava/lang/Runnable;
    :cond_21
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

    .line 1762
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 1771
    return-void
.end method
