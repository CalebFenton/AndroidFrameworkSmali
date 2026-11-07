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
.field final greylist-max-o f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 2905
    .local p1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 2907
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2908
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Timeout;->f:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2909
    :cond_16
    return-void
.end method
