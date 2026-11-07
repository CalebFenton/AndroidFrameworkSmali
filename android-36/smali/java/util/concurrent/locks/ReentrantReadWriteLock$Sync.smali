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
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    }
.end annotation


# static fields
.field static final greylist-max-o EXCLUSIVE_MASK:I = 0xffff

.field static final greylist-max-o MAX_COUNT:I = 0xffff

.field static final greylist-max-o SHARED_SHIFT:I = 0x10

.field static final greylist-max-o SHARED_UNIT:I = 0x10000

.field private static final whitelist serialVersionUID:J = 0x57ace0c53f412bb9L


# instance fields
.field private transient greylist-max-o cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

.field private transient greylist-max-o firstReader:Ljava/lang/Thread;

.field private transient greylist-max-o firstReaderHoldCount:I

.field private transient greylist-max-o readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 338
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 339
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 340
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 341
    return-void
.end method

.method static greylist-max-o exclusiveCount(I)I
    .registers 2
    .param p0, "c"    # I

    .line 271
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
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

    .line 669
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 670
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 672
    return-void
.end method

.method static greylist-max-o sharedCount(I)I
    .registers 2
    .param p0, "c"    # I

    .line 269
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private static greylist-max-o unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;
    .registers 2

    .line 448
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "attempt to unlock read lock, not locked by current thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final greylist-max-o fullTryAcquireShared(Ljava/lang/Thread;)I
    .registers 10
    .param p1, "current"    # Ljava/lang/Thread;

    .line 508
    const/4 v0, 0x0

    .line 510
    .local v0, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 511
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_13

    .line 512
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p1, :cond_45

    .line 513
    return v3

    .line 516
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 518
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v2, p1, :cond_1e

    goto :goto_45

    .line 521
    :cond_1e
    if-nez v0, :cond_40

    .line 522
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 523
    if-eqz v0, :cond_2e

    iget-wide v4, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    .line 524
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_40

    .line 525
    :cond_2e
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 526
    iget v2, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_40

    .line 527
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 530
    :cond_40
    iget v2, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_45

    .line 531
    return v3

    .line 534
    :cond_45
    :goto_45
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_9b

    .line 536
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 537
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_63

    .line 538
    iput-object p1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 539
    iput v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_98

    .line 540
    :cond_63
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v2, p1, :cond_6d

    .line 541
    iget v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_98

    .line 543
    :cond_6d
    if-nez v0, :cond_71

    .line 544
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 545
    :cond_71
    if-eqz v0, :cond_88

    iget-wide v4, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    .line 546
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7e

    goto :goto_88

    .line 548
    :cond_7e
    iget v2, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_91

    .line 549
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_91

    .line 547
    :cond_88
    :goto_88
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 550
    :cond_91
    :goto_91
    iget v2, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/2addr v2, v3

    iput v2, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 551
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 553
    :goto_98
    return v3

    .line 555
    .end local v1    # "c":I
    :cond_99
    goto/16 :goto_1

    .line 535
    .restart local v1    # "c":I
    :cond_9b
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final greylist-max-o getCount()I
    .registers 2

    .line 674
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final greylist-max-o getOwner()Ljava/lang/Thread;
    .registers 2

    .line 630
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 631
    const/4 v0, 0x0

    goto :goto_10

    .line 632
    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    .line 630
    :goto_10
    return-object v0
.end method

.method final greylist-max-o getReadHoldCount()I
    .registers 7

    .line 648
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 649
    const/4 v0, 0x0

    return v0

    .line 651
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 652
    .local v0, "current":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v1, v0, :cond_13

    .line 653
    iget v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    return v1

    .line 655
    :cond_13
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 656
    .local v1, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v1, :cond_24

    iget-wide v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 657
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    return v2

    .line 659
    :cond_24
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    iget v2, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 660
    .local v2, "count":I
    if-nez v2, :cond_35

    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 661
    :cond_35
    return v2
.end method

.method final greylist-max-o getReadLockCount()I
    .registers 2

    .line 636
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v0

    return v0
.end method

.method final greylist-max-o getWriteHoldCount()I
    .registers 2

    .line 644
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected final whitelist test-api isHeldExclusively()Z
    .registers 3

    .line 619
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

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

.method final greylist-max-o isWriteLocked()Z
    .registers 2

    .line 640
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final greylist-max-o newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .registers 2

    .line 625
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method abstract greylist-max-o readerShouldBlock()Z
.end method

.method protected final whitelist test-api tryAcquire(I)Z
    .registers 8
    .param p1, "acquires"    # I

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 395
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 396
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 397
    .local v2, "w":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_32

    .line 399
    if-eqz v2, :cond_31

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v0, v5, :cond_19

    goto :goto_31

    .line 401
    :cond_19
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v4

    add-int/2addr v4, v2

    const v5, 0xffff

    if-gt v4, v5, :cond_29

    .line 404
    add-int v4, v1, p1

    invoke-virtual {p0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 405
    return v3

    .line 402
    :cond_29
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    :cond_31
    :goto_31
    return v4

    .line 407
    :cond_32
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writerShouldBlock()Z

    move-result v5

    if-nez v5, :cond_45

    add-int v5, v1, p1

    .line 408
    invoke-virtual {p0, v1, v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v5

    if-nez v5, :cond_41

    goto :goto_45

    .line 410
    :cond_41
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 411
    return v3

    .line 409
    :cond_45
    :goto_45
    return v4
.end method

.method protected final whitelist test-api tryAcquireShared(I)I
    .registers 11
    .param p1, "unused"    # I

    .line 469
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 470
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 471
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    if-eqz v2, :cond_16

    .line 472
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, v0, :cond_16

    .line 473
    const/4 v2, -0x1

    return v2

    .line 474
    :cond_16
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 475
    .local v2, "r":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v3

    if-nez v3, :cond_6a

    const v3, 0xffff

    if-ge v2, v3, :cond_6a

    const/high16 v3, 0x10000

    add-int/2addr v3, v1

    .line 477
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 478
    const/4 v3, 0x1

    if-nez v2, :cond_36

    .line 479
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 480
    iput v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_69

    .line 481
    :cond_36
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v4, v0, :cond_40

    .line 482
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_69

    .line 484
    :cond_40
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 485
    .local v4, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v4, :cond_59

    iget-wide v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    .line 486
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4f

    goto :goto_59

    .line 488
    :cond_4f
    iget v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v5, :cond_64

    .line 489
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_64

    .line 487
    :cond_59
    :goto_59
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    move-object v4, v5

    iput-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 490
    :cond_64
    :goto_64
    iget v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/2addr v5, v3

    iput v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 492
    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :goto_69
    return v3

    .line 494
    :cond_6a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->fullTryAcquireShared(Ljava/lang/Thread;)I

    move-result v3

    return v3
.end method

.method final greylist-max-o tryReadLock()Z
    .registers 10

    .line 587
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 589
    .local v0, "current":Ljava/lang/Thread;
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 590
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    if-eqz v2, :cond_16

    .line 591
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, v0, :cond_16

    .line 592
    const/4 v2, 0x0

    return v2

    .line 593
    :cond_16
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 594
    .local v2, "r":I
    const v3, 0xffff

    if-eq v2, v3, :cond_65

    .line 596
    const/high16 v3, 0x10000

    add-int/2addr v3, v1

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 597
    const/4 v3, 0x1

    if-nez v2, :cond_30

    .line 598
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 599
    iput v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_63

    .line 600
    :cond_30
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v4, v0, :cond_3a

    .line 601
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_63

    .line 603
    :cond_3a
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 604
    .local v4, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v4, :cond_53

    iget-wide v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    .line 605
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_49

    goto :goto_53

    .line 607
    :cond_49
    iget v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v5, :cond_5e

    .line 608
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_5e

    .line 606
    :cond_53
    :goto_53
    iget-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    move-object v4, v5

    iput-object v5, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 609
    :cond_5e
    :goto_5e
    iget v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/2addr v5, v3

    iput v5, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 611
    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :goto_63
    return v3

    .line 613
    .end local v1    # "c":I
    .end local v2    # "r":I
    :cond_64
    goto :goto_4

    .line 595
    .restart local v1    # "c":I
    .restart local v2    # "r":I
    :cond_65
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected final whitelist test-api tryRelease(I)Z
    .registers 5
    .param p1, "releases"    # I

    .line 371
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 373
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    sub-int/2addr v0, p1

    .line 374
    .local v0, "nextc":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 375
    .local v1, "free":Z
    :goto_14
    if-eqz v1, :cond_1a

    .line 376
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 377
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 378
    return v1

    .line 372
    .end local v0    # "nextc":I
    .end local v1    # "free":Z
    :cond_1e
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api tryReleaseShared(I)Z
    .registers 9
    .param p1, "unused"    # I

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 417
    .local v0, "current":Ljava/lang/Thread;
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_17

    .line 419
    iget v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    if-ne v1, v2, :cond_11

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    goto :goto_44

    .line 422
    :cond_11
    iget v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_44

    .line 424
    :cond_17
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 425
    .local v1, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v1, :cond_25

    iget-wide v3, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    .line 426
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2e

    .line 427
    :cond_25
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 428
    :cond_2e
    iget v3, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 429
    .local v3, "count":I
    if-gt v3, v2, :cond_3f

    .line 430
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 431
    if-lez v3, :cond_3a

    goto :goto_3f

    .line 432
    :cond_3a
    invoke-static {}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;

    move-result-object v2

    throw v2

    .line 434
    :cond_3f
    :goto_3f
    iget v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    sub-int/2addr v4, v2

    iput v4, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 437
    .end local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    .end local v3    # "count":I
    :goto_44
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 438
    .local v1, "c":I
    const/high16 v3, 0x10000

    sub-int v3, v1, v3

    .line 439
    .local v3, "nextc":I
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 443
    if-nez v3, :cond_55

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    return v2

    .line 444
    .end local v1    # "c":I
    .end local v3    # "nextc":I
    :cond_57
    goto :goto_44
.end method

.method final greylist-max-o tryWriteLock()Z
    .registers 6

    .line 565
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 566
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    .line 567
    .local v1, "c":I
    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 568
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v3

    .line 569
    .local v3, "w":I
    if-eqz v3, :cond_26

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v0, v4, :cond_18

    goto :goto_26

    .line 571
    :cond_18
    const v4, 0xffff

    if-eq v3, v4, :cond_1e

    goto :goto_27

    .line 572
    :cond_1e
    new-instance v2, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    :cond_26
    :goto_26
    return v2

    .line 574
    .end local v3    # "w":I
    :cond_27
    :goto_27
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-nez v3, :cond_30

    .line 575
    return v2

    .line 576
    :cond_30
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 577
    const/4 v2, 0x1

    return v2
.end method

.method abstract greylist-max-o writerShouldBlock()Z
.end method
