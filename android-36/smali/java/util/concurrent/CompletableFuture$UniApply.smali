.class final Ljava/util/concurrent/CompletableFuture$UniApply;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TV;>;"
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
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)V"
        }
    .end annotation

    .line 601
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    .line 602
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
            "TV;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_4d

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v0, :cond_4d

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-nez v0, :cond_16

    goto :goto_4d

    .line 609
    :cond_16
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_42

    .line 610
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2b

    .line 611
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2a

    .line 612
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 613
    goto :goto_42

    .line 615
    :cond_2a
    const/4 v3, 0x0

    .line 618
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2b
    if-gtz p1, :cond_34

    :try_start_2d
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$UniApply;->claim()Z

    move-result v0

    if-nez v0, :cond_34

    .line 619
    return-object v2

    .line 621
    :cond_34
    move-object v0, v3

    .line 622
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3e

    .line 626
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_42

    .line 624
    :catchall_3e
    move-exception v0

    .line 625
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 628
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_42
    :goto_42
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    .line 629
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 608
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v5    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    :cond_4d
    :goto_4d
    return-object v2
.end method
