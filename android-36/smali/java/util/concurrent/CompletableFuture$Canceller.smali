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
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 2926
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2924
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture$Canceller;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public greylist-max-o accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "ignore"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 2928
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2929
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Canceller;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2930
    :cond_12
    return-void
.end method
