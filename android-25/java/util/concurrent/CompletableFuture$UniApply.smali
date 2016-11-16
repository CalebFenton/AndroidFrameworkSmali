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
        "Ljava/util/concurrent/CompletableFuture$UniCompletion",
        "<TT;TV;>;"
    }
.end annotation


# instance fields
.field fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniApply<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    #@3
    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    #@5
    .line 550
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniApply<TT;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 555
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@3
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v1, :cond_1

    #@5
    .line 556
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    #@7
    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    #@9
    if-lez p1, :cond_0

    #@b
    move-object v2, v3

    #@c
    :goto_0
    invoke-virtual {v1, v0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 558
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@14
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    #@16
    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$UniApply;->fn:Ljava/util/function/Function;

    #@18
    .line 559
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    :cond_0
    move-object v2, p0

    #@1e
    .line 556
    goto :goto_0

    #@1f
    .line 557
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    return-object v3
.end method
