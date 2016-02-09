.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    }
.end annotation


# static fields
.field private static final headOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = 0x6655a843753f52e4L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 2012
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 2021
    :try_start_0
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 2022
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@a
    const-string/jumbo v4, "state"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 2021
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    #@17
    .line 2023
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@19
    .line 2024
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@1b
    const-string/jumbo v4, "head"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v3

    #@22
    .line 2023
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    #@28
    .line 2025
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2a
    .line 2026
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    #@2c
    const-string/jumbo v4, "tail"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v3

    #@33
    .line 2025
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    #@39
    .line 2027
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@3b
    .line 2028
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3d
    const-string/jumbo v4, "waitStatus"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@43
    move-result-object v3

    #@44
    .line 2027
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@47
    move-result-wide v2

    #@48
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    #@4a
    .line 2029
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@4c
    .line 2030
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@4e
    const-string/jumbo v4, "next"

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@54
    move-result-object v3

    #@55
    .line 2029
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@58
    move-result-wide v2

    #@59
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 2036
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    #@5d
    .line 32
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@5e
    .line 2032
    .end local v0    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@5f
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@61
    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@64
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

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 3
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 356
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@9
    .line 358
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@b
    .line 359
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    #@d
    .line 360
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@f
    .line 361
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 362
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@17
    .line 363
    return-object v0

    #@18
    .line 366
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    .line 367
    return-object v0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 492
    if-nez p1, :cond_0

    #@4
    .line 493
    return-void

    #@5
    .line 495
    :cond_0
    iput-object v5, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 498
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@9
    .line 499
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@b
    if-lez v4, :cond_1

    #@d
    .line 500
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@f
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@11
    goto :goto_0

    #@12
    .line 505
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@14
    .line 510
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v4, 0x1

    #@15
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@17
    .line 513
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@19
    if-ne p1, v4, :cond_2

    #@1b
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 514
    invoke-static {v1, v2, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@24
    .line 490
    :goto_1
    return-void

    #@25
    .line 519
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@27
    if-eq v1, v4, :cond_5

    #@29
    .line 520
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@2b
    .local v3, "ws":I
    if-eq v3, v6, :cond_3

    #@2d
    .line 521
    if-gtz v3, :cond_5

    #@2f
    invoke-static {v1, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@32
    move-result v4

    #@33
    .line 519
    if-eqz v4, :cond_5

    #@35
    .line 522
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@37
    if-eqz v4, :cond_5

    #@39
    .line 523
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3b
    .line 524
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_4

    #@3d
    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@3f
    if-gtz v4, :cond_4

    #@41
    .line 525
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@44
    .line 530
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@46
    goto :goto_1

    #@47
    .line 527
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@4a
    goto :goto_2
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .param p1, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 2043
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    #@4
    const/4 v4, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v5, p1

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 2069
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J

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

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 2050
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

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

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z
    .locals 6
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 2059
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

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
    .line 633
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 634
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 637
    .local v0, "failed":Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 638
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@d
    if-ne v2, v3, :cond_2

    #@f
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 639
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@18
    .line 640
    const/4 v3, 0x0

    #@19
    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 641
    const/4 v0, 0x0

    #@1c
    .line 649
    if-eqz v0, :cond_1

    #@1e
    .line 650
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@21
    .line 642
    :cond_1
    return-void

    #@22
    .line 644
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 645
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    #@2b
    move-result v3

    #@2c
    .line 644
    if-eqz v3, :cond_0

    #@2e
    .line 646
    new-instance v3, Ljava/lang/InterruptedException;

    #@30
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@33
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 648
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v3

    #@35
    .line 649
    if-eqz v0, :cond_3

    #@37
    .line 650
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@3a
    .line 648
    :cond_3
    throw v3
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
    .line 663
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p3, v6

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 664
    const/4 v5, 0x0

    #@7
    return v5

    #@8
    .line 665
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p3

    #@e
    .line 666
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@13
    move-result-object v3

    #@14
    .line 667
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x1

    #@15
    .line 670
    .local v2, "failed":Z
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@18
    move-result-object v4

    #@19
    .line 671
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    if-ne v4, v5, :cond_3

    #@1d
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 672
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@26
    .line 673
    const/4 v5, 0x0

    #@27
    iput-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 674
    const/4 v2, 0x0

    #@2a
    .line 675
    const/4 v5, 0x1

    #@2b
    .line 687
    if-eqz v2, :cond_2

    #@2d
    .line 688
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@30
    .line 675
    :cond_2
    return v5

    #@31
    .line 677
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-wide v6

    #@35
    sub-long p3, v0, v6

    #@37
    .line 678
    const-wide/16 v6, 0x0

    #@39
    cmp-long v5, p3, v6

    #@3b
    if-gtz v5, :cond_5

    #@3d
    .line 679
    const/4 v5, 0x0

    #@3e
    .line 687
    if-eqz v2, :cond_4

    #@40
    .line 688
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@43
    .line 679
    :cond_4
    return v5

    #@44
    .line 680
    :cond_5
    :try_start_2
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_6

    #@4a
    .line 681
    const-wide/16 v6, 0x3e8

    #@4c
    cmp-long v5, p3, v6

    #@4e
    if-lez v5, :cond_6

    #@50
    .line 682
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@53
    .line 683
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_1

    #@59
    .line 684
    new-instance v5, Ljava/lang/InterruptedException;

    #@5b
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@5e
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    .line 686
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v5

    #@60
    .line 687
    if-eqz v2, :cond_7

    #@62
    .line 688
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@65
    .line 686
    :cond_7
    throw v5
.end method

.method private doAcquireShared(J)V
    .locals 9
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 697
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    move-result-object v2

    #@6
    .line 698
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 700
    .local v0, "failed":Z
    const/4 v1, 0x0

    #@8
    .line 702
    .local v1, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@b
    move-result-object v3

    #@c
    .line 703
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@e
    if-ne v3, v6, :cond_3

    #@10
    .line 704
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@13
    move-result-wide v4

    #@14
    .line 705
    .local v4, "r":J
    const-wide/16 v6, 0x0

    #@16
    cmp-long v6, v4, v6

    #@18
    if-ltz v6, :cond_3

    #@1a
    .line 706
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    #@1d
    .line 707
    const/4 v6, 0x0

    #@1e
    iput-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@20
    .line 708
    if-eqz v1, :cond_1

    #@22
    .line 709
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 710
    :cond_1
    const/4 v0, 0x0

    #@26
    .line 719
    if-eqz v0, :cond_2

    #@28
    .line 720
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@2b
    .line 711
    :cond_2
    return-void

    #@2c
    .line 714
    .end local v4    # "r":J
    :cond_3
    :try_start_1
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 715
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result v6

    #@36
    .line 714
    if-eqz v6, :cond_0

    #@38
    .line 716
    const/4 v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 718
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v6

    #@3b
    .line 719
    if-eqz v0, :cond_4

    #@3d
    .line 720
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@40
    .line 718
    :cond_4
    throw v6
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
    .line 730
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 731
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 734
    .local v0, "failed":Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 735
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@d
    if-ne v2, v3, :cond_2

    #@f
    .line 736
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@12
    move-result-wide v4

    #@13
    .line 737
    .local v4, "r":J
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-ltz v3, :cond_2

    #@19
    .line 738
    invoke-direct {p0, v1, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    #@1c
    .line 739
    const/4 v3, 0x0

    #@1d
    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 740
    const/4 v0, 0x0

    #@20
    .line 749
    if-eqz v0, :cond_1

    #@22
    .line 750
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@25
    .line 741
    :cond_1
    return-void

    #@26
    .line 744
    .end local v4    # "r":J
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 745
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    #@2f
    move-result v3

    #@30
    .line 744
    if-eqz v3, :cond_0

    #@32
    .line 746
    new-instance v3, Ljava/lang/InterruptedException;

    #@34
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@37
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 748
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v3

    #@39
    .line 749
    if-eqz v0, :cond_3

    #@3b
    .line 750
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@3e
    .line 748
    :cond_3
    throw v3
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
    .line 763
    const-wide/16 v8, 0x0

    #@2
    cmp-long v5, p3, v8

    #@4
    if-gtz v5, :cond_0

    #@6
    .line 764
    const/4 v5, 0x0

    #@7
    return v5

    #@8
    .line 765
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v8

    #@c
    add-long v0, v8, p3

    #@e
    .line 766
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@10
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@13
    move-result-object v3

    #@14
    .line 767
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x1

    #@15
    .line 770
    .local v2, "failed":Z
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@18
    move-result-object v4

    #@19
    .line 771
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1b
    if-ne v4, v5, :cond_3

    #@1d
    .line 772
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    #@20
    move-result-wide v6

    #@21
    .line 773
    .local v6, "r":J
    const-wide/16 v8, 0x0

    #@23
    cmp-long v5, v6, v8

    #@25
    if-ltz v5, :cond_3

    #@27
    .line 774
    invoke-direct {p0, v3, v6, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    #@2a
    .line 775
    const/4 v5, 0x0

    #@2b
    iput-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 776
    const/4 v2, 0x0

    #@2e
    .line 777
    const/4 v5, 0x1

    #@2f
    .line 790
    if-eqz v2, :cond_2

    #@31
    .line 791
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@34
    .line 777
    :cond_2
    return v5

    #@35
    .line 780
    .end local v6    # "r":J
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    move-result-wide v8

    #@39
    sub-long p3, v0, v8

    #@3b
    .line 781
    const-wide/16 v8, 0x0

    #@3d
    cmp-long v5, p3, v8

    #@3f
    if-gtz v5, :cond_5

    #@41
    .line 782
    const/4 v5, 0x0

    #@42
    .line 790
    if-eqz v2, :cond_4

    #@44
    .line 791
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@47
    .line 782
    :cond_4
    return v5

    #@48
    .line 783
    :cond_5
    :try_start_2
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_6

    #@4e
    .line 784
    const-wide/16 v8, 0x3e8

    #@50
    cmp-long v5, p3, v8

    #@52
    if-lez v5, :cond_6

    #@54
    .line 785
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@57
    .line 786
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_1

    #@5d
    .line 787
    new-instance v5, Ljava/lang/InterruptedException;

    #@5f
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@62
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    .line 789
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v5

    #@64
    .line 790
    if-eqz v2, :cond_7

    #@66
    .line 791
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@69
    .line 789
    :cond_7
    throw v5
.end method

.method private doReleaseShared()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 433
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@4
    .line 434
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    #@6
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@8
    if-eq v0, v2, :cond_1

    #@a
    .line 435
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@c
    .line 436
    .local v1, "ws":I
    if-ne v1, v4, :cond_2

    #@e
    .line 437
    invoke-static {v0, v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 439
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@17
    .line 445
    .end local v1    # "ws":I
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 420
    return-void

    #@1c
    .line 441
    .restart local v1    # "ws":I
    :cond_2
    if-nez v1, :cond_1

    #@1e
    .line 442
    const/4 v2, -0x3

    #@1f
    invoke-static {v0, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    .line 336
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_1

    #@4
    .line 337
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@6
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 338
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@11
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@13
    goto :goto_0

    #@14
    .line 340
    :cond_1
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@16
    .line 341
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 342
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1e
    .line 343
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    .line 1403
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    #@4
    .line 1404
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 1405
    :cond_0
    if-nez v0, :cond_1

    #@8
    .line 1406
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 1407
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@c
    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    #@0
    .prologue
    .line 1156
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_1

    #@4
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@6
    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_1

    #@8
    .line 1157
    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@c
    if-ne v6, v7, :cond_1

    #@e
    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@10
    .local v3, "st":Ljava/lang/Thread;
    if-eqz v3, :cond_1

    #@12
    .line 1160
    :cond_0
    return-object v3

    #@13
    .line 1158
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@19
    .restart local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_2

    #@1b
    .line 1159
    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1d
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    .restart local v3    # "st":Ljava/lang/Thread;
    if-nez v3, :cond_0

    #@25
    .line 1170
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@27
    .line 1171
    .local v4, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x0

    #@28
    .line 1172
    :goto_0
    if-eqz v4, :cond_4

    #@2a
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2c
    if-eq v4, v6, :cond_4

    #@2e
    .line 1173
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@30
    .line 1174
    .local v5, "tt":Ljava/lang/Thread;
    if-eqz v5, :cond_3

    #@32
    .line 1175
    move-object v0, v5

    #@33
    .line 1176
    :cond_3
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@35
    goto :goto_0

    #@36
    .line 1178
    .end local v5    # "tt":Ljava/lang/Thread;
    :cond_4
    return-object v0
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    #@0
    .prologue
    .line 584
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@3
    .line 585
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
    .line 575
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 574
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 378
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    .line 379
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@5
    .line 380
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .line 377
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "propagate"    # J

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    .line 460
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@5
    .line 476
    const-wide/16 v2, 0x0

    #@7
    cmp-long v2, p2, v2

    #@9
    if-gtz v2, :cond_0

    #@b
    if-nez v0, :cond_3

    #@d
    .line 477
    :cond_0
    :goto_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@f
    .line 478
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 479
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    #@1a
    .line 458
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_2
    return-void

    #@1b
    .line 476
    :cond_3
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@1d
    if-gez v2, :cond_2

    #@1f
    goto :goto_0
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 3
    .param p0, "pred"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 544
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@4
    .line 545
    .local v0, "ws":I
    if-ne v0, v1, :cond_0

    #@6
    .line 550
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 551
    :cond_0
    if-lez v0, :cond_2

    #@a
    .line 557
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@c
    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@e
    .line 558
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 559
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@14
    .line 568
    :goto_0
    return v2

    #@15
    .line 566
    :cond_2
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@18
    goto :goto_0
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 394
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@3
    .line 395
    .local v2, "ws":I
    if-gez v2, :cond_0

    #@5
    .line 396
    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@8
    .line 404
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    .line 405
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_1

    #@c
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@e
    if-lez v3, :cond_3

    #@10
    .line 406
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 407
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@13
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_3

    #@15
    if-eq v0, p1, :cond_3

    #@17
    .line 408
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@19
    if-gtz v3, :cond_2

    #@1b
    .line 409
    move-object v1, v0

    #@1c
    .line 407
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 411
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_3
    if-eqz v1, :cond_4

    #@21
    .line 412
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@26
    .line 388
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 946
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 947
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@8
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    #@f
    move-result v0

    #@10
    .line 946
    if-eqz v0, :cond_0

    #@12
    .line 948
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    #@15
    .line 945
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
    .line 967
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 968
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 969
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 970
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    #@15
    .line 966
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .param p2, "arg"    # J

    #@0
    .prologue
    .line 606
    const/4 v0, 0x1

    #@1
    .line 608
    .local v0, "failed":Z
    const/4 v1, 0x0

    #@2
    .line 610
    .local v1, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@5
    move-result-object v2

    #@6
    .line 611
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@8
    if-ne v2, v3, :cond_2

    #@a
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 612
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@13
    .line 613
    const/4 v3, 0x0

    #@14
    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 614
    const/4 v0, 0x0

    #@17
    .line 622
    if-eqz v0, :cond_1

    #@19
    .line 623
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@1c
    .line 615
    :cond_1
    return v1

    #@1d
    .line 617
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 618
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v3

    #@27
    .line 617
    if-eqz v3, :cond_0

    #@29
    .line 619
    const/4 v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 621
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v3

    #@2c
    .line 622
    if-eqz v0, :cond_3

    #@2e
    .line 623
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@31
    .line 621
    :cond_3
    throw v3
.end method

.method public final acquireShared(J)V
    .locals 5
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 1030
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
    .line 1031
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    #@d
    .line 1029
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
    .line 1049
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1050
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1051
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
    .line 1052
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    #@19
    .line 1048
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1211
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_0

    #@5
    .line 1212
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    #@9
    .line 1213
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1211
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_0
    :goto_0
    return v2

    #@10
    .line 1214
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

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
    .line 316
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

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

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J
    .locals 5
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1468
    const/4 v0, 0x1

    #@2
    .line 1470
    .local v0, "failed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    #@5
    move-result-wide v2

    #@6
    .line 1471
    .local v2, "savedState":J
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1472
    const/4 v0, 0x0

    #@d
    .line 1478
    if-eqz v0, :cond_0

    #@f
    .line 1479
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@11
    .line 1473
    :cond_0
    return-wide v2

    #@12
    .line 1475
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    #@14
    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@17
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 1477
    .end local v2    # "savedState":J
    :catchall_0
    move-exception v1

    #@19
    .line 1478
    if-eqz v0, :cond_2

    #@1b
    .line 1479
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@1d
    .line 1477
    :cond_2
    throw v1
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
    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1324
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1325
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1326
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1327
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1328
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1324
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1331
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    #@0
    .prologue
    .line 1139
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

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
    .line 1285
    const/4 v0, 0x0

    #@1
    .line 1286
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@5
    .line 1287
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1288
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 1286
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@d
    goto :goto_0

    #@e
    .line 1290
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
    .line 1305
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1306
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1307
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@b
    .line 1308
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@d
    .line 1309
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1306
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@12
    goto :goto_0

    #@13
    .line 1311
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
    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1344
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1345
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1346
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1347
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1348
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1344
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1351
    :cond_1
    return-object v0
.end method

.method protected final getState()J
    .locals 2

    #@0
    .prologue
    .line 291
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    #@2
    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1536
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1538
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
    .line 1558
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1560
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
    .line 1123
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

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
    .line 1264
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@4
    .line 1265
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@6
    .line 1267
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eq v0, v2, :cond_2

    #@8
    .line 1268
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    #@c
    iget-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@11
    move-result-object v6

    #@12
    if-eq v5, v6, :cond_1

    #@14
    .line 1267
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_0
    :goto_0
    return v3

    #@15
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1
    move v3, v4

    #@16
    .line 1268
    goto :goto_0

    #@17
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_2
    move v3, v4

    #@18
    .line 1267
    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    #@0
    .prologue
    .line 1110
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

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
    .line 1514
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1516
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
    .line 930
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    .line 1380
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@2
    const/4 v1, -0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1381
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1382
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1383
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1392
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

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
    .line 1192
    if-nez p1, :cond_0

    #@2
    .line 1193
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1194
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@a
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@c
    .line 1195
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 1196
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1194
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@14
    goto :goto_0

    #@15
    .line 1197
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
    .line 1494
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
    .line 1009
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1010
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@9
    .line 1011
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1012
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    #@12
    .line 1013
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 1015
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1
    return v2
.end method

.method public final releaseShared(J)Z
    .locals 1
    .param p1, "arg"    # J

    #@0
    .prologue
    .line 1089
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1090
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    #@9
    .line 1091
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1093
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method protected final setState(J)V
    .locals 1
    .param p1, "newState"    # J

    #@0
    .prologue
    .line 300
    iput-wide p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    #@2
    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1364
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    #@3
    move-result-wide v2

    #@4
    .line 1365
    .local v2, "s":J
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v0, "non"

    #@d
    .line 1366
    .local v0, "q":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-super {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->toString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1367
    const-string/jumbo v4, "[State = "

    #@1d
    .line 1366
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 1367
    const-string/jumbo v4, ", "

    #@28
    .line 1366
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1367
    const-string/jumbo v4, "empty queue]"

    #@33
    .line 1366
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 1365
    .end local v0    # "q":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@3f
    .restart local v0    # "q":Ljava/lang/String;
    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1446
    const/4 v0, -0x2

    #@2
    invoke-static {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1447
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@b
    .line 1448
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1456
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1457
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@16
    goto :goto_0

    #@17
    .line 1458
    :cond_1
    return v1
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1422
    const/4 v2, -0x2

    #@2
    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1423
    return v3

    #@9
    .line 1431
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    #@c
    move-result-object v0

    #@d
    .line 1432
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    #@f
    .line 1433
    .local v1, "ws":I
    if-gtz v1, :cond_1

    #@11
    const/4 v2, -0x1

    #@12
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1435
    :goto_0
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1434
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

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
    .line 824
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
    .line 992
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 993
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 994
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 995
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    #@15
    move-result v0

    #@16
    .line 994
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
    .line 886
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
    .line 1073
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1074
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1075
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
    .line 1076
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    #@19
    move-result v0

    #@1a
    .line 1075
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
    .line 850
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
    .line 911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
