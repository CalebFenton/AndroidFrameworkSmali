.class final Ljava/util/concurrent/CompletableFuture$BiRelay;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BiRelay"
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


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;)V"
        }
    .end annotation

    .line 1458
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<TT;TU;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p2, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1459
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1465
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<TT;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_4b

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_4b

    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "s":Ljava/lang/Object;
    if-eqz v0, :cond_4b

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    .local v6, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez v0, :cond_1b

    goto :goto_4b

    .line 1469
    :cond_1b
    iget-object v0, v6, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_40

    .line 1470
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2c

    move-object v0, v3

    .local v0, "z":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .local v8, "x":Ljava/lang/Throwable;
    if-nez v7, :cond_39

    .end local v0    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_2c
    instance-of v0, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3d

    move-object v0, v5

    .restart local v0    # "z":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .restart local v8    # "x":Ljava/lang/Throwable;
    if-eqz v7, :cond_3d

    .line 1474
    :cond_39
    invoke-virtual {v6, v8, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_40

    .line 1476
    .end local v0    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_3d
    invoke-virtual {v6}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z

    .line 1478
    :cond_40
    :goto_40
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    .line 1479
    invoke-virtual {v6, v1, v4, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1468
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_4b
    :goto_4b
    return-object v2
.end method
