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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 876
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniRelay<TT;>;"
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@4
    .line 875
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniRelay<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 880
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@3
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    #@7
    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->uniRelay(Ljava/util/concurrent/CompletableFuture;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 882
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    #@f
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@11
    .line 883
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 881
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    return-object v3
.end method
