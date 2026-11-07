.class final Ljava/util/concurrent/CompletableFuture$OrRun;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1644
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;TU;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    .line 1645
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1649
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_55

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    .local v3, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_55

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;
    if-nez v0, :cond_15

    iget-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v0, :cond_55

    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_55

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    move-object v6, v0

    .local v6, "f":Ljava/lang/Runnable;
    if-nez v0, :cond_20

    goto :goto_55

    .line 1653
    :cond_20
    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_48

    .line 1655
    if-gtz p1, :cond_2d

    :try_start_26
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$OrRun;->claim()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1656
    return-object v2

    .line 1657
    :cond_2d
    instance-of v0, v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3d

    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_3d

    .line 1659
    invoke-virtual {v5, v7, v4}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_43

    .line 1661
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_3d
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1662
    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_44

    .line 1666
    :goto_43
    goto :goto_48

    .line 1664
    :catchall_44
    move-exception v0

    .line 1665
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1668
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_48
    :goto_48
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    .line 1669
    invoke-virtual {v5, v1, v3, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1652
    .end local v3    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/lang/Runnable;
    :cond_55
    :goto_55
    return-object v2
.end method
