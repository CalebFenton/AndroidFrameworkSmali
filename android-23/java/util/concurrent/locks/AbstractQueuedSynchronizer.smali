.class public abstract Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    }
.end annotation


# static fields
.field private static final headOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = 0x6655a843753f52e3L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:I

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 2236
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 2245
    :try_start_0
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 2246
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@a
    const-string/jumbo v4, "state"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 2245
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

    #@17
    .line 2247
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@19
    .line 2248
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@1b
    const-string/jumbo v4, "head"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v3

    #@22
    .line 2247
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

    #@28
    .line 2249
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2a
    .line 2250
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2c
    const-string/jumbo v4, "tail"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v3

    #@33
    .line 2249
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

    #@39
    .line 2251
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@3b
    .line 2252
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3d
    const-string/jumbo v4, "waitStatus"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@43
    move-result-object v3

    #@44
    .line 2251
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@47
    move-result-wide v2

    #@48
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

    #@4a
    .line 2253
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@4c
    .line 2254
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4e
    const-string/jumbo v4, "next"

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@54
    move-result-object v3

    #@55
    .line 2253
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@58
    move-result-wide v2

    #@59
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 2260
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    #@5d
    .line 265
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@5e
    .line 2256
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
    .line 275
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    #@3
    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 3
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 582
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@9
    .line 584
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 585
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@d
    .line 586
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    .line 587
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 588
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    .line 589
    return-object v0

    #@18
    .line 592
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    .line 593
    return-object v0
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
    .line 718
    if-nez p1, :cond_0

    #@4
    .line 719
    return-void

    #@5
    .line 721
    :cond_0
    iput-object v5, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 724
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 725
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@b
    if-lez v4, :cond_1

    #@d
    .line 726
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    goto :goto_0

    #@12
    .line 731
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 736
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    #@15
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@17
    .line 739
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    if-ne p1, v4, :cond_2

    #@1b
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 740
    invoke-static {v1, v2, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@24
    .line 716
    :goto_1
    return-void

    #@25
    .line 745
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@27
    if-eq v1, v4, :cond_5

    #@29
    .line 746
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@2b
    .local v3, "ws":I
    if-eq v3, v6, :cond_3

    #@2d
    .line 747
    if-gtz v3, :cond_5

    #@2f
    invoke-static {v1, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@32
    move-result v4

    #@33
    .line 745
    if-eqz v4, :cond_5

    #@35
    .line 748
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@37
    if-eqz v4, :cond_5

    #@39
    .line 749
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3b
    .line 750
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_4

    #@3d
    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3f
    if-gtz v4, :cond_4

    #@41
    .line 751
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@44
    .line 756
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@46
    goto :goto_1

    #@47
    .line 753
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@4a
    goto :goto_2
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 2267
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->headOffset:J

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

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 2293
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->nextOffset:J

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

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 2274
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tailOffset:J

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

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z
    .locals 6
    .param p0, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 2283
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->waitStatusOffset:J

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

.method private doAcquireInterruptibly(I)V
    .locals 4
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 859
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 860
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 863
    .local v0, "failed":Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 864
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-ne v2, v3, :cond_2

    #@f
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 865
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@18
    .line 866
    const/4 v3, 0x0

    #@19
    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 867
    const/4 v0, 0x0

    #@1c
    .line 875
    if-eqz v0, :cond_1

    #@1e
    .line 876
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@21
    .line 868
    :cond_1
    return-void

    #@22
    .line 870
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 871
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    #@2b
    move-result v3

    #@2c
    .line 870
    if-eqz v3, :cond_0

    #@2e
    .line 872
    new-instance v3, Ljava/lang/InterruptedException;

    #@30
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@33
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 874
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v3

    #@35
    .line 875
    if-eqz v0, :cond_3

    #@37
    .line 876
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@3a
    .line 874
    :cond_3
    throw v3
.end method

.method private doAcquireNanos(IJ)Z
    .locals 12
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 889
    cmp-long v5, p2, v10

    #@5
    if-gtz v5, :cond_0

    #@7
    .line 890
    return v8

    #@8
    .line 891
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p2

    #@e
    .line 892
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v3

    #@14
    .line 893
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x1

    #@15
    .line 896
    .local v2, "failed":Z
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    move-result-object v4

    #@19
    .line 897
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    if-ne v4, v5, :cond_3

    #@1d
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 898
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@26
    .line 899
    const/4 v5, 0x0

    #@27
    iput-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 900
    const/4 v2, 0x0

    #@2a
    .line 901
    const/4 v5, 0x1

    #@2b
    .line 913
    if-eqz v2, :cond_2

    #@2d
    .line 914
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@30
    .line 901
    :cond_2
    return v5

    #@31
    .line 903
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-wide v6

    #@35
    sub-long p2, v0, v6

    #@37
    .line 904
    cmp-long v5, p2, v10

    #@39
    if-gtz v5, :cond_5

    #@3b
    .line 913
    if-eqz v2, :cond_4

    #@3d
    .line 914
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@40
    .line 905
    :cond_4
    return v8

    #@41
    .line 906
    :cond_5
    :try_start_2
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_6

    #@47
    .line 907
    const-wide/16 v6, 0x3e8

    #@49
    cmp-long v5, p2, v6

    #@4b
    if-lez v5, :cond_6

    #@4d
    .line 908
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@50
    .line 909
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_1

    #@56
    .line 910
    new-instance v5, Ljava/lang/InterruptedException;

    #@58
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@5b
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 912
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v5

    #@5d
    .line 913
    if-eqz v2, :cond_7

    #@5f
    .line 914
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@62
    .line 912
    :cond_7
    throw v5
.end method

.method private doAcquireShared(I)V
    .locals 6
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 923
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v2

    #@6
    .line 924
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 926
    .local v0, "failed":Z
    const/4 v1, 0x0

    #@8
    .line 928
    .local v1, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    move-result-object v3

    #@c
    .line 929
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    if-ne v3, v5, :cond_3

    #@10
    .line 930
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@13
    move-result v4

    #@14
    .line 931
    .local v4, "r":I
    if-ltz v4, :cond_3

    #@16
    .line 932
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@19
    .line 933
    const/4 v5, 0x0

    #@1a
    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1c
    .line 934
    if-eqz v1, :cond_1

    #@1e
    .line 935
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 936
    :cond_1
    const/4 v0, 0x0

    #@22
    .line 945
    if-eqz v0, :cond_2

    #@24
    .line 946
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@27
    .line 937
    :cond_2
    return-void

    #@28
    .line 940
    .end local v4    # "r":I
    :cond_3
    :try_start_1
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_0

    #@2e
    .line 941
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result v5

    #@32
    .line 940
    if-eqz v5, :cond_0

    #@34
    .line 942
    const/4 v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 944
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v5

    #@37
    .line 945
    if-eqz v0, :cond_4

    #@39
    .line 946
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@3c
    .line 944
    :cond_4
    throw v5
.end method

.method private doAcquireSharedInterruptibly(I)V
    .locals 5
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 956
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 957
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x1

    #@7
    .line 960
    .local v0, "failed":Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 961
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-ne v2, v4, :cond_2

    #@f
    .line 962
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@12
    move-result v3

    #@13
    .line 963
    .local v3, "r":I
    if-ltz v3, :cond_2

    #@15
    .line 964
    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@18
    .line 965
    const/4 v4, 0x0

    #@19
    iput-object v4, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 966
    const/4 v0, 0x0

    #@1c
    .line 975
    if-eqz v0, :cond_1

    #@1e
    .line 976
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@21
    .line 967
    :cond_1
    return-void

    #@22
    .line 970
    .end local v3    # "r":I
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 971
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    #@2b
    move-result v4

    #@2c
    .line 970
    if-eqz v4, :cond_0

    #@2e
    .line 972
    new-instance v4, Ljava/lang/InterruptedException;

    #@30
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@33
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 974
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v4

    #@35
    .line 975
    if-eqz v0, :cond_3

    #@37
    .line 976
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@3a
    .line 974
    :cond_3
    throw v4
.end method

.method private doAcquireSharedNanos(IJ)Z
    .locals 12
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 989
    cmp-long v6, p2, v10

    #@5
    if-gtz v6, :cond_0

    #@7
    .line 990
    return v8

    #@8
    .line 991
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p2

    #@e
    .line 992
    .local v0, "deadline":J
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v3

    #@14
    .line 993
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x1

    #@15
    .line 996
    .local v2, "failed":Z
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    move-result-object v4

    #@19
    .line 997
    .local v4, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    if-ne v4, v6, :cond_3

    #@1d
    .line 998
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@20
    move-result v5

    #@21
    .line 999
    .local v5, "r":I
    if-ltz v5, :cond_3

    #@23
    .line 1000
    invoke-direct {p0, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@26
    .line 1001
    const/4 v6, 0x0

    #@27
    iput-object v6, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1002
    const/4 v2, 0x0

    #@2a
    .line 1003
    const/4 v6, 0x1

    #@2b
    .line 1016
    if-eqz v2, :cond_2

    #@2d
    .line 1017
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@30
    .line 1003
    :cond_2
    return v6

    #@31
    .line 1006
    .end local v5    # "r":I
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-wide v6

    #@35
    sub-long p2, v0, v6

    #@37
    .line 1007
    cmp-long v6, p2, v10

    #@39
    if-gtz v6, :cond_5

    #@3b
    .line 1016
    if-eqz v2, :cond_4

    #@3d
    .line 1017
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@40
    .line 1008
    :cond_4
    return v8

    #@41
    .line 1009
    :cond_5
    :try_start_2
    invoke-static {v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_6

    #@47
    .line 1010
    const-wide/16 v6, 0x3e8

    #@49
    cmp-long v6, p2, v6

    #@4b
    if-lez v6, :cond_6

    #@4d
    .line 1011
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@50
    .line 1012
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_1

    #@56
    .line 1013
    new-instance v6, Ljava/lang/InterruptedException;

    #@58
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@5b
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 1015
    .end local v4    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v6

    #@5d
    .line 1016
    if-eqz v2, :cond_7

    #@5f
    .line 1017
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@62
    .line 1015
    :cond_7
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
    .line 659
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 660
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@6
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    if-eq v0, v2, :cond_1

    #@a
    .line 661
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@c
    .line 662
    .local v1, "ws":I
    if-ne v1, v4, :cond_2

    #@e
    .line 663
    invoke-static {v0, v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 665
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@17
    .line 671
    .end local v1    # "ws":I
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 646
    return-void

    #@1c
    .line 667
    .restart local v1    # "ws":I
    :cond_2
    if-nez v1, :cond_1

    #@1e
    .line 668
    const/4 v2, -0x3

    #@1f
    invoke-static {v0, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 561
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 562
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_1

    #@4
    .line 563
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 564
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    goto :goto_0

    #@14
    .line 566
    :cond_1
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@16
    .line 567
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 568
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    .line 569
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1627
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 1629
    .local v0, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    #@4
    .line 1630
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 1631
    :cond_0
    if-nez v0, :cond_1

    #@8
    .line 1632
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 1633
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    #@0
    .prologue
    .line 1382
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@4
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .local v2, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_1

    #@8
    .line 1383
    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v6, v7, :cond_1

    #@e
    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@10
    .local v3, "st":Ljava/lang/Thread;
    if-eqz v3, :cond_1

    #@12
    .line 1386
    :cond_0
    return-object v3

    #@13
    .line 1384
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    .restart local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v2, :cond_2

    #@1b
    .line 1385
    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1d
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    .restart local v3    # "st":Ljava/lang/Thread;
    if-nez v3, :cond_0

    #@25
    .line 1396
    .end local v2    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "st":Ljava/lang/Thread;
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@27
    .line 1397
    .local v4, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    #@28
    .line 1398
    :goto_0
    if-eqz v4, :cond_4

    #@2a
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2c
    if-eq v4, v6, :cond_4

    #@2e
    .line 1399
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@30
    .line 1400
    .local v5, "tt":Ljava/lang/Thread;
    if-eqz v5, :cond_3

    #@32
    .line 1401
    move-object v0, v5

    #@33
    .line 1402
    :cond_3
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@35
    goto :goto_0

    #@36
    .line 1404
    .end local v5    # "tt":Ljava/lang/Thread;
    :cond_4
    return-object v0
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    #@0
    .prologue
    .line 810
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@3
    .line 811
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
    .line 801
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 800
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 604
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 605
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@5
    .line 606
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 603
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V
    .locals 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "propagate"    # I

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 686
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5
    .line 702
    if-gtz p2, :cond_0

    #@7
    if-nez v0, :cond_3

    #@9
    .line 703
    :cond_0
    :goto_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 704
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 705
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    #@16
    .line 684
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    return-void

    #@17
    .line 702
    :cond_3
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    if-gez v2, :cond_2

    #@1b
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
    .line 770
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@4
    .line 771
    .local v0, "ws":I
    if-ne v0, v1, :cond_0

    #@6
    .line 776
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 777
    :cond_0
    if-lez v0, :cond_2

    #@a
    .line 783
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    .line 784
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 785
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 794
    :goto_0
    return v2

    #@15
    .line 792
    :cond_2
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

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
    .line 620
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3
    .line 621
    .local v2, "ws":I
    if-gez v2, :cond_0

    #@5
    .line 622
    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@8
    .line 630
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .line 631
    .local v0, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@c
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@e
    if-lez v3, :cond_3

    #@10
    .line 632
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 633
    .local v0, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .end local v0    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    #@15
    if-eq v1, p1, :cond_3

    #@17
    .line 634
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    if-gtz v3, :cond_2

    #@1b
    .line 635
    move-object v0, v1

    #@1c
    .line 633
    :cond_2
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 637
    .end local v1    # "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    if-eqz v0, :cond_4

    #@21
    .line 638
    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@26
    .line 614
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1172
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1173
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    #@f
    move-result v0

    #@10
    .line 1172
    if-eqz v0, :cond_0

    #@12
    .line 1174
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    #@15
    .line 1171
    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(I)V
    .locals 1
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1194
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1195
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1196
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireInterruptibly(I)V

    #@15
    .line 1192
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # I

    #@0
    .prologue
    .line 832
    const/4 v0, 0x1

    #@1
    .line 834
    .local v0, "failed":Z
    const/4 v1, 0x0

    #@2
    .line 836
    .local v1, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v2

    #@6
    .line 837
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    if-ne v2, v3, :cond_2

    #@a
    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 838
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@13
    .line 839
    const/4 v3, 0x0

    #@14
    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 840
    const/4 v0, 0x0

    #@17
    .line 848
    if-eqz v0, :cond_1

    #@19
    .line 849
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@1c
    .line 841
    :cond_1
    return v1

    #@1d
    .line 843
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 844
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v3

    #@27
    .line 843
    if-eqz v3, :cond_0

    #@29
    .line 845
    const/4 v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 847
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catchall_0
    move-exception v3

    #@2c
    .line 848
    if-eqz v0, :cond_3

    #@2e
    .line 849
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@31
    .line 847
    :cond_3
    throw v3
.end method

.method public final acquireShared(I)V
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1256
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 1257
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireShared(I)V

    #@9
    .line 1255
    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(I)V
    .locals 1
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1275
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1276
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1277
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@f
    move-result v0

    #@10
    if-gez v0, :cond_1

    #@12
    .line 1278
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedInterruptibly(I)V

    #@15
    .line 1274
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1437
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@5
    .line 1438
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@9
    .line 1439
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1437
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v2

    #@10
    .line 1440
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

.method protected final compareAndSetState(II)Z
    .locals 6
    .param p1, "expect"    # I
    .param p2, "update"    # I

    #@0
    .prologue
    .line 542
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->stateOffset:J

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

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1694
    const/4 v0, 0x1

    #@2
    .line 1696
    .local v0, "failed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    #@5
    move-result v1

    #@6
    .line 1697
    .local v1, "savedState":I
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1698
    const/4 v0, 0x0

    #@d
    .line 1704
    if-eqz v0, :cond_0

    #@f
    .line 1705
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@11
    .line 1699
    :cond_0
    return v1

    #@12
    .line 1701
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@14
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@17
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 1703
    .end local v1    # "savedState":I
    :catchall_0
    move-exception v2

    #@19
    .line 1704
    if-eqz v0, :cond_2

    #@1b
    .line 1705
    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@1d
    .line 1703
    :cond_2
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
    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1550
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1551
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1552
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1553
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1554
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1550
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1557
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    #@0
    .prologue
    .line 1365
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    #@0
    .prologue
    .line 1511
    const/4 v0, 0x0

    #@1
    .line 1512
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@5
    .line 1513
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1514
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 1512
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    goto :goto_0

    #@e
    .line 1516
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
    .line 1531
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1532
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1533
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@b
    .line 1534
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@d
    .line 1535
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1532
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@12
    goto :goto_0

    #@13
    .line 1537
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
    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1570
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1571
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1572
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1573
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1574
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1570
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1577
    :cond_1
    return-object v0
.end method

.method protected final getState()I
    .locals 1

    #@0
    .prologue
    .line 517
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    #@2
    return v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1762
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1764
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitQueueLength()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1784
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1786
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    #@0
    .prologue
    .line 1349
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

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
    .line 1490
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 1491
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .line 1493
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_2

    #@8
    .line 1494
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
    .line 1493
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v3

    #@15
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    move v3, v4

    #@16
    .line 1494
    goto :goto_0

    #@17
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    move v3, v4

    #@18
    .line 1493
    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    #@0
    .prologue
    .line 1336
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

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

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1740
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1742
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->hasWaiters()Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    #@0
    .prologue
    .line 1156
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
    .line 1606
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
    .line 1607
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1608
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1609
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1618
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

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
    .line 1418
    if-nez p1, :cond_0

    #@2
    .line 1419
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1420
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@c
    .line 1421
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 1422
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1420
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    goto :goto_0

    #@15
    .line 1423
    :cond_2
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z
    .locals 1
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1720
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final release(I)Z
    .locals 3
    .param p1, "arg"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1235
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryRelease(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1236
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1237
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1238
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@12
    .line 1239
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 1241
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    return v2
.end method

.method public final releaseShared(I)Z
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1315
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryReleaseShared(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1316
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    #@9
    .line 1317
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1319
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method protected final setState(I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 526
    iput p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    #@2
    .line 525
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1590
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    #@3
    move-result v1

    #@4
    .line 1591
    .local v1, "s":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    const-string/jumbo v0, "non"

    #@d
    .line 1592
    .local v0, "q":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-super {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 1593
    const-string/jumbo v3, "[State = "

    #@1d
    .line 1592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 1593
    const-string/jumbo v3, ", "

    #@28
    .line 1592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 1593
    const-string/jumbo v3, "empty queue]"

    #@33
    .line 1592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 1591
    .end local v0    # "q":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@3f
    .restart local v0    # "q":Ljava/lang/String;
    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1672
    const/4 v0, -0x2

    #@2
    invoke-static {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1673
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 1674
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1682
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1683
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@16
    goto :goto_0

    #@17
    .line 1684
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
    .line 1648
    const/4 v2, -0x2

    #@2
    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1649
    return v3

    #@9
    .line 1657
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    move-result-object v0

    #@d
    .line 1658
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@f
    .line 1659
    .local v1, "ws":I
    if-gtz v1, :cond_1

    #@11
    const/4 v2, -0x1

    #@12
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;II)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1661
    :goto_0
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1660
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@1c
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@1f
    goto :goto_0
.end method

.method protected tryAcquire(I)Z
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1050
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final tryAcquireNanos(IJ)Z
    .locals 2
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1218
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1219
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1220
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1221
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireNanos(IJ)Z

    #@15
    move-result v0

    #@16
    .line 1220
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final tryAcquireSharedNanos(IJ)Z
    .locals 2
    .param p1, "arg"    # I
    .param p2, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1299
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1300
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1301
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@f
    move-result v0

    #@10
    if-gez v0, :cond_1

    #@12
    .line 1302
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedNanos(IJ)Z

    #@15
    move-result v0

    #@16
    .line 1301
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1076
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
