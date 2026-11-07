.class public Ljava/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$Sync;,
        Ljava/util/concurrent/locks/ReentrantLock$FairSync;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6655a82c2cc86aebL


# instance fields
.field private final greylist sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 295
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    if-eqz p1, :cond_b

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;-><init>()V

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 305
    return-void
.end method


# virtual methods
.method public whitelist test-api getHoldCount()I
    .registers 2

    .line 570
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getHoldCount()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api getOwner()Ljava/lang/Thread;
    .registers 2

    .line 653
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getQueueLength()I
    .registers 2

    .line 695
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueueLength()I

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

    .line 710
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 752
    if-eqz p1, :cond_18

    .line 754
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 756
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0

    .line 755
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 777
    if-eqz p1, :cond_18

    .line 779
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 781
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 780
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 682
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hasQueuedThreads()Z
    .registers 2

    .line 667
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 729
    if-eqz p1, :cond_18

    .line 731
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 733
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0

    .line 732
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api isFair()Z
    .registers 2

    .line 636
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    return v0
.end method

.method public whitelist test-api isHeldByCurrentThread()Z
    .registers 2

    .line 615
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isLocked()Z
    .registers 2

    .line 627
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lock()V
    .registers 2

    .line 322
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    .line 323
    return-void
.end method

.method public whitelist test-api lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->lockInterruptibly()V

    .line 373
    return-void
.end method

.method public whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 537
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 793
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 794
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_18

    .line 795
    const-string v2, "[Unlocked]"

    goto :goto_35

    .line 796
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    return-object v1
.end method

.method public whitelist test-api tryLock()Z
    .registers 2

    .line 402
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->tryLock()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->tryLockNanos(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api unlock()V
    .registers 3

    .line 494
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->release(I)Z

    .line 495
    return-void
.end method
