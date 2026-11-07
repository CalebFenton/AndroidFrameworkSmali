.class public Ljava/util/concurrent/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Semaphore$NonfairSync;,
        Ljava/util/concurrent/Semaphore$Sync;,
        Ljava/util/concurrent/Semaphore$FairSync;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x2cb8e63801765912L


# instance fields
.field private final greylist-max-o sync:Ljava/util/concurrent/Semaphore$Sync;


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "permits"    # I

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    .line 272
    return-void
.end method

.method public constructor whitelist test-api <init>(IZ)V
    .registers 4
    .param p1, "permits"    # I
    .param p2, "fair"    # Z

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-eqz p2, :cond_b

    new-instance v0, Ljava/util/concurrent/Semaphore$FairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$FairSync;-><init>(I)V

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    .line 287
    return-void
.end method


# virtual methods
.method public whitelist test-api acquire()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    .line 319
    return-void
.end method

.method public whitelist test-api acquire(I)V
    .registers 3
    .param p1, "permits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 474
    if-ltz p1, :cond_8

    .line 475
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    .line 476
    return-void

    .line 474
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api acquireUninterruptibly()V
    .registers 3

    .line 341
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    .line 342
    return-void
.end method

.method public whitelist test-api acquireUninterruptibly(I)V
    .registers 3
    .param p1, "permits"    # I

    .line 503
    if-ltz p1, :cond_8

    .line 504
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    .line 505
    return-void

    .line 503
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api availablePermits()I
    .registers 2

    .line 630
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainPermits()I
    .registers 2

    .line 642
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->drainPermits()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getQueueLength()I
    .registers 2

    .line 693
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api getQueuedThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hasQueuedThreads()Z
    .registers 2

    .line 680
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isFair()Z
    .registers 2

    .line 666
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    instance-of v0, v0, Ljava/util/concurrent/Semaphore$FairSync;

    return v0
.end method

.method protected whitelist test-api reducePermits(I)V
    .registers 3
    .param p1, "reduction"    # I

    .line 656
    if-ltz p1, :cond_8

    .line 657
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->reducePermits(I)V

    .line 658
    return-void

    .line 656
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api release()V
    .registers 3

    .line 432
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    .line 433
    return-void
.end method

.method public whitelist test-api release(I)V
    .registers 3
    .param p1, "permits"    # I

    .line 618
    if-ltz p1, :cond_8

    .line 619
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    .line 620
    return-void

    .line 618
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Permits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tryAcquire()Z
    .registers 3

    .line 369
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public whitelist test-api tryAcquire(I)Z
    .registers 3
    .param p1, "permits"    # I

    .line 535
    if-ltz p1, :cond_e

    .line 536
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 535
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 591
    if-ltz p1, :cond_d

    .line 592
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0

    .line 591
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method
