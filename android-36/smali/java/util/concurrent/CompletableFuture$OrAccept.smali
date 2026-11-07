.class final Ljava/util/concurrent/CompletableFuture$OrAccept;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;>",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
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
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1590
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    .line 1591
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

    .line 1595
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    .local v3, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v0, :cond_58

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;
    if-nez v0, :cond_15

    iget-object v0, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v0, :cond_58

    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_58

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    move-object v6, v0

    .local v6, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez v0, :cond_20

    goto :goto_58

    .line 1599
    :cond_20
    iget-object v0, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4b

    .line 1601
    if-gtz p1, :cond_2d

    :try_start_26
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1602
    return-object v2

    .line 1603
    :cond_2d
    instance-of v0, v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3e

    .line 1604
    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_3d

    .line 1605
    invoke-virtual {v5, v7, v4}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1606
    goto :goto_4b

    .line 1608
    :cond_3d
    const/4 v4, 0x0

    .line 1610
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_3e
    move-object v0, v4

    .line 1611
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1612
    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_47

    .line 1615
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_4b

    .line 1613
    :catchall_47
    move-exception v0

    .line 1614
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1617
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4b
    :goto_4b
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava/util/function/Consumer;

    .line 1618
    invoke-virtual {v5, v1, v3, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1598
    .end local v3    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_58
    :goto_58
    return-object v2
.end method
