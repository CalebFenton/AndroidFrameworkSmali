.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x610a2aff0f4a97b4L


# instance fields
.field private final greylist-max-o readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final greylist-max-o sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

.field private final greylist-max-o writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 232
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    if-eqz p1, :cond_b

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;-><init>()V

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;-><init>()V

    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 242
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 243
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 244
    return-void
.end method


# virtual methods
.method protected whitelist test-api getOwner()Ljava/lang/Thread;
    .registers 2

    .line 1265
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getQueueLength()I
    .registers 2

    .line 1395
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api getQueuedReaderThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getSharedQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
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

    .line 1410
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api getQueuedWriterThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReadHoldCount()I
    .registers 2

    .line 1322
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadHoldCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getReadLockCount()I
    .registers 2

    .line 1275
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 1452
    if-eqz p1, :cond_18

    .line 1454
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 1456
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0

    .line 1455
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
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

    .line 1477
    if-eqz p1, :cond_18

    .line 1479
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 1481
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1480
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getWriteHoldCount()I
    .registers 2

    .line 1309
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 1381
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hasQueuedThreads()Z
    .registers 2

    .line 1366
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 1429
    if-eqz p1, :cond_18

    .line 1431
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 1433
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0

    .line 1432
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api isFair()Z
    .registers 2

    .line 1248
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    return v0
.end method

.method public whitelist test-api isWriteLocked()Z
    .registers 2

    .line 1287
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isWriteLockedByCurrentThread()Z
    .registers 2

    .line 1297
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api readLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 216
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 2

    .line 247
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1494
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getCount()I

    move-result v0

    .line 1495
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v1

    .line 1496
    .local v1, "w":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 1498
    .local v2, "r":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[Write locks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Read locks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist test-api writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 216
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .registers 2

    .line 246
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method
