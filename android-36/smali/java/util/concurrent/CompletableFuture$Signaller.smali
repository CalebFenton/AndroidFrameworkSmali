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
.field final greylist-max-o deadline:J

.field greylist-max-o interrupted:Z

.field final greylist-max-o interruptible:Z

.field greylist-max-o nanos:J

.field volatile greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method constructor greylist-max-o <init>(ZJJ)V
    .registers 7
    .param p1, "interruptible"    # Z
    .param p2, "nanos"    # J
    .param p4, "deadline"    # J

    .line 1814
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1815
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1816
    iput-boolean p1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    .line 1817
    iput-wide p2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    .line 1818
    iput-wide p4, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    .line 1819
    return-void
.end method


# virtual methods
.method public whitelist test-api block()Z
    .registers 5

    .line 1838
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1839
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1840
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 1842
    :cond_13
    iget-wide v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1844
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method final greylist-max-o isLive()Z
    .registers 2

    .line 1846
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isReleasable()Z
    .registers 9

    .line 1829
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 1830
    iput-boolean v1, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1831
    :cond_9
    iget-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v0, :cond_30

    :cond_11
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2c

    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_30

    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->deadline:J

    .line 1834
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_30

    :cond_2c
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_31

    :cond_30
    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 1831
    :goto_32
    return v1
.end method

.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "ignore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "w":Ljava/lang/Thread;
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 1823
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1824
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1826
    :cond_b
    return-object v2
.end method
