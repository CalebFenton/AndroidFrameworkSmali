.class public Ljava/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantLock$Sync;,
        Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$FairSync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6655a82c2cc86aebL


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@a
    .line 228
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    #@0
    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 239
    if-eqz p1, :cond_0

    #@5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;-><init>()V

    #@a
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@c
    .line 238
    return-void

    #@d
    .line 239
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    #@f
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    #@12
    goto :goto_0
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getHoldCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getQueueLength()I
    .locals 1

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueueLength()I

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
    .line 646
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    #@0
    .prologue
    .line 688
    if-nez p1, :cond_0

    #@2
    .line 689
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 690
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 692
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method protected getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 713
    if-nez p1, :cond_0

    #@2
    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 715
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 717
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasQueuedThreads()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    #@0
    .prologue
    .line 665
    if-nez p1, :cond_0

    #@2
    .line 666
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 667
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 669
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public final isFair()Z
    .locals 1

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    #@4
    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLocked()Z
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isLocked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lock()V
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    #@5
    .line 256
    return-void
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->acquireInterruptibly(I)V

    #@6
    .line 306
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 729
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    .line 730
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    if-nez v0, :cond_0

    #@15
    .line 731
    const-string/jumbo v1, "[Unlocked]"

    #@18
    .line 730
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 732
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "[Locked by thread "

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v3, "]"

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    goto :goto_0
.end method

.method public tryLock()Z
    .locals 2

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->nonfairTryAcquire(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
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
    .line 414
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->tryAcquireNanos(IJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public unlock()V
    .locals 2

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->release(I)Z

    #@6
    .line 428
    return-void
.end method
