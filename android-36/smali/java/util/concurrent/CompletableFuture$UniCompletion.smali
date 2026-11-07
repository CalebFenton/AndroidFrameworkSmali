.class abstract Ljava/util/concurrent/CompletableFuture$UniCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UniCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$Completion;"
    }
.end annotation


# instance fields
.field greylist-max-o dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o executor:Ljava/util/concurrent/Executor;

.field greylist-max-o src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 533
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    .line 534
    return-void
.end method


# virtual methods
.method final greylist-max-o claim()Z
    .registers 5

    .line 543
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 544
    .local v0, "e":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture$UniCompletion;->compareAndSetForkJoinTaskTag(SS)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 545
    if-nez v0, :cond_d

    .line 546
    return v2

    .line 547
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 548
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 550
    :cond_13
    return v1
.end method

.method final greylist-max-o isLive()Z
    .registers 2

    .line 553
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
