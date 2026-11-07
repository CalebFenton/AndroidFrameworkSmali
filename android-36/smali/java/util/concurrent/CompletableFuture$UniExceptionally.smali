.class final Ljava/util/concurrent/CompletableFuture$UniExceptionally;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniExceptionally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 943
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    .line 944
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 948
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    if-eqz v0, :cond_2c

    .line 950
    if-lez p1, :cond_19

    move-object v0, v2

    goto :goto_1a

    :cond_19
    move-object v0, p0

    :goto_1a
    invoke-virtual {v4, v3, v5, v0}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2c

    .line 952
    :cond_21
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava/util/function/Function;

    .line 953
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 951
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    :cond_2c
    :goto_2c
    return-object v2
.end method
