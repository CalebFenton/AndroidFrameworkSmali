.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteLock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4548bd97c08297b4L


# instance fields
.field private final greylist-max-o sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 3
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 939
    return-void
.end method


# virtual methods
.method public whitelist test-api getHoldCount()I
    .registers 2

    .line 1236
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isHeldByCurrentThread()Z
    .registers 2

    .line 1222
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lock()V
    .registers 3

    .line 959
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquire(I)V

    .line 960
    return-void
.end method

.method public whitelist test-api lockInterruptibly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireInterruptibly(I)V

    .line 1015
    return-void
.end method

.method public whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 1194
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1206
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 1207
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_18

    .line 1208
    const-string v2, "[Unlocked]"

    goto :goto_35

    .line 1209
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

    .line 1207
    return-object v1
.end method

.method public whitelist test-api tryLock()Z
    .registers 2

    .line 1047
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryWriteLock()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api unlock()V
    .registers 3

    .line 1147
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->release(I)Z

    .line 1148
    return-void
.end method
