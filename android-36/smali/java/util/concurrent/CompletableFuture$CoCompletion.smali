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
.field greylist-max-o base:Ljava/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1192
    .local p1, "base":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method final greylist-max-o isLive()Z
    .registers 3

    .line 1202
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    move-object v1, v0

    .local v1, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_b

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture$BiCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    move-object v1, v0

    .local v1, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v3, v0

    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_e

    goto :goto_11

    .line 1197
    :cond_e
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    .line 1198
    return-object v3

    .line 1196
    .end local v3    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_11
    :goto_11
    return-object v2
.end method
