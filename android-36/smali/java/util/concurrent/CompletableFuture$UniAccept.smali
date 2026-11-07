.class final Ljava/util/concurrent/CompletableFuture$UniAccept;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniAccept"
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
.field greylist-max-o fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V
    .registers 5
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
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 673
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    .line 674
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

    .line 678
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_4c

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_4c

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    move-object v5, v0

    .local v5, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez v0, :cond_16

    goto :goto_4c

    .line 681
    :cond_16
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_41

    .line 682
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2b

    .line 683
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2a

    .line 684
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 685
    goto :goto_41

    .line 687
    :cond_2a
    const/4 v3, 0x0

    .line 690
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2b
    if-gtz p1, :cond_34

    :try_start_2d
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_34

    .line 691
    return-object v2

    .line 693
    :cond_34
    move-object v0, v3

    .line 694
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 695
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3d

    .line 699
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_41

    .line 697
    :catchall_3d
    move-exception v0

    .line 698
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 701
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_41
    :goto_41
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    .line 702
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 680
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v5    # "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_4c
    :goto_4c
    return-object v2
.end method
