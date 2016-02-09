.class public Ljava/util/concurrent/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Semaphore$Sync;,
        Ljava/util/concurrent/Semaphore$NonfairSync;,
        Ljava/util/concurrent/Semaphore$FairSync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cb8e63801765912L


# instance fields
.field private final sync:Ljava/util/concurrent/Semaphore$Sync;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    #@5
    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    .line 236
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "permits"    # I
    .param p2, "fair"    # Z

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    if-eqz p2, :cond_0

    #@5
    new-instance v0, Ljava/util/concurrent/Semaphore$FairSync;

    #@7
    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$FairSync;-><init>(I)V

    #@a
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@c
    .line 251
    return-void

    #@d
    .line 252
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    #@f
    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    #@12
    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    #@6
    .line 283
    return-void
.end method

.method public acquire(I)V
    .locals 1
    .param p1, "permits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 439
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    #@d
    .line 437
    return-void
.end method

.method public acquireUninterruptibly()V
    .locals 2

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    #@6
    .line 306
    return-void
.end method

.method public acquireUninterruptibly(I)V
    .locals 1
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 465
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 466
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    #@d
    .line 464
    return-void
.end method

.method public availablePermits()I
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public drainPermits()I
    .locals 1

    #@0
    .prologue
    .line 601
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->drainPermits()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getQueueLength()I
    .locals 1

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueueLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueuedThreads()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->hasQueuedThreads()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFair()Z
    .locals 1

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/Semaphore$FairSync;

    #@4
    return v0
.end method

.method protected reducePermits(I)V
    .locals 1
    .param p1, "reduction"    # I

    #@0
    .prologue
    .line 615
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 616
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->reducePermits(I)V

    #@d
    .line 614
    return-void
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    #@6
    .line 397
    return-void
.end method

.method public release(I)V
    .locals 1
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 580
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 581
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    #@d
    .line 579
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "[Permits = "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "]"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public tryAcquire()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 335
    iget-object v2, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@4
    invoke-virtual {v2, v0}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    #@7
    move-result v2

    #@8
    if-ltz v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public tryAcquire(I)Z
    .locals 2
    .param p1, "permits"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 497
    if-gez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v0

    #@9
    .line 498
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    #@e
    move-result v1

    #@f
    if-ltz v1, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :cond_1
    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    if-gez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 554
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@a
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@d
    move-result-wide v2

    #@e
    invoke-virtual {v0, p1, v2, v3}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method
