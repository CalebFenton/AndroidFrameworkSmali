.class abstract Ljava/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x47e15d6b55bba584L


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 214
    return-void
.end method


# virtual methods
.method final greylist-max-o getHoldCount()I
    .registers 2

    .line 200
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method final greylist-max-o getOwner()Ljava/lang/Thread;
    .registers 2

    .line 196
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method abstract blacklist initialTryLock()Z
.end method

.method protected final whitelist test-api isHeldExclusively()Z
    .registers 3

    .line 186
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final greylist-max-o isLocked()Z
    .registers 2

    .line 204
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final greylist-max-o lock()V
    .registers 2

    .line 152
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->initialTryLock()Z

    move-result v0

    if-nez v0, :cond_a

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->acquire(I)V

    .line 154
    :cond_a
    return-void
.end method

.method final blacklist lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 158
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 160
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->initialTryLock()Z

    move-result v0

    if-nez v0, :cond_10

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->acquireInterruptibly(I)V

    .line 162
    :cond_10
    return-void

    .line 159
    :cond_11
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final greylist-max-o newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .registers 2

    .line 190
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method final blacklist tryLock()Z
    .registers 6

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 127
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v1

    .line 128
    .local v1, "c":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 129
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 130
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 131
    return v3

    .line 133
    :cond_16
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, v0, :cond_2b

    .line 134
    add-int/2addr v1, v3

    if-ltz v1, :cond_23

    .line 136
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 137
    return v3

    .line 135
    :cond_23
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_2b
    return v2
.end method

.method final blacklist tryLockNanos(J)Z
    .registers 5
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 168
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->initialTryLock()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-virtual {p0, v1, p1, p2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->tryAcquireNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1

    .line 167
    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api tryRelease(I)Z
    .registers 5
    .param p1, "releases"    # I

    .line 173
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    sub-int/2addr v0, p1

    .line 174
    .local v0, "c":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    .line 176
    if-nez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 177
    .local v1, "free":Z
    :goto_14
    if-eqz v1, :cond_1a

    .line 178
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 179
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 180
    return v1

    .line 175
    .end local v1    # "free":Z
    :cond_1e
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1
.end method
