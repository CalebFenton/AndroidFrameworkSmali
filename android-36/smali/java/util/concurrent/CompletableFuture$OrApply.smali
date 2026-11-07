.class final Ljava/util/concurrent/CompletableFuture$OrApply;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)V"
        }
    .end annotation

    .line 1537
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    .line 1538
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
            "TV;>;"
        }
    .end annotation

    .line 1542
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    .local v3, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v0, :cond_59

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;
    if-nez v0, :cond_15

    iget-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v0, :cond_59

    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v0, :cond_59

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    move-object v6, v0

    .local v6, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-nez v0, :cond_20

    goto :goto_59

    .line 1546
    :cond_20
    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4c

    .line 1548
    if-gtz p1, :cond_2d

    :try_start_26
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$OrApply;->claim()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1549
    return-object v2

    .line 1550
    :cond_2d
    instance-of v0, v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3e

    .line 1551
    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_3d

    .line 1552
    invoke-virtual {v5, v7, v4}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1553
    goto :goto_4c

    .line 1555
    :cond_3d
    const/4 v4, 0x0

    .line 1557
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_3e
    move-object v0, v4

    .line 1558
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v6, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_48

    .line 1561
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_4c

    .line 1559
    :catchall_48
    move-exception v0

    .line 1560
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1563
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4c
    :goto_4c
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    .line 1564
    invoke-virtual {v5, v1, v3, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1545
    .end local v3    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :cond_59
    :goto_59
    return-object v2
.end method
