.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x610a2aff0f4a97b4L


# instance fields
.field private final readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

.field private final writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    #@4
    .line 202
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 213
    if-eqz p1, :cond_0

    #@5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;-><init>()V

    #@a
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@c
    .line 214
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@e
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    #@11
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@13
    .line 215
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@15
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    #@18
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@1a
    .line 212
    return-void

    #@1b
    .line 213
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;

    #@1d
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;-><init>()V

    #@20
    goto :goto_0
.end method


# virtual methods
.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getQueueLength()I
    .locals 1

    #@0
    .prologue
    .line 1352
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueueLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getQueuedReaderThreads()Ljava/util/Collection;
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
    .line 1309
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getSharedQueuedThreads()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 1367
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getQueuedWriterThreads()Ljava/util/Collection;
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
    .line 1294
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveQueuedThreads()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReadHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 1279
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadHoldCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getReadLockCount()I
    .locals 1

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    #@0
    .prologue
    .line 1409
    if-nez p1, :cond_0

    #@2
    .line 1410
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1411
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1413
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

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
    .line 1434
    if-nez p1, :cond_0

    #@2
    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1436
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1438
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public getWriteHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    #@0
    .prologue
    .line 1323
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasQueuedThreads()Z

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
    .line 1386
    if-nez p1, :cond_0

    #@2
    .line 1387
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1388
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "not owner"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1390
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@17
    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@19
    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public final isFair()Z
    .locals 1

    #@0
    .prologue
    .line 1205
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    #@4
    return v0
.end method

.method public isWriteLocked()Z
    .locals 1

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLocked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isWriteLockedByCurrentThread()Z
    .locals 1

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1451
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getCount()I

    #@5
    move-result v0

    #@6
    .line 1452
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@9
    move-result v2

    #@a
    .line 1453
    .local v2, "w":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@d
    move-result v1

    #@e
    .line 1455
    .local v1, "r":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 1456
    const-string/jumbo v4, "[Write locks = "

    #@1e
    .line 1455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 1456
    const-string/jumbo v4, ", Read locks = "

    #@29
    .line 1455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 1456
    const-string/jumbo v4, "]"

    #@34
    .line 1455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    return-object v3
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@2
    return-object v0
.end method
