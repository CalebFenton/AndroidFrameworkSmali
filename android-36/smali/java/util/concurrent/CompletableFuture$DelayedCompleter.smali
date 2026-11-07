.class final Ljava/util/concurrent/CompletableFuture$DelayedCompleter;
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
    name = "DelayedCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final greylist-max-o f:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation
.end field

.field final greylist-max-o u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;TU;)V"
        }
    .end annotation

    .line 2916
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava/util/concurrent/CompletableFuture$DelayedCompleter<TU;>;"
    .local p1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 2918
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava/util/concurrent/CompletableFuture$DelayedCompleter<TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_b

    .line 2919
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 2920
    :cond_b
    return-void
.end method
