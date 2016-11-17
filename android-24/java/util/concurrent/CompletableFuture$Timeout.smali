.class final Ljava/util/concurrent/CompletableFuture$Timeout;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timeout"
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2673
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Timeout;, "Ljava/util/concurrent/CompletableFuture<TT;>.Timeout;"
    .local p1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 2675
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Timeout;, "Ljava/util/concurrent/CompletableFuture<TT;>.Timeout;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2674
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2676
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    #@f
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    #@11
    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    #@17
    goto :goto_0
.end method
