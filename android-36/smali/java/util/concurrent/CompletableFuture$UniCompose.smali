.class final Ljava/util/concurrent/CompletableFuture$UniCompose;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniCompose"
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
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;>;"
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
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1105
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->fn:Ljava/util/function/Function;

    .line 1106
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

    .line 1111
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_65

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_65

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v0, :cond_65

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->fn:Ljava/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    if-nez v0, :cond_16

    goto :goto_65

    .line 1114
    :cond_16
    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5a

    .line 1115
    instance-of v0, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2b

    .line 1116
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2a

    .line 1117
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1118
    goto :goto_5a

    .line 1120
    :cond_2a
    const/4 v3, 0x0

    .line 1123
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2b
    if-gtz p1, :cond_34

    :try_start_2d
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$UniCompose;->claim()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1124
    return-object v2

    .line 1125
    :cond_34
    move-object v0, v3

    .line 1126
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v6}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 1127
    .local v6, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v7, v6, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v7

    if-eqz v7, :cond_48

    .line 1128
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_55

    .line 1130
    :cond_48
    new-instance v7, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v7, v4, v6}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->unipush(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 1131
    iget-object v7, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_56

    if-nez v7, :cond_55

    .line 1132
    return-object v2

    .line 1136
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    .end local v6    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    :cond_55
    :goto_55
    goto :goto_5a

    .line 1134
    :catchall_56
    move-exception v0

    .line 1135
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1138
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5a
    :goto_5a
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniCompose;->fn:Ljava/util/function/Function;

    .line 1139
    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1113
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v5    # "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    :cond_65
    :goto_65
    return-object v2
.end method
