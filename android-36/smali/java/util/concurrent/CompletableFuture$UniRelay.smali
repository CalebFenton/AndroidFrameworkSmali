.class final Ljava/util/concurrent/CompletableFuture$UniRelay;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniRelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:TU;>",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 1065
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TU;TT;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p2, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1066
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1069
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TU;TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniRelay;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_21

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v0, :cond_11

    goto :goto_21

    .line 1072
    :cond_11
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 1073
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 1074
    :cond_18
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniRelay;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniRelay;->dep:Ljava/util/concurrent/CompletableFuture;

    .line 1075
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1071
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_21
    :goto_21
    return-object v2
.end method
