.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    }
.end annotation


# static fields
.field private static final HEAD:J

.field static final SPIN_FOR_TIMEOUT_THRESHOLD:J = 0x3e8L

.field private static final STATE:J

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x6655a843753f52e4L


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 1793
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@6
    .line 1800
    :try_start_0
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@8
    .line 1801
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@a
    const-string/jumbo v4, "state"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 1800
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    #@17
    .line 1802
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@19
    .line 1803
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@1b
    const-string/jumbo v4, "head"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v3

    #@22
    .line 1802
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    #@28
    .line 1804
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@2a
    .line 1805
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2c
    const-string/jumbo v4, "tail"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v3

    #@33
    .line 1804
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1812
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@3b
    .line 32
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@3c
    .line 1806
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@3d
    .line 1807
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    #@3f
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@42
    throw v2
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    #@3
    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 6
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 141
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5
    .line 144
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 145
    .local v1, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@9
    .line 146
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@b
    sget-wide v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    #@d
    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@10
    .line 147
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 148
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    .line 149
    return-object v0

    #@19
    .line 152
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->initializeSyncQueue()V

    #@1c
    goto :goto_0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 281
    if-nez p1, :cond_0

    #@4
    .line 282
    return-void

    #@5
    .line 284
    :cond_0
    iput-object v5, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 287
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 288
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@b
    if-lez v4, :cond_1

    #@d
    .line 289
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    goto :goto_0

    #@12
    .line 294
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 299
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    #@15
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@17
    .line 302
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    if-ne p1, v4, :cond_2

    #@1b
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 303
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@24
    .line 279
    :goto_1
    return-void

    #@25
    .line 308
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@27
    if-eq v1, v4, :cond_5

    #@29
    .line 309
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@2b
    .local v3, "ws":I
    if-eq v3, v6, :cond_3

    #@2d
    .line 310
    if-gtz v3, :cond_5

    #@2f
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@32
    move-result v4

    #@33
    .line 308
    if-eqz v4, :cond_5

    #@35
    .line 311
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@37
    if-eqz v4, :cond_5

    #@39
    .line 312
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3b
    .line 313
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_4

    #@3d
    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3f
    if-gtz v4, :cond_4

    #@41
    .line 314
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@44
    .line 319
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@46
    goto :goto_1

    #@47
    .line 316
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@4a
    goto :goto_2
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1828
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private doAcquireInterruptibly(J)V
    .locals 5
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v0

    #@6
    .line 423
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    move-result-object v1

    #@a
    .line 424
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v1, v3, :cond_1

    #@e
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 425
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@17
    .line 426
    const/4 v3, 0x0

    #@18
    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    .line 427
    return-void

    #@1b
    .line 429
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 430
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    #@24
    move-result v3

    #@25
    .line 429
    if-eqz v3, :cond_0

    #@27
    .line 431
    new-instance v3, Ljava/lang/InterruptedException;

    #@29
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@2c
    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 433
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    #@2e
    .line 434
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@31
    .line 435
    throw v2
.end method

.method private doAcquireNanos(JJ)Z
    .locals 9
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p3, v6

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 449
    const/4 v5, 0x0

    #@7
    return v5

    #@8
    .line 450
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p3

    #@e
    .line 451
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v2

    #@14
    .line 454
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    move-result-object v3

    #@18
    .line 455
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    if-ne v3, v5, :cond_2

    #@1c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_2

    #@22
    .line 456
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@25
    .line 457
    const/4 v5, 0x0

    #@26
    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@28
    .line 458
    const/4 v5, 0x1

    #@29
    return v5

    #@2a
    .line 460
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@2d
    move-result-wide v6

    #@2e
    sub-long p3, v0, v6

    #@30
    .line 461
    const-wide/16 v6, 0x0

    #@32
    cmp-long v5, p3, v6

    #@34
    if-gtz v5, :cond_3

    #@36
    .line 462
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@39
    .line 463
    const/4 v5, 0x0

    #@3a
    return v5

    #@3b
    .line 465
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_4

    #@41
    .line 466
    const-wide/16 v6, 0x3e8

    #@43
    cmp-long v5, p3, v6

    #@45
    if-lez v5, :cond_4

    #@47
    .line 467
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@4a
    .line 468
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_1

    #@50
    .line 469
    new-instance v5, Ljava/lang/InterruptedException;

    #@52
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@55
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 471
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    #@57
    .line 472
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5a
    .line 473
    throw v4
.end method

.method private doAcquireShared(J)V
    .locals 9
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 482
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 484
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    #@7
    .line 486
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 487
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-ne v2, v6, :cond_2

    #@f
    .line 488
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@12
    move-result-wide v4

    #@13
    .line 489
    .local v4, "r":J
    const-wide/16 v6, 0x0

    #@15
    cmp-long v6, v4, v6

    #@17
    if-ltz v6, :cond_2

    #@19
    .line 490
    invoke-direct {p0, v1, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    #@1c
    .line 491
    const/4 v6, 0x0

    #@1d
    iput-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1f
    .line 492
    if-eqz v0, :cond_1

    #@21
    .line 493
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@24
    .line 494
    :cond_1
    return-void

    #@25
    .line 497
    .end local v4    # "r":J
    :cond_2
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_0

    #@2b
    .line 498
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result v6

    #@2f
    .line 497
    if-eqz v6, :cond_0

    #@31
    .line 499
    const/4 v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 501
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v3

    #@34
    .line 502
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@37
    .line 503
    throw v3
.end method

.method private doAcquireSharedInterruptibly(J)V
    .locals 9
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v0

    #@6
    .line 516
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    move-result-object v1

    #@a
    .line 517
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v1, v5, :cond_1

    #@e
    .line 518
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@11
    move-result-wide v2

    #@12
    .line 519
    .local v2, "r":J
    const-wide/16 v6, 0x0

    #@14
    cmp-long v5, v2, v6

    #@16
    if-ltz v5, :cond_1

    #@18
    .line 520
    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    #@1b
    .line 521
    const/4 v5, 0x0

    #@1c
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    .line 522
    return-void

    #@1f
    .line 525
    .end local v2    # "r":J
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 526
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    #@28
    move-result v5

    #@29
    .line 525
    if-eqz v5, :cond_0

    #@2b
    .line 527
    new-instance v5, Ljava/lang/InterruptedException;

    #@2d
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@30
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 529
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    #@32
    .line 530
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@35
    .line 531
    throw v4
.end method

.method private doAcquireSharedNanos(JJ)Z
    .locals 11
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    const-wide/16 v8, 0x0

    #@2
    cmp-long v7, p3, v8

    #@4
    if-gtz v7, :cond_0

    #@6
    .line 545
    const/4 v7, 0x0

    #@7
    return v7

    #@8
    .line 546
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v8

    #@c
    add-long v0, v8, p3

    #@e
    .line 547
    .local v0, "deadline":J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v2

    #@14
    .line 550
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    move-result-object v3

    #@18
    .line 551
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    if-ne v3, v7, :cond_2

    #@1c
    .line 552
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@1f
    move-result-wide v4

    #@20
    .line 553
    .local v4, "r":J
    const-wide/16 v8, 0x0

    #@22
    cmp-long v7, v4, v8

    #@24
    if-ltz v7, :cond_2

    #@26
    .line 554
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    #@29
    .line 555
    const/4 v7, 0x0

    #@2a
    iput-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2c
    .line 556
    const/4 v7, 0x1

    #@2d
    return v7

    #@2e
    .line 559
    .end local v4    # "r":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v8

    #@32
    sub-long p3, v0, v8

    #@34
    .line 560
    const-wide/16 v8, 0x0

    #@36
    cmp-long v7, p3, v8

    #@38
    if-gtz v7, :cond_3

    #@3a
    .line 561
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@3d
    .line 562
    const/4 v7, 0x0

    #@3e
    return v7

    #@3f
    .line 564
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_4

    #@45
    .line 565
    const-wide/16 v8, 0x3e8

    #@47
    cmp-long v7, p3, v8

    #@49
    if-lez v7, :cond_4

    #@4b
    .line 566
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@4e
    .line 567
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_1

    #@54
    .line 568
    new-instance v7, Ljava/lang/InterruptedException;

    #@56
    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    #@59
    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 570
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v6

    #@5b
    .line 571
    .local v6, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5e
    .line 572
    throw v6
.end method

.method private doReleaseShared()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 220
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 221
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@6
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    if-eq v0, v2, :cond_1

    #@a
    .line 222
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@c
    .line 223
    .local v1, "ws":I
    if-ne v1, v4, :cond_2

    #@e
    .line 224
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 226
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@17
    .line 232
    .end local v1    # "ws":I
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 207
    return-void

    #@1c
    .line 228
    .restart local v1    # "ws":I
    :cond_2
    if-nez v1, :cond_1

    #@1e
    .line 229
    const/4 v2, -0x3

    #@1f
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 122
    .local v0, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@4
    .line 123
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    #@8
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@b
    .line 124
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 125
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 126
    return-object v0

    #@14
    .line 129
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->initializeSyncQueue()V

    #@17
    goto :goto_0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1181
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 1182
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    #@4
    .line 1183
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 1184
    :cond_0
    if-nez v0, :cond_1

    #@8
    .line 1185
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 1186
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    #@0
    .prologue
    .line 937
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@4
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_1

    #@8
    .line 938
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v6, v7, :cond_1

    #@e
    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@10
    .local v4, "st":Ljava/lang/Thread;
    if-eqz v4, :cond_1

    #@12
    .line 941
    :cond_0
    return-object v4

    #@13
    .line 939
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    .restart local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_2

    #@1b
    .line 940
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1d
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    .restart local v4    # "st":Ljava/lang/Thread;
    if-nez v4, :cond_0

    #@25
    .line 951
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_2
    const/4 v0, 0x0

    #@26
    .line 952
    .local v0, "firstThread":Ljava/lang/Thread;
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@28
    .end local v0    # "firstThread":Ljava/lang/Thread;
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_4

    #@2a
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2c
    if-eq v2, v6, :cond_4

    #@2e
    .line 953
    iget-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@30
    .line 954
    .local v5, "t":Ljava/lang/Thread;
    if-eqz v5, :cond_3

    #@32
    .line 955
    move-object v0, v5

    #@33
    .line 952
    :cond_3
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@35
    goto :goto_0

    #@36
    .line 957
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_4
    return-object v0
.end method

.method private final initializeSyncQueue()V
    .locals 6

    #@0
    .prologue
    .line 1820
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    #@4
    new-instance v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    invoke-direct {v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    #@9
    .local v5, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x0

    #@a
    move-object v1, p0

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1821
    iput-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 1818
    :cond_0
    return-void
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    #@0
    .prologue
    .line 373
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@3
    .line 374
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method static selfInterrupt()V
    .locals 1

    #@0
    .prologue
    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 363
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 165
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 166
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@5
    .line 167
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 164
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "propagate"    # J

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 247
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5
    .line 264
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, p2, v2

    #@9
    if-gtz v2, :cond_0

    #@b
    if-nez v0, :cond_3

    #@d
    .line 266
    :cond_0
    :goto_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    .line 267
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 268
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    #@1a
    .line 245
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    return-void

    #@1b
    .line 264
    :cond_3
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@1d
    if-ltz v2, :cond_0

    #@1f
    .line 265
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@21
    if-eqz v0, :cond_0

    #@23
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@25
    if-gez v2, :cond_2

    #@27
    goto :goto_0
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 3
    .param p0, "pred"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 333
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@4
    .line 334
    .local v0, "ws":I
    if-ne v0, v1, :cond_0

    #@6
    .line 339
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 340
    :cond_0
    if-lez v0, :cond_2

    #@a
    .line 346
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    .line 347
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 348
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 357
    :goto_0
    return v2

    #@15
    .line 355
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@18
    goto :goto_0
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3
    .line 182
    .local v2, "ws":I
    if-gez v2, :cond_0

    #@5
    .line 183
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@8
    .line 191
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .line 192
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@c
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@e
    if-lez v3, :cond_3

    #@10
    .line 193
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 194
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eq v0, p1, :cond_3

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 195
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    if-gtz v3, :cond_2

    #@1b
    .line 196
    move-object v1, v0

    #@1c
    .line 194
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 198
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    if-eqz v1, :cond_4

    #@21
    .line 199
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@26
    .line 175
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 727
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 728
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    #@f
    move-result v0

    #@10
    .line 727
    if-eqz v0, :cond_0

    #@12
    .line 729
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@15
    .line 726
    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(J)V
    .locals 1
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 748
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 749
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 750
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 751
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    #@15
    .line 747
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # J

    #@0
    .prologue
    .line 396
    const/4 v0, 0x0

    #@1
    .line 398
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    move-result-object v1

    #@5
    .line 399
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    if-ne v1, v3, :cond_1

    #@9
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 400
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@12
    .line 401
    const/4 v3, 0x0

    #@13
    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    .line 402
    return v0

    #@16
    .line 404
    :cond_1
    invoke-static {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 405
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v3

    #@20
    .line 404
    if-eqz v3, :cond_0

    #@22
    .line 406
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 408
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    #@25
    .line 409
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@28
    .line 410
    throw v2
.end method

.method public final acquireShared(J)V
    .locals 5
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 811
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    .line 812
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    #@d
    .line 810
    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(J)V
    .locals 5
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 831
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 832
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@f
    move-result-wide v0

    #@10
    const-wide/16 v2, 0x0

    #@12
    cmp-long v0, v0, v2

    #@14
    if-gez v0, :cond_1

    #@16
    .line 833
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    #@19
    .line 829
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 990
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@5
    .line 991
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@9
    .line 992
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 990
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v2

    #@10
    .line 993
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@12
    if-eqz v3, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    goto :goto_0
.end method

.method protected final compareAndSetState(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    #@0
    .prologue
    .line 102
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    move-wide v6, p3

    #@7
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1248
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    #@3
    move-result-wide v0

    #@4
    .line 1249
    .local v0, "savedState":J
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1250
    return-wide v0

    #@b
    .line 1251
    :cond_0
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@10
    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1252
    .end local v0    # "savedState":J
    :catch_0
    move-exception v2

    #@12
    .line 1253
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x1

    #@13
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@15
    .line 1254
    throw v2
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .locals 4
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
    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1102
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1103
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1104
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1105
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1102
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1109
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    #@0
    .prologue
    .line 1063
    const/4 v0, 0x0

    #@1
    .line 1064
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@5
    .line 1065
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1066
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 1064
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    goto :goto_0

    #@e
    .line 1068
    :cond_1
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .locals 3
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
    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1084
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1085
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@b
    .line 1086
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@d
    .line 1087
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1084
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@12
    goto :goto_0

    #@13
    .line 1089
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .locals 4
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
    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1122
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1123
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1124
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1125
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1122
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1129
    :cond_1
    return-object v0
.end method

.method protected final getState()J
    .locals 2

    #@0
    .prologue
    .line 76
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    #@2
    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1311
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1313
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1333
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1335
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public final hasQueuedPredecessors()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1043
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 1044
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .line 1046
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_2

    #@8
    .line 1047
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@c
    iget-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@11
    move-result-object v6

    #@12
    if-eq v5, v6, :cond_1

    #@14
    .line 1046
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v3

    #@15
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    move v3, v4

    #@16
    .line 1047
    goto :goto_0

    #@17
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    move v3, v4

    #@18
    .line 1046
    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1289
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1291
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    #@0
    .prologue
    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1157
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@2
    const/4 v1, -0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1158
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1159
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1160
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1169
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 971
    if-nez p1, :cond_0

    #@2
    .line 972
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 973
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@c
    .line 974
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 975
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 973
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    goto :goto_0

    #@15
    .line 976
    :cond_2
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 1
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1269
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final release(J)Z
    .locals 3
    .param p1, "arg"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 790
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 791
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 792
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 793
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@12
    .line 794
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 796
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    return v2
.end method

.method public final releaseShared(J)Z
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 870
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 871
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    #@9
    .line 872
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 874
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method protected final setState(J)V
    .locals 7
    .param p1, "newState"    # J

    #@0
    .prologue
    .line 87
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    #@4
    move-object v1, p0

    #@5
    move-wide v4, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@9
    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 1143
    const-string/jumbo v1, "[State = "

    #@10
    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1143
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    #@17
    move-result-wide v2

    #@18
    .line 1142
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 1143
    const-string/jumbo v1, ", "

    #@1f
    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1144
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    const-string/jumbo v0, "non"

    #@2c
    .line 1142
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1144
    const-string/jumbo v1, "empty queue]"

    #@33
    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0

    #@3c
    .line 1144
    :cond_0
    const-string/jumbo v0, ""

    #@3f
    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1225
    const/4 v0, -0x2

    #@2
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1226
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 1227
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1235
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1236
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@16
    goto :goto_0

    #@17
    .line 1237
    :cond_1
    return v1
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1201
    const/4 v2, -0x2

    #@2
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1202
    return v3

    #@9
    .line 1210
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    move-result-object v0

    #@d
    .line 1211
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@f
    .line 1212
    .local v1, "ws":I
    if-gtz v1, :cond_1

    #@11
    const/4 v2, -0x1

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1214
    :goto_0
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1213
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@1c
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@1f
    goto :goto_0
.end method

.method protected tryAcquire(J)Z
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final tryAcquireNanos(JJ)Z
    .locals 1
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 773
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 774
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 775
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 776
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    #@15
    move-result v0

    #@16
    .line 775
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method protected tryAcquireShared(J)J
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final tryAcquireSharedNanos(JJ)Z
    .locals 5
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 854
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 855
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 856
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@f
    move-result-wide v0

    #@10
    const-wide/16 v2, 0x0

    #@12
    cmp-long v0, v0, v2

    #@14
    if-gez v0, :cond_1

    #@16
    .line 857
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    #@19
    move-result v0

    #@1a
    .line 856
    :goto_0
    return v0

    #@1b
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method protected tryRelease(J)Z
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 631
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected tryReleaseShared(J)Z
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 692
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
