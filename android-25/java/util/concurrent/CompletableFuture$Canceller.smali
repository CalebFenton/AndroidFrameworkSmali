.class final Ljava/util/concurrent/CompletableFuture$Canceller;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Canceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2694
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Canceller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Canceller;"
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ignore"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2695
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Canceller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Canceller;"
    check-cast p2, Ljava/lang/Throwable;

    #@2
    .end local p2    # "ex":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture$Canceller;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ignore"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2696
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Canceller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Canceller;"
    if-nez p2, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    #@8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2695
    :cond_0
    :goto_0
    return-void

    #@f
    .line 2697
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@15
    goto :goto_0
.end method
