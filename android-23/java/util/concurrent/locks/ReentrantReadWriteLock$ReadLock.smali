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
.field private static final serialVersionUID:J = -0x5329744b67e697b4L


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@0
    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 686
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@5
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@7
    .line 685
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 2

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireShared(I)V

    #@6
    .line 699
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
    .line 745
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireSharedInterruptibly(I)V

    #@6
    .line 744
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    #@0
    .prologue
    .line 864
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 875
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    #@5
    move-result v0

    #@6
    .line 876
    .local v0, "r":I
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
    move-result-object v1

    #@13
    .line 877
    const-string/jumbo v2, "[Read locks = "

    #@16
    .line 876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 877
    const-string/jumbo v2, "]"

    #@21
    .line 876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public tryLock()Z
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryReadLock()Z

    #@5
    move-result v0

    #@6
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
    .line 844
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireSharedNanos(IJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public unlock()V
    .locals 2

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->releaseShared(I)Z

    #@6
    .line 853
    return-void
.end method
