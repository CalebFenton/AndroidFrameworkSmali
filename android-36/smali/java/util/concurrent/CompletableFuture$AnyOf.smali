.class Ljava/util/concurrent/CompletableFuture$AnyOf;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnyOf"
.end annotation


# instance fields
.field blacklist dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist srcs:[Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;[Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;[",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1695
    .local p1, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    .local p2, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p3, "srcs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1696
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava/util/concurrent/CompletableFuture;

    .line 1697
    return-void
.end method


# virtual methods
.method final blacklist isLive()Z
    .registers 3

    .line 1720
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-eqz v0, :cond_b

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method final blacklist tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_37

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-eqz v0, :cond_37

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "as":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_16

    goto :goto_37

    .line 1706
    :cond_16
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava/util/concurrent/CompletableFuture;

    .line 1707
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1708
    array-length v0, v5

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v0, :cond_30

    aget-object v7, v5, v6

    .line 1709
    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eq v7, v1, :cond_2d

    .line 1710
    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1708
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 1711
    :cond_30
    if-gez p1, :cond_33

    .line 1712
    return-object v4

    .line 1714
    :cond_33
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1716
    :cond_36
    return-object v2

    .line 1705
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    .end local v5    # "as":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_37
    :goto_37
    return-object v2
.end method
