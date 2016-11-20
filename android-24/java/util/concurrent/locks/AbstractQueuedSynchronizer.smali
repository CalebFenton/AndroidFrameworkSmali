.class public abstract Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    }
.end annotation


# static fields
.field private static final HEAD:J

.field static final SPIN_FOR_TIMEOUT_THRESHOLD:J = 0x3e8L

.field private static final STATE:J

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x6655a843753f52e3L


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:I

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 2262
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@6
    .line 2269
    :try_start_0
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@8
    .line 2270
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@a
    const-string/jumbo v4, "state"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 2269
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->STATE:J

    #@17
    .line 2271
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@19
    .line 2272
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@1b
    const-string/jumbo v4, "head"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v3

    #@22
    .line 2271
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->HEAD:J

    #@28
    .line 2273
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@2a
    .line 2274
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    #@2c
    const-string/jumbo v4, "tail"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v3

    #@33
    .line 2273
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->TAIL:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 2281
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    #@3b
    .line 261
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@3c
    .line 2275
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@3d
    .line 2276
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
    .line 271
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    #@3
    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 6
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 608
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5
    .line 611
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 612
    .local v1, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@9
    .line 613
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@b
    sget-wide v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    #@d
    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@10
    .line 614
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 615
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    .line 616
    return-object v0

    #@19
    .line 619
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->initializeSyncQueue()V

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
    .line 748
    if-nez p1, :cond_0

    #@4
    .line 749
    return-void

    #@5
    .line 751
    :cond_0
    iput-object v5, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    .line 754
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 755
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@b
    if-lez v4, :cond_1

    #@d
    .line 756
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@f
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@11
    goto :goto_0

    #@12
    .line 761
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 766
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    #@15
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@17
    .line 769
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
    .line 770
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@24
    .line 746
    :goto_1
    return-void

    #@25
    .line 775
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@27
    if-eq v1, v4, :cond_5

    #@29
    .line 776
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@2b
    .local v3, "ws":I
    if-eq v3, v6, :cond_3

    #@2d
    .line 777
    if-gtz v3, :cond_5

    #@2f
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@32
    move-result v4

    #@33
    .line 775
    if-eqz v4, :cond_5

    #@35
    .line 778
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@37
    if-eqz v4, :cond_5

    #@39
    .line 779
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3b
    .line 780
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_4

    #@3d
    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3f
    if-gtz v4, :cond_4

    #@41
    .line 781
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@44
    .line 786
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@46
    goto :goto_1

    #@47
    .line 783
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@4a
    goto :goto_2
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 2297
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->TAIL:J

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
    .line 888
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v0

    #@6
    .line 891
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    move-result-object v1

    #@a
    .line 892
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v1, v3, :cond_1

    #@e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 893
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@17
    .line 894
    const/4 v3, 0x0

    #@18
    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    .line 895
    return-void

    #@1b
    .line 897
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 898
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    #@24
    move-result v3

    #@25
    .line 897
    if-eqz v3, :cond_0

    #@27
    .line 899
    new-instance v3, Ljava/lang/InterruptedException;

    #@29
    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    #@2c
    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 901
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    #@2e
    .line 902
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@31
    .line 903
    throw v2
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
    .line 916
    cmp-long v5, p2, v10

    #@5
    if-gtz v5, :cond_0

    #@7
    .line 917
    return v8

    #@8
    .line 918
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p2

    #@e
    .line 919
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v2

    #@14
    .line 922
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    move-result-object v3

    #@18
    .line 923
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    if-ne v3, v5, :cond_2

    #@1c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_2

    #@22
    .line 924
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@25
    .line 925
    const/4 v5, 0x0

    #@26
    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@28
    .line 926
    const/4 v5, 0x1

    #@29
    return v5

    #@2a
    .line 928
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@2d
    move-result-wide v6

    #@2e
    sub-long p2, v0, v6

    #@30
    .line 929
    cmp-long v5, p2, v10

    #@32
    if-gtz v5, :cond_3

    #@34
    .line 930
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@37
    .line 931
    return v8

    #@38
    .line 933
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_4

    #@3e
    .line 934
    const-wide/16 v6, 0x3e8

    #@40
    cmp-long v5, p2, v6

    #@42
    if-lez v5, :cond_4

    #@44
    .line 935
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@47
    .line 936
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_1

    #@4d
    .line 937
    new-instance v5, Ljava/lang/InterruptedException;

    #@4f
    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    #@52
    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 939
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    #@54
    .line 940
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@57
    .line 941
    throw v4
.end method

.method private doAcquireShared(I)V
    .locals 6
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 950
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v1

    #@6
    .line 952
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    #@7
    .line 954
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    move-result-object v2

    #@b
    .line 955
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-ne v2, v5, :cond_2

    #@f
    .line 956
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@12
    move-result v3

    #@13
    .line 957
    .local v3, "r":I
    if-ltz v3, :cond_2

    #@15
    .line 958
    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@18
    .line 959
    const/4 v5, 0x0

    #@19
    iput-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1b
    .line 960
    if-eqz v0, :cond_1

    #@1d
    .line 961
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    #@20
    .line 962
    :cond_1
    return-void

    #@21
    .line 965
    .end local v3    # "r":I
    :cond_2
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_0

    #@27
    .line 966
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v5

    #@2b
    .line 965
    if-eqz v5, :cond_0

    #@2d
    .line 967
    const/4 v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 969
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    #@30
    .line 970
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@33
    .line 971
    throw v4
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
    .line 981
    sget-object v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@5
    move-result-object v0

    #@6
    .line 984
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    move-result-object v1

    #@a
    .line 985
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v1, v4, :cond_1

    #@e
    .line 986
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@11
    move-result v2

    #@12
    .line 987
    .local v2, "r":I
    if-ltz v2, :cond_1

    #@14
    .line 988
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@17
    .line 989
    const/4 v4, 0x0

    #@18
    iput-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    .line 990
    return-void

    #@1b
    .line 993
    .end local v2    # "r":I
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 994
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z

    #@24
    move-result v4

    #@25
    .line 993
    if-eqz v4, :cond_0

    #@27
    .line 995
    new-instance v4, Ljava/lang/InterruptedException;

    #@29
    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    #@2c
    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 997
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v3

    #@2e
    .line 998
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@31
    .line 999
    throw v3
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
    .line 1012
    cmp-long v6, p2, v10

    #@5
    if-gtz v6, :cond_0

    #@7
    .line 1013
    return v8

    #@8
    .line 1014
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v6

    #@c
    add-long v0, v6, p2

    #@e
    .line 1015
    .local v0, "deadline":J
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@10
    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    move-result-object v2

    #@14
    .line 1018
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@17
    move-result-object v3

    #@18
    .line 1019
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1a
    if-ne v3, v6, :cond_2

    #@1c
    .line 1020
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@1f
    move-result v4

    #@20
    .line 1021
    .local v4, "r":I
    if-ltz v4, :cond_2

    #@22
    .line 1022
    invoke-direct {p0, v2, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V

    #@25
    .line 1023
    const/4 v6, 0x0

    #@26
    iput-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@28
    .line 1024
    const/4 v6, 0x1

    #@29
    return v6

    #@2a
    .line 1027
    .end local v4    # "r":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@2d
    move-result-wide v6

    #@2e
    sub-long p2, v0, v6

    #@30
    .line 1028
    cmp-long v6, p2, v10

    #@32
    if-gtz v6, :cond_3

    #@34
    .line 1029
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@37
    .line 1030
    return v8

    #@38
    .line 1032
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_4

    #@3e
    .line 1033
    const-wide/16 v6, 0x3e8

    #@40
    cmp-long v6, p2, v6

    #@42
    if-lez v6, :cond_4

    #@44
    .line 1034
    invoke-static {p0, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@47
    .line 1035
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_1

    #@4d
    .line 1036
    new-instance v6, Ljava/lang/InterruptedException;

    #@4f
    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    #@52
    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 1038
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v5

    #@54
    .line 1039
    .local v5, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@57
    .line 1040
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
    .line 687
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 688
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@6
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@8
    if-eq v0, v2, :cond_1

    #@a
    .line 689
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@c
    .line 690
    .local v1, "ws":I
    if-ne v1, v4, :cond_2

    #@e
    .line 691
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 693
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@17
    .line 699
    .end local v1    # "ws":I
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 674
    return-void

    #@1c
    .line 695
    .restart local v1    # "ws":I
    :cond_2
    if-nez v1, :cond_1

    #@1e
    .line 696
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
    .line 588
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 589
    .local v0, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    #@4
    .line 590
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    #@8
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@b
    .line 591
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 592
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 593
    return-object v0

    #@14
    .line 596
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->initializeSyncQueue()V

    #@17
    goto :goto_0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1652
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 1653
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    #@4
    .line 1654
    const/4 v1, 0x1

    #@5
    return v1

    #@6
    .line 1655
    :cond_0
    if-nez v0, :cond_1

    #@8
    .line 1656
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 1657
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    #@0
    .prologue
    .line 1408
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@4
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_1

    #@8
    .line 1409
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    if-ne v6, v7, :cond_1

    #@e
    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@10
    .local v4, "st":Ljava/lang/Thread;
    if-eqz v4, :cond_1

    #@12
    .line 1412
    :cond_0
    return-object v4

    #@13
    .line 1410
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@19
    .restart local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_2

    #@1b
    .line 1411
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1d
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    .restart local v4    # "st":Ljava/lang/Thread;
    if-nez v4, :cond_0

    #@25
    .line 1422
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_2
    const/4 v0, 0x0

    #@26
    .line 1423
    .local v0, "firstThread":Ljava/lang/Thread;
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@28
    .end local v0    # "firstThread":Ljava/lang/Thread;
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_4

    #@2a
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2c
    if-eq v2, v6, :cond_4

    #@2e
    .line 1424
    iget-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@30
    .line 1425
    .local v5, "t":Ljava/lang/Thread;
    if-eqz v5, :cond_3

    #@32
    .line 1426
    move-object v0, v5

    #@33
    .line 1423
    :cond_3
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@35
    goto :goto_0

    #@36
    .line 1428
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_4
    return-object v0
.end method

.method private final initializeSyncQueue()V
    .locals 6

    #@0
    .prologue
    .line 2289
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->HEAD:J

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
    .line 2290
    iput-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .line 2287
    :cond_0
    return-void
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    #@0
    .prologue
    .line 840
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@3
    .line 841
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
    .line 831
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 830
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 632
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .line 633
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@5
    .line 634
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .line 631
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)V
    .locals 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "propagate"    # I

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@2
    .line 714
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@5
    .line 731
    if-gtz p2, :cond_0

    #@7
    if-nez v0, :cond_3

    #@9
    .line 733
    :cond_0
    :goto_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 734
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 735
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    #@16
    .line 712
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    return-void

    #@17
    .line 731
    :cond_3
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    if-ltz v2, :cond_0

    #@1b
    .line 732
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@21
    if-gez v2, :cond_2

    #@23
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
    .line 800
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@4
    .line 801
    .local v0, "ws":I
    if-ne v0, v1, :cond_0

    #@6
    .line 806
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 807
    :cond_0
    if-lez v0, :cond_2

    #@a
    .line 813
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@e
    .line 814
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 815
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    .line 824
    :goto_0
    return v2

    #@15
    .line 822
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
    .line 648
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@3
    .line 649
    .local v2, "ws":I
    if-gez v2, :cond_0

    #@5
    .line 650
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@8
    .line 658
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .line 659
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    #@c
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@e
    if-lez v3, :cond_3

    #@10
    .line 660
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 661
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@13
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eq v0, p1, :cond_3

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 662
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@19
    if-gtz v3, :cond_2

    #@1b
    .line 663
    move-object v1, v0

    #@1c
    .line 661
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 665
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    if-eqz v1, :cond_4

    #@21
    .line 666
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@23
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@26
    .line 642
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(I)V
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1197
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
    .line 1196
    if-eqz v0, :cond_0

    #@12
    .line 1198
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    #@15
    .line 1195
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
    .line 1217
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1218
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1219
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1220
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireInterruptibly(I)V

    #@15
    .line 1216
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # I

    #@0
    .prologue
    .line 864
    const/4 v0, 0x0

    #@1
    .line 866
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    move-result-object v1

    #@5
    .line 867
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    if-ne v1, v3, :cond_1

    #@9
    invoke-virtual {p0, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 868
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@12
    .line 869
    const/4 v3, 0x0

    #@13
    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@15
    .line 870
    return v0

    #@16
    .line 872
    :cond_1
    invoke-static {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 873
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v3

    #@20
    .line 872
    if-eqz v3, :cond_0

    #@22
    .line 874
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 876
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    #@25
    .line 877
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@28
    .line 878
    throw v2
.end method

.method public final acquireShared(I)V
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 1282
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireShared(I)V

    #@9
    .line 1280
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
    .line 1300
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1301
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1302
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@f
    move-result v0

    #@10
    if-gez v0, :cond_1

    #@12
    .line 1303
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedInterruptibly(I)V

    #@15
    .line 1299
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1461
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@5
    .line 1462
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    #@9
    .line 1463
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1461
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v2

    #@10
    .line 1464
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
    .line 569
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->STATE:J

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
    .locals 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@0
    .prologue
    .line 1719
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    #@3
    move-result v0

    #@4
    .line 1720
    .local v0, "savedState":I
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1721
    return v0

    #@b
    .line 1722
    :cond_0
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    #@d
    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    #@10
    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1723
    .end local v0    # "savedState":I
    :catch_0
    move-exception v1

    #@12
    .line 1724
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x1

    #@13
    iput v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@15
    .line 1725
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
    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1573
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1574
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1575
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1576
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1577
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1573
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1580
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    #@0
    .prologue
    .line 1391
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
    .line 1534
    const/4 v0, 0x0

    #@1
    .line 1535
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@3
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@5
    .line 1536
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1537
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 1535
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    goto :goto_0

    #@e
    .line 1539
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
    .line 1554
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1555
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1556
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@b
    .line 1557
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@d
    .line 1558
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1555
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@12
    goto :goto_0

    #@13
    .line 1560
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
    .line 1592
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1593
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@7
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 1594
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1595
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@11
    .line 1596
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    #@13
    .line 1597
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 1593
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@18
    goto :goto_0

    #@19
    .line 1600
    :cond_1
    return-object v0
.end method

.method protected final getState()I
    .locals 1

    #@0
    .prologue
    .line 545
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    #@2
    return v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    #@0
    .prologue
    .line 1782
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1784
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
    .line 1804
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1805
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1806
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
    .line 1375
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
    .line 1514
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@4
    .line 1515
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@6
    .line 1517
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_2

    #@8
    .line 1518
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
    .line 1517
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v3

    #@15
    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    move v3, v4

    #@16
    .line 1518
    goto :goto_0

    #@17
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    move v3, v4

    #@18
    .line 1517
    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    #@0
    .prologue
    .line 1362
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
    .line 1760
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Not owner"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1762
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
    .line 1179
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
    .line 1628
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
    .line 1629
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1630
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1631
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 1640
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
    .line 1442
    if-nez p1, :cond_0

    #@2
    .line 1443
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1444
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@a
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    #@c
    .line 1445
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 1446
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1444
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@14
    goto :goto_0

    #@15
    .line 1447
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
    .line 1740
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
    .line 1260
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryRelease(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1261
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@9
    .line 1262
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1263
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    #@12
    .line 1264
    :cond_0
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 1266
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    return v2
.end method

.method public final releaseShared(I)Z
    .locals 1
    .param p1, "arg"    # I

    #@0
    .prologue
    .line 1341
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryReleaseShared(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1342
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doReleaseShared()V

    #@9
    .line 1343
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1345
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
    .line 554
    iput p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->state:I

    #@2
    .line 553
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1613
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
    .line 1614
    const-string/jumbo v1, "[State = "

    #@10
    .line 1613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1614
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    #@17
    move-result v1

    #@18
    .line 1613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 1614
    const-string/jumbo v1, ", "

    #@1f
    .line 1613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1615
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->hasQueuedThreads()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_0

    #@29
    const-string/jumbo v0, "non"

    #@2c
    .line 1613
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1615
    const-string/jumbo v1, "empty queue]"

    #@33
    .line 1613
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
    .line 1615
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
    .line 1696
    const/4 v0, -0x2

    #@2
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1697
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@b
    .line 1698
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1706
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1707
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@16
    goto :goto_0

    #@17
    .line 1708
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
    .line 1672
    const/4 v2, -0x2

    #@2
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1673
    return v3

    #@9
    .line 1681
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    #@c
    move-result-object v0

    #@d
    .line 1682
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    #@f
    .line 1683
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
    .line 1685
    :goto_0
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1684
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
    .line 1073
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
    .line 1242
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1243
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1244
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquire(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1245
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireNanos(IJ)Z

    #@15
    move-result v0

    #@16
    .line 1244
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
    .line 1135
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
    .line 1324
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1325
    new-instance v0, Ljava/lang/InterruptedException;

    #@8
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1326
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireShared(I)I

    #@f
    move-result v0

    #@10
    if-gez v0, :cond_1

    #@12
    .line 1327
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->doAcquireSharedNanos(IJ)Z

    #@15
    move-result v0

    #@16
    .line 1326
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
    .line 1099
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
    .line 1160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
