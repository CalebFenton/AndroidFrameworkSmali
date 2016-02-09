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
.field private static final serialVersionUID:J = -0x4548bd97c08297b4L


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@0
    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 895
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@5
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@7
    .line 894
    return-void
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 1193
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    #@0
    .prologue
    .line 1179
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lock()V
    .locals 2

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquire(I)V

    #@6
    .line 915
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
    .line 971
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireInterruptibly(I)V

    #@6
    .line 970
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    #@0
    .prologue
    .line 1151
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1163
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    #@5
    move-result-object v0

    #@6
    .line 1164
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
    .line 1165
    const-string/jumbo v1, "[Unlocked]"

    #@18
    .line 1164
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
    .line 1166
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
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryWriteLock()Z

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
    .line 1088
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@5
    move-result-wide v2

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireNanos(IJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public unlock()V
    .locals 2

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->release(I)Z

    #@6
    .line 1103
    return-void
.end method
