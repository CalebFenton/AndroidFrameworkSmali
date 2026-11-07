.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
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
    name = "ReadLock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5329744b67e697b4L


# instance fields
.field private final greylist-max-o sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 3
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 725
    return-void
.end method


# virtual methods
.method public whitelist test-api lock()V
    .registers 3

    .line 738
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireShared(I)V

    .line 739
    return-void
.end method

.method public whitelist test-api lockInterruptibly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireSharedInterruptibly(I)V

    .line 784
    return-void
.end method

.method public whitelist test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 918
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    .line 919
    .local v0, "r":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[Read locks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api tryLock()Z
    .registers 2

    .line 810
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryReadLock()Z

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

    .line 882
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api unlock()V
    .registers 3

    .line 897
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->releaseShared(I)Z

    .line 898
    return-void
.end method
