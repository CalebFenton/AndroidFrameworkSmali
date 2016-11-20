.class final Ljava/util/concurrent/CompletableFuture$Signaller;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Signaller"
.end annotation


# instance fields
.field final deadline:J

.field interrupted:Z

.field final interruptible:Z

.field nanos:J

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .locals 2
    .param p1, "interruptible"    # Z
    .param p2, "nanos"    # J
    .param p4, "deadline"    # J

    #@0
    .prologue
    .line 1666
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Signaller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Signaller;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    #@3
    .line 1667
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@9
    .line 1668
    iput-boolean p1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    #@b
    .line 1669
    iput-wide p2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    #@d
    .line 1670
    iput-wide p4, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    #@f
    .line 1666
    return-void
.end method


# virtual methods
.method public block()Z
    .locals 4

    #@0
    .prologue
    .line 1690
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Signaller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Signaller;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1691
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    #@8
    const-wide/16 v2, 0x0

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1692
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@11
    goto :goto_0

    #@12
    .line 1694
    :cond_0
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    #@14
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@17
    goto :goto_0

    #@18
    .line 1696
    :cond_1
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method final isLive()Z
    .locals 1

    #@0
    .prologue
    .line 1698
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Signaller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Signaller;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

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

.method public isReleasable()Z
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Signaller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Signaller;"
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 1681
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1682
    iput-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@b
    .line 1683
    :cond_0
    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    #@11
    if-nez v1, :cond_2

    #@13
    .line 1684
    :cond_1
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    #@15
    cmp-long v1, v2, v6

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 1685
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    #@1b
    cmp-long v1, v2, v6

    #@1d
    if-lez v1, :cond_2

    #@1f
    .line 1686
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    #@21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@24
    move-result-wide v4

    #@25
    sub-long/2addr v2, v4

    #@26
    iput-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    #@28
    cmp-long v1, v2, v6

    #@2a
    if-gtz v1, :cond_3

    #@2c
    .line 1683
    :cond_2
    :goto_0
    return v0

    #@2d
    .line 1687
    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@2f
    if-eqz v1, :cond_2

    #@31
    const/4 v0, 0x0

    #@32
    goto :goto_0
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "ignore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Signaller;, "Ljava/util/concurrent/CompletableFuture<TT;>.Signaller;"
    const/4 v1, 0x0

    #@1
    .line 1674
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@3
    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    #@5
    .line 1675
    iput-object v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    #@7
    .line 1676
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@a
    .line 1678
    :cond_0
    return-object v1
.end method
