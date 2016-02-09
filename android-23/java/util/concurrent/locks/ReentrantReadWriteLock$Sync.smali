.class abstract Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;
    }
.end annotation


# static fields
.field static final EXCLUSIVE_MASK:I = 0xffff

.field static final MAX_COUNT:I = 0xffff

.field static final SHARED_SHIFT:I = 0x10

.field static final SHARED_UNIT:I = 0x10000

.field private static final serialVersionUID:J = 0x57ace0c53f412bb9L


# instance fields
.field private transient cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

.field private transient firstReader:Ljava/lang/Thread;

.field private transient firstReaderHoldCount:I

.field private transient readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    #@3
    .line 311
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@a
    .line 312
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    #@11
    .line 310
    return-void
.end method

.method static exclusiveCount(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 243
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
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
    .line 631
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 632
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@a
    .line 633
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    #@e
    .line 630
    return-void
.end method

.method static sharedCount(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 241
    ushr-int/lit8 v0, p0, 0x10

    #@2
    return v0
.end method

.method private unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;
    .locals 2

    #@0
    .prologue
    .line 417
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    #@2
    .line 418
    const-string/jumbo v1, "attempt to unlock read lock, not locked by current thread"

    #@5
    .line 417
    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method


# virtual methods
.method final fullTryAcquireShared(Ljava/lang/Thread;)I
    .locals 8
    .param p1, "current"    # Ljava/lang/Thread;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    .line 475
    const/4 v1, 0x0

    #@3
    .line 477
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@6
    move-result v0

    #@7
    .line 478
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 479
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@10
    move-result-object v2

    #@11
    if-eq v2, p1, :cond_2

    #@13
    .line 480
    return v6

    #@14
    .line 483
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 485
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@1c
    if-ne v2, p1, :cond_3

    #@1e
    .line 500
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@21
    move-result v2

    #@22
    const v3, 0xffff

    #@25
    if-ne v2, v3, :cond_6

    #@27
    .line 501
    new-instance v2, Ljava/lang/Error;

    #@29
    const-string/jumbo v3, "Maximum lock count exceeded"

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 488
    :cond_3
    if-nez v1, :cond_5

    #@32
    .line 489
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@34
    .line 490
    .local v1, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v1, :cond_4

    #@36
    iget-wide v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@38
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    #@3b
    move-result-wide v4

    #@3c
    cmp-long v2, v2, v4

    #@3e
    if-eqz v2, :cond_5

    #@40
    .line 491
    :cond_4
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@42
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .end local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@48
    .line 492
    .restart local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@4a
    if-nez v2, :cond_5

    #@4c
    .line 493
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@4e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    #@51
    .line 496
    .end local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_5
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@53
    if-nez v2, :cond_2

    #@55
    .line 497
    return v6

    #@56
    .line 502
    :cond_6
    const/high16 v2, 0x10000

    #@58
    add-int/2addr v2, v0

    #@59
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_0

    #@5f
    .line 503
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_7

    #@65
    .line 504
    iput-object p1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@67
    .line 505
    iput v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@69
    .line 518
    :goto_0
    return v7

    #@6a
    .line 506
    :cond_7
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@6c
    if-ne v2, p1, :cond_8

    #@6e
    .line 507
    iget v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@70
    add-int/lit8 v2, v2, 0x1

    #@72
    iput v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@74
    goto :goto_0

    #@75
    .line 509
    :cond_8
    if-nez v1, :cond_9

    #@77
    .line 510
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@79
    .line 511
    :cond_9
    if-eqz v1, :cond_a

    #@7b
    iget-wide v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@7d
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    #@80
    move-result-wide v4

    #@81
    cmp-long v2, v2, v4

    #@83
    if-eqz v2, :cond_c

    #@85
    .line 512
    :cond_a
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@87
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@8a
    move-result-object v1

    #@8b
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@8d
    .line 515
    :cond_b
    :goto_1
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@8f
    add-int/lit8 v2, v2, 0x1

    #@91
    iput v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@93
    .line 516
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@95
    goto :goto_0

    #@96
    .line 513
    :cond_c
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@98
    if-nez v2, :cond_b

    #@9a
    .line 514
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@9c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    #@9f
    goto :goto_1
.end method

.method final getCount()I
    .locals 1

    #@0
    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method final getOwner()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 592
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 593
    const/4 v0, 0x0

    #@b
    .line 592
    :goto_0
    return-object v0

    #@c
    .line 594
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method final getReadHoldCount()I
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 610
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 611
    return v4

    #@8
    .line 613
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    .line 614
    .local v1, "current":Ljava/lang/Thread;
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@e
    if-ne v3, v1, :cond_1

    #@10
    .line 615
    iget v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@12
    return v3

    #@13
    .line 617
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@15
    .line 618
    .local v2, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v2, :cond_2

    #@17
    iget-wide v4, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@19
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@1c
    move-result-wide v6

    #@1d
    cmp-long v3, v4, v6

    #@1f
    if-nez v3, :cond_2

    #@21
    .line 619
    iget v3, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@23
    return v3

    #@24
    .line 621
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@26
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@2c
    iget v0, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@2e
    .line 622
    .local v0, "count":I
    if-nez v0, :cond_3

    #@30
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    #@35
    .line 623
    :cond_3
    return v0
.end method

.method final getReadLockCount()I
    .locals 1

    #@0
    .prologue
    .line 598
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method final getWriteHoldCount()I
    .locals 1

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method protected final isHeldExclusively()Z
    .locals 2

    #@0
    .prologue
    .line 581
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

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

.method final isWriteLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 602
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@4
    move-result v1

    #@5
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .locals 1

    #@0
    .prologue
    .line 587
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    #@5
    return-object v0
.end method

.method abstract readerShouldBlock()Z
.end method

.method protected final tryAcquire(I)Z
    .locals 6
    .param p1, "acquires"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    .line 366
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@9
    move-result v0

    #@a
    .line 367
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@d
    move-result v2

    #@e
    .line 368
    .local v2, "w":I
    if-eqz v0, :cond_3

    #@10
    .line 370
    if-eqz v2, :cond_0

    #@12
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@15
    move-result-object v3

    #@16
    if-eq v1, v3, :cond_1

    #@18
    .line 371
    :cond_0
    return v4

    #@19
    .line 372
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v3, v2

    #@1e
    const v4, 0xffff

    #@21
    if-le v3, v4, :cond_2

    #@23
    .line 373
    new-instance v3, Ljava/lang/Error;

    #@25
    const-string/jumbo v4, "Maximum lock count exceeded"

    #@28
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 375
    :cond_2
    add-int v3, v0, p1

    #@2e
    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    #@31
    .line 376
    return v5

    #@32
    .line 378
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writerShouldBlock()Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_4

    #@38
    .line 379
    add-int v3, v0, p1

    #@3a
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_4

    #@40
    .line 381
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@43
    .line 382
    return v5

    #@44
    .line 380
    :cond_4
    return v4
.end method

.method protected final tryAcquireShared(I)I
    .locals 9
    .param p1, "unused"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 437
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v1

    #@5
    .line 438
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@8
    move-result v0

    #@9
    .line 439
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 440
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@12
    move-result-object v4

    #@13
    if-eq v4, v1, :cond_0

    #@15
    .line 441
    const/4 v4, -0x1

    #@16
    return v4

    #@17
    .line 442
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@1a
    move-result v2

    #@1b
    .line 443
    .local v2, "r":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_6

    #@21
    .line 444
    const v4, 0xffff

    #@24
    if-ge v2, v4, :cond_6

    #@26
    .line 445
    const/high16 v4, 0x10000

    #@28
    add-int/2addr v4, v0

    #@29
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@2c
    move-result v4

    #@2d
    .line 443
    if-eqz v4, :cond_6

    #@2f
    .line 446
    if-nez v2, :cond_1

    #@31
    .line 447
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@33
    .line 448
    iput v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@35
    .line 459
    :goto_0
    return v8

    #@36
    .line 449
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@38
    if-ne v4, v1, :cond_2

    #@3a
    .line 450
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@3c
    add-int/lit8 v4, v4, 0x1

    #@3e
    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@40
    goto :goto_0

    #@41
    .line 452
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@43
    .line 453
    .local v3, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_3

    #@45
    iget-wide v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@47
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@4a
    move-result-wide v6

    #@4b
    cmp-long v4, v4, v6

    #@4d
    if-eqz v4, :cond_5

    #@4f
    .line 454
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@51
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@57
    .restart local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@59
    .line 457
    :cond_4
    :goto_1
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@5b
    add-int/lit8 v4, v4, 0x1

    #@5d
    iput v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@5f
    goto :goto_0

    #@60
    .line 455
    :cond_5
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@62
    if-nez v4, :cond_4

    #@64
    .line 456
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@66
    invoke-virtual {v4, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    #@69
    goto :goto_1

    #@6a
    .line 461
    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->fullTryAcquireShared(Ljava/lang/Thread;)I

    #@6d
    move-result v4

    #@6e
    return v4
.end method

.method final tryReadLock()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    .line 552
    .local v1, "current":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@9
    move-result v0

    #@a
    .line 553
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 554
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@13
    move-result-object v4

    #@14
    if-eq v4, v1, :cond_1

    #@16
    .line 555
    return v5

    #@17
    .line 556
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    #@1a
    move-result v2

    #@1b
    .line 557
    .local v2, "r":I
    const v4, 0xffff

    #@1e
    if-ne v2, v4, :cond_2

    #@20
    .line 558
    new-instance v4, Ljava/lang/Error;

    #@22
    const-string/jumbo v5, "Maximum lock count exceeded"

    #@25
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 559
    :cond_2
    const/high16 v4, 0x10000

    #@2b
    add-int/2addr v4, v0

    #@2c
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_0

    #@32
    .line 560
    if-nez v2, :cond_3

    #@34
    .line 561
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@36
    .line 562
    iput v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@38
    .line 573
    :goto_0
    return v8

    #@39
    .line 563
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@3b
    if-ne v4, v1, :cond_4

    #@3d
    .line 564
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@3f
    add-int/lit8 v4, v4, 0x1

    #@41
    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@43
    goto :goto_0

    #@44
    .line 566
    :cond_4
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@46
    .line 567
    .local v3, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_5

    #@48
    iget-wide v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@4a
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@4d
    move-result-wide v6

    #@4e
    cmp-long v4, v4, v6

    #@50
    if-eqz v4, :cond_7

    #@52
    .line 568
    :cond_5
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@54
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@5a
    .restart local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@5c
    .line 571
    :cond_6
    :goto_1
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@5e
    add-int/lit8 v4, v4, 0x1

    #@60
    iput v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@62
    goto :goto_0

    #@63
    .line 569
    :cond_7
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@65
    if-nez v4, :cond_6

    #@67
    .line 570
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@69
    invoke-virtual {v4, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    #@6c
    goto :goto_1
.end method

.method protected final tryRelease(I)Z
    .locals 3
    .param p1, "releases"    # I

    #@0
    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 344
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@8
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@b
    throw v2

    #@c
    .line 345
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@f
    move-result v2

    #@10
    sub-int v1, v2, p1

    #@12
    .line 346
    .local v1, "nextc":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2

    #@18
    const/4 v0, 0x1

    #@19
    .line 347
    .local v0, "free":Z
    :goto_0
    if-eqz v0, :cond_1

    #@1b
    .line 348
    const/4 v2, 0x0

    #@1c
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@1f
    .line 349
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    #@22
    .line 350
    return v0

    #@23
    .line 346
    .end local v0    # "free":Z
    :cond_2
    const/4 v0, 0x0

    #@24
    .restart local v0    # "free":Z
    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 12
    .param p1, "unused"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 386
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v2

    #@7
    .line 387
    .local v2, "current":Ljava/lang/Thread;
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@9
    if-ne v7, v2, :cond_2

    #@b
    .line 389
    iget v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@d
    if-ne v7, v5, :cond_1

    #@f
    .line 390
    iput-object v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    #@11
    .line 406
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@14
    move-result v0

    #@15
    .line 407
    .local v0, "c":I
    const/high16 v7, 0x10000

    #@17
    sub-int v3, v0, v7

    #@19
    .line 408
    .local v3, "nextc":I
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_0

    #@1f
    .line 412
    if-nez v3, :cond_6

    #@21
    :goto_1
    return v5

    #@22
    .line 392
    .end local v0    # "c":I
    .end local v3    # "nextc":I
    :cond_1
    iget v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@24
    add-int/lit8 v7, v7, -0x1

    #@26
    iput v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    #@28
    goto :goto_0

    #@29
    .line 394
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@2b
    .line 395
    .local v4, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v4, :cond_3

    #@2d
    iget-wide v8, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    #@2f
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    #@32
    move-result-wide v10

    #@33
    cmp-long v7, v8, v10

    #@35
    if-eqz v7, :cond_4

    #@37
    .line 396
    :cond_3
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@39
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@3f
    .line 397
    .restart local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_4
    iget v1, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@41
    .line 398
    .local v1, "count":I
    if-gt v1, v5, :cond_5

    #@43
    .line 399
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    #@45
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    #@48
    .line 400
    if-gtz v1, :cond_5

    #@4a
    .line 401
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;

    #@4d
    move-result-object v5

    #@4e
    throw v5

    #@4f
    .line 403
    :cond_5
    iget v7, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@51
    add-int/lit8 v7, v7, -0x1

    #@53
    iput v7, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    #@55
    goto :goto_0

    #@56
    .end local v1    # "count":I
    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    .restart local v0    # "c":I
    .restart local v3    # "nextc":I
    :cond_6
    move v5, v6

    #@57
    .line 412
    goto :goto_1
.end method

.method final tryWriteLock()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 529
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v1

    #@5
    .line 530
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    #@8
    move-result v0

    #@9
    .line 531
    .local v0, "c":I
    if-eqz v0, :cond_2

    #@b
    .line 532
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    #@e
    move-result v2

    #@f
    .line 533
    .local v2, "w":I
    if-eqz v2, :cond_0

    #@11
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    #@14
    move-result-object v3

    #@15
    if-eq v1, v3, :cond_1

    #@17
    .line 534
    :cond_0
    return v4

    #@18
    .line 535
    :cond_1
    const v3, 0xffff

    #@1b
    if-ne v2, v3, :cond_2

    #@1d
    .line 536
    new-instance v3, Ljava/lang/Error;

    #@1f
    const-string/jumbo v4, "Maximum lock count exceeded"

    #@22
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 538
    .end local v2    # "w":I
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@28
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_3

    #@2e
    .line 539
    return v4

    #@2f
    .line 540
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    #@32
    .line 541
    const/4 v3, 0x1

    #@33
    return v3
.end method

.method abstract writerShouldBlock()Z
.end method
