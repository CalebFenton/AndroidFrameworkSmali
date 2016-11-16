.class final Ljava/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoCompletion"
.end annotation


# instance fields
.field base:Ljava/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$CoCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.CoCompletion;"
    .local p1, "base":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    #@5
    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$CoCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.CoCompletion;"
    const/4 v1, 0x0

    #@1
    .line 1033
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    #@3
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_0

    #@5
    iget-object v2, v0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$CoCompletion;, "Ljava/util/concurrent/CompletableFuture<TT;>.CoCompletion;"
    const/4 v2, 0x0

    #@1
    .line 1026
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    #@3
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@8
    move-result-object v1

    #@9
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v1, :cond_1

    #@b
    .line 1027
    .end local v1    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    return-object v2

    #@c
    .line 1028
    .restart local v1    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    #@e
    .line 1029
    return-object v1
.end method
