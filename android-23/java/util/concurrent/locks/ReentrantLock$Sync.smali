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
.field private static final serialVersionUID:J = -0x47e15d6b55bba584L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #@3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 163
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    #@7
    .line 161
    return-void
.end method


# virtual methods
.method final getHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method final getOwner()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method protected final isHeldExclusively()Z
    .locals 2

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method final isLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 154
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method abstract lock()V
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .locals 1

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    #@5
    return-object v0
.end method

.method final nonfairTryAcquire(I)Z
    .locals 6
    .param p1, "acquires"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    .line 103
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    #@9
    move-result v0

    #@a
    .line 104
    .local v0, "c":I
    if-nez v0, :cond_0

    #@c
    .line 105
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->compareAndSetState(II)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 106
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@15
    .line 107
    return v5

    #@16
    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@19
    move-result-object v3

    #@1a
    if-ne v1, v3, :cond_2

    #@1c
    .line 111
    add-int v2, v0, p1

    #@1e
    .line 112
    .local v2, "nextc":I
    if-gez v2, :cond_1

    #@20
    .line 113
    new-instance v3, Ljava/lang/Error;

    #@22
    const-string/jumbo v4, "Maximum lock count exceeded"

    #@25
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 114
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    #@2c
    .line 115
    return v5

    #@2d
    .line 117
    .end local v2    # "nextc":I
    :cond_2
    return v4
.end method

.method protected final tryRelease(I)Z
    .locals 4
    .param p1, "releases"    # I

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    #@3
    move-result v2

    #@4
    sub-int v0, v2, p1

    #@6
    .line 122
    .local v0, "c":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@d
    move-result-object v3

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 123
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@15
    throw v2

    #@16
    .line 124
    :cond_0
    const/4 v1, 0x0

    #@17
    .line 125
    .local v1, "free":Z
    if-nez v0, :cond_1

    #@19
    .line 126
    const/4 v1, 0x1

    #@1a
    .line 127
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@1e
    .line 129
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    #@21
    .line 130
    return v1
.end method
