.class final Ljava/util/concurrent/CompletableFuture$BiAccept;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BiAccept"
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


# instance fields
.field greylist-max-o fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V
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
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)V"
        }
    .end annotation

    .line 1321
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava/util/function/BiConsumer;

    .line 1322
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

    .line 1328
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_38

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_38

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_38

    iget-object v0, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "s":Ljava/lang/Object;
    if-eqz v0, :cond_38

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    .local v6, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_38

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava/util/function/BiConsumer;

    move-object v7, v0

    .local v7, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz v0, :cond_38

    .line 1331
    if-lez p1, :cond_23

    move-object v0, v2

    goto :goto_24

    :cond_23
    move-object v0, p0

    :goto_24
    invoke-virtual {v6, v3, v5, v7, v0}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_38

    .line 1333
    :cond_2b
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava/util/function/BiConsumer;

    .line 1334
    invoke-virtual {v6, v1, v4, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1332
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    :cond_38
    :goto_38
    return-object v2
.end method
