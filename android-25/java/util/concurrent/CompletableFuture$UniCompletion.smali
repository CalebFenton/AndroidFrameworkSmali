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
.field dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field executor:Ljava/util/concurrent/Executor;

.field src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 491
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniCompletion<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    #@3
    .line 493
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    #@5
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@7
    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    #@9
    .line 492
    return-void
.end method


# virtual methods
.method final claim()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniCompletion<TT;TV;>;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 503
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    #@5
    .line 504
    .local v0, "e":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->compareAndSetForkJoinTaskTag(SS)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 505
    if-nez v0, :cond_0

    #@d
    .line 506
    return v3

    #@e
    .line 507
    :cond_0
    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    #@10
    .line 508
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@13
    .line 510
    :cond_1
    return v2
.end method

.method final isLive()Z
    .locals 1

    #@0
    .prologue
    .line 513
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
