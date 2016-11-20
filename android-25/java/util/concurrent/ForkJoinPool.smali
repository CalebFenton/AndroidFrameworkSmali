.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$1;,
        Ljava/util/concurrent/ForkJoinPool$AuxState;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ADD_WORKER:J = 0x800000000000L

.field private static final ASHIFT:I

.field private static final COMMON_MAX_SPARES:I

.field static final COMMON_PARALLELISM:I

.field private static final CTL:J

.field private static final DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field static final EVENMASK:I = 0xfffe

.field static final FIFO_QUEUE:I = -0x80000000

.field private static final IDLE_TIMEOUT_MS:J = 0x7d0L

.field static final IS_OWNED:I = 0x1

.field static final LIFO_QUEUE:I = 0x0

.field static final MAX_CAP:I = 0x7fff

.field static final MODE_MASK:I = -0x10000

.field static final POLL_LIMIT:I = 0x3ff

.field private static final RUNSTATE:J

.field private static final SEED_INCREMENT:I = -0x61c88647

.field private static final SHUTDOWN:I = -0x80000000

.field static final SMASK:I = 0xffff

.field static final SPARE_WORKER:I = 0x20000

.field private static final SP_MASK:J = 0xffffffffL

.field static final SQMASK:I = 0x7e

.field static final SS_SEQ:I = 0x10000

.field private static final STARTED:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TERMINATED:I = 0x4

.field private static final TIMEOUT_SLOP_MS:J = 0x14L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UC_MASK:J = -0x100000000L

.field static final UNREGISTERED:I = 0x40000

.field static final UNSIGNALLED:I = -0x80000000

.field static final common:Ljava/util/concurrent/ForkJoinPool;

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I


# instance fields
.field auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

.field final config:I

.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile runState:I

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3431
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@4
    move-result-object v6

    #@5
    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@7
    .line 3439
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@9
    .line 3440
    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    #@b
    const-string/jumbo v8, "ctl"

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@11
    move-result-object v7

    #@12
    .line 3439
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@15
    move-result-wide v6

    #@16
    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@18
    .line 3441
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@1a
    .line 3442
    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    #@1c
    const-string/jumbo v8, "runState"

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@22
    move-result-object v7

    #@23
    .line 3441
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@26
    move-result-wide v6

    #@27
    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    #@29
    .line 3443
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@2b
    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    #@2d
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@30
    move-result v6

    #@31
    sput v6, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@33
    .line 3444
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@35
    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    #@37
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@3a
    move-result v5

    #@3b
    .line 3445
    .local v5, "scale":I
    add-int/lit8 v6, v5, -0x1

    #@3d
    and-int/2addr v6, v5

    #@3e
    if-eqz v6, :cond_0

    #@40
    .line 3446
    new-instance v6, Ljava/lang/Error;

    #@42
    const-string/jumbo v7, "array index scale not a power of two"

    #@45
    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@48
    throw v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 3448
    :catch_0
    move-exception v1

    #@4a
    .line 3449
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v6, Ljava/lang/Error;

    #@4c
    invoke-direct {v6, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@4f
    throw v6

    #@50
    .line 3447
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@53
    move-result v6

    #@54
    rsub-int/lit8 v6, v6, 0x1f

    #@56
    sput v6, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@58
    .line 3454
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    #@5a
    .line 3456
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x100

    #@5c
    .line 3459
    .local v0, "commonMaxSpares":I
    :try_start_2
    const-string/jumbo v6, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    #@5f
    .line 3458
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 3460
    .local v4, "p":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@65
    .line 3461
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@68
    move-result v0

    #@69
    .line 3463
    .end local v4    # "p":Ljava/lang/String;
    :cond_1
    :goto_0
    sput v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    #@6b
    .line 3466
    new-instance v6, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    #@6d
    invoke-direct {v6, v9}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;)V

    #@70
    .line 3465
    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@72
    .line 3467
    new-instance v6, Ljava/lang/RuntimePermission;

    #@74
    const-string/jumbo v7, "modifyThread"

    #@77
    invoke-direct {v6, v7}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@7a
    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@7c
    .line 3470
    new-instance v6, Ljava/util/concurrent/ForkJoinPool$1;

    #@7e
    invoke-direct {v6}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    #@81
    .line 3469
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Ljava/util/concurrent/ForkJoinPool;

    #@87
    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@89
    .line 3474
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@8b
    iget v6, v6, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@8d
    const v7, 0xffff

    #@90
    and-int/2addr v6, v7

    #@91
    const/4 v7, 0x1

    #@92
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@95
    move-result v6

    #@96
    sput v6, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    #@98
    .line 137
    return-void

    #@99
    .line 3462
    :catch_1
    move-exception v3

    #@9a
    .local v3, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 2588
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x7fff

    #@a
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 2589
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x0

    #@12
    .line 2588
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@15
    .line 2587
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    #@0
    .prologue
    .line 2607
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@7
    .line 2606
    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 8
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "mode"    # I
    .param p5, "workerNamePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2664
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    #@3
    .line 2669
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    #@5
    .line 2670
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@7
    .line 2671
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@9
    .line 2672
    const v2, 0xffff

    #@c
    and-int/2addr v2, p1

    #@d
    or-int/2addr v2, p4

    #@e
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@10
    .line 2673
    neg-int v2, p1

    #@11
    int-to-long v0, v2

    #@12
    .line 2674
    .local v0, "np":J
    const/16 v2, 0x30

    #@14
    shl-long v2, v0, v2

    #@16
    const-wide/high16 v4, -0x1000000000000L

    #@18
    and-long/2addr v2, v4

    #@19
    const/16 v4, 0x20

    #@1b
    shl-long v4, v0, v4

    #@1d
    const-wide v6, 0xffff00000000L

    #@22
    and-long/2addr v4, v6

    #@23
    or-long/2addr v2, v4

    #@24
    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@26
    .line 2668
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    #@0
    .prologue
    .line 2638
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    #@3
    move-result v1

    #@4
    .line 2639
    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@7
    move-result-object v2

    #@8
    .line 2641
    if-eqz p4, :cond_0

    #@a
    const/high16 v4, -0x80000000

    #@c
    .line 2642
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "ForkJoinPool-"

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v3, "-worker-"

    #@23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    move-object v0, p0

    #@2c
    move-object v3, p3

    #@2d
    .line 2638
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    #@30
    .line 2643
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@33
    .line 2637
    return-void

    #@34
    .line 2641
    :cond_0
    const/4 v4, 0x0

    #@35
    goto :goto_0
.end method

.method private awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I
    .locals 8
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 1769
    const/4 v2, 0x0

    #@3
    .line 1770
    .local v2, "stat":I
    if-eqz p1, :cond_0

    #@5
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@7
    if-gez v3, :cond_0

    #@9
    .line 1771
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@b
    .line 1772
    .local v0, "c":J
    const/16 v3, 0x30

    #@d
    shr-long v4, v0, v3

    #@f
    long-to-int v3, v4

    #@10
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@12
    const v5, 0xffff

    #@15
    and-int/2addr v4, v5

    #@16
    add-int/2addr v3, v4

    #@17
    if-gtz v3, :cond_1

    #@19
    .line 1773
    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I

    #@1c
    move-result v2

    #@1d
    .line 1787
    .end local v0    # "c":J
    :cond_0
    :goto_0
    return v2

    #@1e
    .line 1774
    .restart local v0    # "c":J
    :cond_1
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@20
    and-int/lit8 v3, v3, 0x2

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 1775
    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@26
    const/4 v2, -0x1

    #@27
    goto :goto_0

    #@28
    .line 1776
    :cond_2
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@2a
    if-gez v3, :cond_0

    #@2c
    .line 1777
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2f
    move-result-object v3

    #@30
    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@32
    .line 1778
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@34
    if-gez v3, :cond_3

    #@36
    .line 1779
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@39
    .line 1780
    :cond_3
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@3b
    .line 1781
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@3d
    and-int/lit8 v3, v3, 0x2

    #@3f
    if-eqz v3, :cond_4

    #@41
    .line 1782
    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@43
    const/4 v2, -0x1

    #@44
    goto :goto_0

    #@45
    .line 1783
    :cond_4
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@47
    if-gez v3, :cond_0

    #@49
    .line 1784
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@4c
    goto :goto_0
.end method

.method private static checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1
    .param p0, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@0
    .prologue
    .line 2654
    if-nez p0, :cond_0

    #@2
    .line 2655
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2656
    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1
    .param p0, "parallelism"    # I

    #@0
    .prologue
    .line 2647
    if-lez p0, :cond_0

    #@2
    const/16 v0, 0x7fff

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 2648
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 2649
    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    #@0
    .prologue
    .line 659
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 660
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 661
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 658
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    .prologue
    .line 2692
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2542
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@3
    .line 2543
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@6
    move-result v1

    #@7
    .line 2545
    .local v1, "r":I
    if-eqz v0, :cond_0

    #@9
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@d
    .line 2546
    array-length v2, v3

    #@e
    .local v2, "wl":I
    if-lez v2, :cond_0

    #@10
    .line 2547
    add-int/lit8 v4, v2, -0x1

    #@12
    and-int/2addr v4, v1

    #@13
    and-int/lit8 v4, v4, 0x7e

    #@15
    aget-object v4, v3, v4

    #@17
    .line 2545
    .end local v2    # "wl":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    return-object v4
.end method

.method private createWorker(Z)Z
    .locals 7
    .param p1, "isSpare"    # Z

    #@0
    .prologue
    .line 1512
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@2
    .line 1513
    .local v1, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v0, 0x0

    #@3
    .line 1514
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x0

    #@4
    .line 1517
    .local v4, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v1, :cond_1

    #@6
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    #@9
    move-result-object v4

    #@a
    .local v4, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v4, :cond_1

    #@c
    .line 1518
    if-eqz p1, :cond_0

    #@e
    iget-object v2, v4, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@10
    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@12
    .line 1519
    iget v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@14
    const/high16 v6, 0x20000

    #@16
    or-int/2addr v5, v6

    #@17
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@19
    .line 1520
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1521
    const/4 v5, 0x1

    #@1d
    return v5

    #@1e
    .line 1523
    .end local v4    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v3

    #@1f
    .line 1524
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v0, v3

    #@20
    .line 1526
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "rex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@23
    .line 1527
    const/4 v5, 0x0

    #@24
    return v5
.end method

.method private externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2527
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 2528
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 2529
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@e
    if-eqz v3, :cond_1

    #@10
    move-object v2, v1

    #@11
    .line 2530
    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@13
    .local v2, "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@15
    if-ne v3, p0, :cond_1

    #@17
    .line 2531
    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@19
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_1

    #@1b
    .line 2532
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    #@1e
    .line 2535
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object p1

    #@1f
    .line 2534
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@22
    goto :goto_0
.end method

.method private findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2238
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    #@4
    move-result v8

    #@5
    .line 2239
    .local v8, "r":I
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@7
    .local v10, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_3

    #@9
    array-length v9, v10

    #@a
    .local v9, "wl":I
    if-lez v9, :cond_3

    #@c
    .line 2240
    add-int/lit8 v3, v9, -0x1

    #@e
    .local v3, "m":I
    and-int v6, v8, v3

    #@10
    .line 2241
    .local v6, "origin":I
    move v2, v6

    #@11
    .local v2, "k":I
    const/4 v4, 0x0

    #@12
    .local v4, "oldSum":I
    const/4 v1, 0x0

    #@13
    .line 2243
    .local v1, "checkSum":I
    :cond_0
    :goto_0
    aget-object v7, v10, v2

    #@15
    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_2

    #@17
    .line 2244
    iget v0, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@19
    .local v0, "b":I
    iget v11, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@1b
    sub-int v11, v0, v11

    #@1d
    if-gez v11, :cond_1

    #@1f
    .line 2245
    return-object v7

    #@20
    .line 2246
    :cond_1
    add-int/2addr v1, v0

    #@21
    .line 2248
    .end local v0    # "b":I
    :cond_2
    add-int/lit8 v11, v2, 0x1

    #@23
    and-int v2, v11, v3

    #@25
    if-ne v2, v6, :cond_0

    #@27
    .line 2249
    move v5, v1

    #@28
    .end local v4    # "oldSum":I
    .local v5, "oldSum":I
    if-ne v4, v1, :cond_4

    #@2a
    .line 2255
    .end local v1    # "checkSum":I
    .end local v2    # "k":I
    .end local v3    # "m":I
    .end local v5    # "oldSum":I
    .end local v6    # "origin":I
    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "wl":I
    :cond_3
    return-object v12

    #@2b
    .line 2251
    .restart local v1    # "checkSum":I
    .restart local v2    # "k":I
    .restart local v3    # "m":I
    .restart local v5    # "oldSum":I
    .restart local v6    # "origin":I
    .restart local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "wl":I
    :cond_4
    const/4 v1, 0x0

    #@2c
    move v4, v5

    #@2d
    .end local v5    # "oldSum":I
    .restart local v4    # "oldSum":I
    goto :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    #@0
    .prologue
    .line 2861
    sget v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    #@2
    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v5

    #@5
    .local v5, "t":Ljava/lang/Thread;
    instance-of v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@7
    if-eqz v8, :cond_4

    #@9
    move-object v6, v5

    #@a
    .line 2358
    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@c
    .local v6, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@e
    .local v3, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget v8, v3, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@10
    const v9, 0xffff

    #@13
    and-int v2, v8, v9

    #@15
    .line 2359
    .local v2, "p":I
    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@17
    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@19
    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@1b
    sub-int v1, v8, v9

    #@1d
    .line 2360
    .local v1, "n":I
    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@1f
    const/16 v10, 0x30

    #@21
    shr-long/2addr v8, v10

    #@22
    long-to-int v8, v8

    #@23
    add-int v0, v8, v2

    #@25
    .line 2361
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    #@27
    if-le v0, v2, :cond_0

    #@29
    :goto_0
    sub-int v7, v1, v7

    #@2b
    return v7

    #@2c
    .line 2362
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    #@2e
    if-le v0, v2, :cond_1

    #@30
    const/4 v7, 0x1

    #@31
    goto :goto_0

    #@32
    .line 2363
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    #@34
    if-le v0, v2, :cond_2

    #@36
    const/4 v7, 0x2

    #@37
    goto :goto_0

    #@38
    .line 2364
    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    #@3a
    if-le v0, v2, :cond_3

    #@3c
    const/4 v7, 0x4

    #@3d
    goto :goto_0

    #@3e
    .line 2365
    :cond_3
    const/16 v7, 0x8

    #@40
    goto :goto_0

    #@41
    .line 2367
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    return v7
.end method

.method private helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 32
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2063
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p2, :cond_3

    #@2
    if-eqz p1, :cond_3

    #@4
    .line 2064
    move-object/from16 v0, p1

    #@6
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@8
    move-object/from16 v21, v0

    #@a
    .line 2065
    .local v21, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v19, 0x0

    #@c
    .line 2066
    .local v19, "oldSum":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_3

    #@12
    move-object/from16 v0, p2

    #@14
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@16
    if-ltz v2, :cond_3

    #@18
    .line 2067
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@1c
    move-object/from16 v26, v0

    #@1e
    .local v26, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v26, :cond_3

    #@20
    move-object/from16 v0, v26

    #@22
    array-length v0, v0

    #@23
    move/from16 v25, v0

    #@25
    .local v25, "wl":I
    if-lez v25, :cond_3

    #@27
    .line 2069
    add-int/lit8 v17, v25, -0x1

    #@29
    .local v17, "m":I
    const/4 v11, 0x0

    #@2a
    .line 2070
    .local v11, "checkSum":I
    move-object/from16 v15, p1

    #@2c
    .line 2071
    .local v15, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v22, p2

    #@2e
    .local v22, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_1
    move-object/from16 v0, v22

    #@30
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@32
    if-ltz v2, :cond_0

    #@34
    .line 2072
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@36
    or-int/lit8 v12, v2, 0x1

    #@38
    .local v12, "h":I
    const/16 v16, 0x0

    #@3a
    .line 2073
    .local v16, "k":I
    :cond_1
    shl-int/lit8 v2, v16, 0x1

    #@3c
    add-int/2addr v2, v12

    #@3d
    and-int v13, v2, v17

    #@3f
    .local v13, "i":I
    aget-object v24, v26, v13

    #@41
    .local v24, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_5

    #@43
    .line 2074
    move-object/from16 v0, v24

    #@45
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@47
    move-object/from16 v0, v22

    #@49
    if-ne v2, v0, :cond_4

    #@4b
    .line 2075
    iput v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@4d
    .line 2086
    :cond_2
    move-object/from16 v0, v22

    #@4f
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@51
    if-ltz v2, :cond_0

    #@53
    .line 2088
    move-object/from16 v0, v24

    #@55
    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@57
    .local v9, "b":I
    add-int/2addr v11, v9

    #@58
    .line 2089
    move-object/from16 v0, v24

    #@5a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@5c
    move-object/from16 v18, v0

    #@5e
    .line 2090
    .local v18, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v6, 0x0

    #@5f
    .line 2091
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v24

    #@61
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@63
    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    #@65
    array-length v8, v3

    #@66
    .local v8, "al":I
    if-lez v8, :cond_7

    #@68
    .line 2092
    add-int/lit8 v2, v8, -0x1

    #@6a
    and-int v14, v2, v9

    #@6c
    .line 2093
    .local v14, "index":I
    int-to-long v0, v14

    #@6d
    move-wide/from16 v28, v0

    #@6f
    sget v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@71
    shl-long v28, v28, v2

    #@73
    sget v2, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@75
    int-to-long v0, v2

    #@76
    move-wide/from16 v30, v0

    #@78
    add-long v4, v28, v30

    #@7a
    .line 2095
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@7c
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@7f
    move-result-object v6

    #@80
    .line 2094
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    #@82
    .line 2096
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_7

    #@84
    add-int/lit8 v10, v9, 0x1

    #@86
    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, v24

    #@88
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@8a
    if-ne v9, v2, :cond_6

    #@8c
    .line 2097
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@8e
    move-object/from16 v0, v22

    #@90
    if-ne v2, v0, :cond_0

    #@92
    .line 2098
    move-object/from16 v0, v24

    #@94
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@96
    move-object/from16 v0, v22

    #@98
    if-ne v2, v0, :cond_0

    #@9a
    .line 2099
    move-object/from16 v0, v22

    #@9c
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@9e
    if-ltz v2, :cond_0

    #@a0
    .line 2101
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a2
    const/4 v7, 0x0

    #@a3
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_b

    #@a9
    .line 2102
    move-object/from16 v0, v24

    #@ab
    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@ad
    .line 2103
    move-object/from16 v0, p1

    #@af
    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@b1
    .line 2104
    move-object/from16 v0, p1

    #@b3
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@b5
    move/from16 v23, v0

    #@b7
    .line 2105
    .local v23, "top":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@ba
    .line 2106
    move-object/from16 v0, v21

    #@bc
    move-object/from16 v1, p1

    #@be
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@c0
    .line 2107
    move-object/from16 v0, p2

    #@c2
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@c4
    if-gez v2, :cond_8

    #@c6
    .line 2062
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v11    # "checkSum":I
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v15    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "k":I
    .end local v17    # "m":I
    .end local v18    # "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v19    # "oldSum":I
    .end local v21    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v22    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v23    # "top":I
    .end local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v25    # "wl":I
    .end local v26    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    :goto_3
    return-void

    #@c7
    .line 2078
    .restart local v11    # "checkSum":I
    .restart local v12    # "h":I
    .restart local v13    # "i":I
    .restart local v15    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v16    # "k":I
    .restart local v17    # "m":I
    .restart local v19    # "oldSum":I
    .restart local v21    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v22    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v25    # "wl":I
    .restart local v26    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v0, v24

    #@c9
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@cb
    add-int/2addr v11, v2

    #@cc
    .line 2080
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@ce
    move/from16 v0, v16

    #@d0
    move/from16 v1, v17

    #@d2
    if-le v0, v1, :cond_1

    #@d4
    goto :goto_3

    #@d5
    .restart local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    .restart local v18    # "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    move v9, v10

    #@d6
    .line 2118
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v14    # "index":I
    .restart local v9    # "b":I
    :cond_7
    :goto_4
    if-nez v6, :cond_2

    #@d8
    move-object/from16 v0, v24

    #@da
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@dc
    if-ne v9, v2, :cond_2

    #@de
    move-object/from16 v0, v24

    #@e0
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@e2
    sub-int v2, v9, v2

    #@e4
    if-ltz v2, :cond_2

    #@e6
    .line 2119
    move-object/from16 v22, v18

    #@e8
    if-nez v18, :cond_a

    #@ea
    .line 2120
    move-object/from16 v0, v24

    #@ec
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@ee
    move-object/from16 v0, v18

    #@f0
    if-ne v0, v2, :cond_0

    #@f2
    .line 2121
    move/from16 v20, v11

    #@f4
    .end local v19    # "oldSum":I
    .local v20, "oldSum":I
    move/from16 v0, v19

    #@f6
    if-eq v0, v11, :cond_3

    #@f8
    move/from16 v19, v20

    #@fa
    .line 2122
    .end local v20    # "oldSum":I
    .restart local v19    # "oldSum":I
    goto/16 :goto_0

    #@fc
    .line 2109
    .end local v9    # "b":I
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    .restart local v23    # "top":I
    :cond_8
    move-object/from16 v0, p1

    #@fe
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@100
    move/from16 v0, v23

    #@102
    if-ne v2, v0, :cond_9

    #@104
    move v9, v10

    #@105
    .line 2110
    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_4

    #@106
    .line 2111
    .end local v9    # "b":I
    .restart local v10    # "b":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    #@109
    move-result-object v6

    #@10a
    if-eqz v6, :cond_0

    #@10c
    .line 2113
    move-object/from16 v0, p1

    #@10e
    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@110
    goto :goto_2

    #@111
    .line 2125
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v14    # "index":I
    .end local v23    # "top":I
    .restart local v9    # "b":I
    :cond_a
    move-object/from16 v15, v24

    #@113
    .line 2126
    goto/16 :goto_1

    #@115
    .end local v9    # "b":I
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    :cond_b
    move v9, v10

    #@116
    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_4
.end method

.method private inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 11
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ss"    # I

    #@0
    .prologue
    .line 1748
    const/high16 v0, 0x10000

    #@2
    add-int/2addr v0, p2

    #@3
    const/high16 v1, -0x80000000

    #@5
    or-int v10, v0, v1

    #@7
    .line 1749
    .local v10, "ns":I
    int-to-long v0, v10

    #@8
    const-wide v2, 0xffffffffL

    #@d
    and-long v8, v0, v2

    #@f
    .line 1750
    .local v8, "lc":J
    if-eqz p1, :cond_1

    #@11
    .line 1751
    iput v10, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@13
    .line 1753
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@15
    .local v4, "c":J
    const-wide/high16 v0, 0x1000000000000L

    #@17
    sub-long v0, v4, v0

    #@19
    const-wide v2, -0x100000000L

    #@1e
    and-long/2addr v0, v2

    #@1f
    or-long v6, v8, v0

    #@21
    .line 1754
    .local v6, "nc":J
    long-to-int v0, v4

    #@22
    iput v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@24
    .line 1755
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@26
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@28
    move-object v1, p0

    #@29
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 1747
    .end local v4    # "c":J
    .end local v6    # "nc":J
    :cond_1
    return-void
.end method

.method static makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 3482
    const/4 v2, -0x1

    #@3
    .line 3483
    .local v2, "parallelism":I
    const/4 v3, 0x0

    #@4
    .line 3484
    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v4, 0x0

    #@5
    .line 3487
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    #@8
    .line 3486
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v10

    #@c
    .line 3489
    .local v10, "pp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    #@f
    .line 3488
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    .line 3491
    .local v7, "fp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    #@16
    .line 3490
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 3492
    .local v8, "hp":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@1c
    .line 3493
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    .line 3494
    :cond_0
    if-eqz v7, :cond_1

    #@22
    .line 3495
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    move-object v0, v1

    #@2f
    check-cast v0, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@31
    move-object v3, v0

    #@32
    .line 3497
    .end local v3    # "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :cond_1
    if-eqz v8, :cond_2

    #@34
    .line 3498
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    move-object v0, v1

    #@41
    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    #@43
    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 3502
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v7    # "fp":Ljava/lang/String;
    .end local v8    # "hp":Ljava/lang/String;
    .end local v10    # "pp":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    #@46
    .line 3503
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@49
    move-result-object v1

    #@4a
    if-nez v1, :cond_6

    #@4c
    .line 3504
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@4e
    .line 3508
    :cond_3
    :goto_1
    if-gez v2, :cond_4

    #@50
    .line 3509
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@57
    move-result v1

    #@58
    add-int/lit8 v2, v1, -0x1

    #@5a
    if-gtz v2, :cond_4

    #@5c
    .line 3510
    const/4 v2, 0x1

    #@5d
    .line 3511
    :cond_4
    const/16 v1, 0x7fff

    #@5f
    if-le v2, v1, :cond_5

    #@61
    .line 3512
    const/16 v2, 0x7fff

    #@63
    .line 3513
    :cond_5
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    #@65
    .line 3514
    const-string/jumbo v6, "ForkJoinPool.commonPool-worker-"

    #@68
    .line 3513
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    #@6b
    return-object v1

    #@6c
    .line 3506
    :cond_6
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    #@6e
    invoke-direct {v3, v6}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;)V

    #@71
    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    goto :goto_1

    #@72
    .line 3500
    .end local v3    # "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catch_0
    move-exception v9

    #@73
    .local v9, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 10
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v4, 0x1000000000000L

    #@2
    .line 3396
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v6

    #@6
    .line 3397
    .local v6, "t":Ljava/lang/Thread;
    instance-of v0, v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@8
    if-eqz v0, :cond_4

    #@a
    move-object v8, v6

    #@b
    .line 3398
    check-cast v8, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@d
    .local v8, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@f
    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_4

    #@11
    .line 3399
    iget-object v7, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@13
    .line 3400
    .local v7, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_3

    #@19
    .line 3401
    invoke-direct {v1, v7}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 3403
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2

    #@25
    .line 3404
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 3406
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@2d
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@2f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@32
    .line 3393
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    :goto_0
    return-void

    #@33
    .line 3405
    .restart local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catchall_0
    move-exception v0

    #@34
    move-object v9, v0

    #@35
    .line 3406
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@37
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@39
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@3c
    .line 3405
    throw v9

    #@3d
    .line 3413
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_3

    #@43
    .line 3414
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_4

    #@49
    goto :goto_0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/concurrent/ForkJoinPool;

    #@2
    monitor-enter v1

    #@3
    .line 1381
    :try_start_0
    sget v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    sput v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    #@0
    .prologue
    .line 3289
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    const-wide v2, 0x7fffffffffffffffL

    #@9
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    #@c
    .line 3288
    return-void
.end method

.method private scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I
    .locals 28
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "bound"    # I
    .param p3, "step"    # I
    .param p4, "r"    # I

    #@0
    .prologue
    .line 1933
    const/16 v20, 0x0

    #@2
    .line 1934
    .local v20, "stat":I
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@6
    move-object/from16 v22, v0

    #@8
    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    #@a
    if-eqz p1, :cond_1

    #@c
    move-object/from16 v0, v22

    #@e
    array-length v0, v0

    #@f
    move/from16 v21, v0

    #@11
    .local v21, "wl":I
    if-lez v21, :cond_1

    #@13
    .line 1935
    add-int/lit8 v15, v21, -0x1

    #@15
    .line 1936
    .local v15, "m":I
    and-int v17, v15, p4

    #@17
    .local v17, "origin":I
    move/from16 v13, v17

    #@19
    .line 1937
    .local v13, "idx":I
    const/16 v16, 0x0

    #@1b
    .line 1938
    .local v16, "npolls":I
    move-object/from16 v0, p1

    #@1d
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@1f
    move/from16 v19, v0

    #@21
    .line 1940
    .local v19, "ss":I
    :cond_0
    :goto_0
    aget-object v18, v22, v13

    #@23
    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_5

    #@25
    move-object/from16 v0, v18

    #@27
    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@29
    .local v11, "b":I
    move-object/from16 v0, v18

    #@2b
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@2d
    sub-int v4, v11, v4

    #@2f
    if-gez v4, :cond_5

    #@31
    .line 1941
    move-object/from16 v0, v18

    #@33
    iget-object v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@35
    .local v5, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_5

    #@37
    array-length v10, v5

    #@38
    .local v10, "al":I
    if-lez v10, :cond_5

    #@3a
    .line 1942
    add-int/lit8 v4, v10, -0x1

    #@3c
    and-int v14, v4, v11

    #@3e
    .line 1943
    .local v14, "index":I
    int-to-long v0, v14

    #@3f
    move-wide/from16 v24, v0

    #@41
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@43
    shl-long v24, v24, v4

    #@45
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@47
    int-to-long v0, v4

    #@48
    move-wide/from16 v26, v0

    #@4a
    add-long v6, v24, v26

    #@4c
    .line 1945
    .local v6, "offset":J
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@4e
    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    .line 1944
    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    #@54
    .line 1946
    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v8, :cond_2

    #@56
    .line 1982
    .end local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "al":I
    .end local v11    # "b":I
    .end local v13    # "idx":I
    .end local v14    # "index":I
    .end local v15    # "m":I
    .end local v16    # "npolls":I
    .end local v17    # "origin":I
    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "ss":I
    .end local v21    # "wl":I
    :cond_1
    :goto_1
    return v20

    #@57
    .line 1948
    .restart local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "offset":J
    .restart local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v10    # "al":I
    .restart local v11    # "b":I
    .restart local v13    # "idx":I
    .restart local v14    # "index":I
    .restart local v15    # "m":I
    .restart local v16    # "npolls":I
    .restart local v17    # "origin":I
    .restart local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "ss":I
    .restart local v21    # "wl":I
    :cond_2
    add-int/lit8 v12, v11, 0x1

    #@59
    .end local v11    # "b":I
    .local v12, "b":I
    move-object/from16 v0, v18

    #@5b
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@5d
    if-ne v11, v4, :cond_1

    #@5f
    .line 1950
    if-gez v19, :cond_3

    #@61
    .line 1951
    move-object/from16 v0, p0

    #@63
    move-object/from16 v1, p1

    #@65
    move-object/from16 v2, v22

    #@67
    move/from16 v3, p4

    #@69
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    #@6c
    goto :goto_1

    #@6d
    .line 1954
    :cond_3
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@6f
    const/4 v9, 0x0

    #@70
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@73
    move-result v4

    #@74
    if-eqz v4, :cond_1

    #@76
    .line 1957
    move-object/from16 v0, v18

    #@78
    iput v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@7a
    .line 1958
    move-object/from16 v0, p1

    #@7c
    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@7e
    .line 1959
    move-object/from16 v0, v18

    #@80
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@82
    if-eq v12, v4, :cond_4

    #@84
    .line 1960
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    #@87
    .line 1961
    :cond_4
    move-object/from16 v0, p1

    #@89
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    #@8c
    .line 1962
    add-int/lit8 v16, v16, 0x1

    #@8e
    move/from16 v0, v16

    #@90
    move/from16 v1, p2

    #@92
    if-le v0, v1, :cond_0

    #@94
    goto :goto_1

    #@95
    .line 1966
    .end local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "al":I
    .end local v12    # "b":I
    .end local v14    # "index":I
    :cond_5
    if-nez v16, :cond_1

    #@97
    .line 1968
    add-int v4, v13, p3

    #@99
    and-int v13, v4, v15

    #@9b
    move/from16 v0, v17

    #@9d
    if-ne v13, v0, :cond_0

    #@9f
    .line 1969
    if-gez v19, :cond_6

    #@a1
    .line 1970
    move/from16 v20, v19

    #@a3
    .line 1971
    goto :goto_1

    #@a4
    .line 1973
    :cond_6
    if-ltz p4, :cond_7

    #@a6
    .line 1974
    move-object/from16 v0, p0

    #@a8
    move-object/from16 v1, p1

    #@aa
    move/from16 v2, v19

    #@ac
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    #@af
    goto :goto_1

    #@b0
    .line 1978
    :cond_7
    shl-int/lit8 p4, p4, 0x1

    #@b2
    goto/16 :goto_0
.end method

.method private timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I
    .locals 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J

    #@0
    .prologue
    .line 1801
    const/16 v17, 0x0

    #@2
    .line 1802
    .local v17, "stat":I
    const/16 v2, 0x20

    #@4
    ushr-long v2, p2, v2

    #@6
    long-to-int v2, v2

    #@7
    int-to-short v2, v2

    #@8
    rsub-int/lit8 v15, v2, 0x1

    #@a
    .line 1803
    .local v15, "scale":I
    if-gtz v15, :cond_0

    #@c
    const/4 v15, 0x1

    #@d
    .end local v15    # "scale":I
    :cond_0
    int-to-long v2, v15

    #@e
    const-wide/16 v4, 0x7d0

    #@10
    mul-long/2addr v2, v4

    #@11
    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14
    move-result-wide v4

    #@15
    .line 1803
    add-long v12, v2, v4

    #@17
    .line 1805
    .local v12, "deadline":J
    move-object/from16 v0, p0

    #@19
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@1b
    if-gez v2, :cond_1

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x0

    #@1f
    move-object/from16 v0, p0

    #@21
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    #@24
    move-result v17

    #@25
    if-lez v17, :cond_3

    #@27
    .line 1806
    :cond_1
    if-eqz p1, :cond_3

    #@29
    move-object/from16 v0, p1

    #@2b
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@2d
    if-gez v2, :cond_3

    #@2f
    .line 1808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, p1

    #@35
    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@37
    .line 1809
    move-object/from16 v0, p1

    #@39
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@3b
    if-gez v2, :cond_2

    #@3d
    .line 1810
    move-object/from16 v0, p0

    #@3f
    invoke-static {v0, v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    #@42
    .line 1811
    :cond_2
    const/4 v2, 0x0

    #@43
    move-object/from16 v0, p1

    #@45
    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@47
    .line 1812
    move-object/from16 v0, p0

    #@49
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@4b
    and-int/lit8 v2, v2, 0x2

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 1813
    const/4 v2, -0x1

    #@50
    move-object/from16 v0, p1

    #@52
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@54
    const/16 v17, -0x1

    #@56
    .line 1836
    :cond_3
    :goto_0
    return v17

    #@57
    .line 1814
    :cond_4
    move-object/from16 v0, p1

    #@59
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@5b
    move/from16 v16, v0

    #@5d
    .local v16, "ss":I
    if-gez v16, :cond_3

    #@5f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_3

    #@65
    .line 1815
    move-wide/from16 v0, p2

    #@67
    long-to-int v2, v0

    #@68
    move/from16 v0, v16

    #@6a
    if-ne v2, v0, :cond_3

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@70
    .local v10, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v10, :cond_3

    #@72
    move-object/from16 v0, p0

    #@74
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@76
    cmp-long v2, v2, p2

    #@78
    if-nez v2, :cond_3

    #@7a
    .line 1816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7d
    move-result-wide v2

    #@7e
    sub-long v2, v12, v2

    #@80
    const-wide/16 v4, 0x14

    #@82
    cmp-long v2, v2, v4

    #@84
    if-gtz v2, :cond_3

    #@86
    .line 1817
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    #@89
    .line 1820
    :try_start_0
    move-object/from16 v0, p1

    #@8b
    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@8d
    .local v11, "cfg":I
    const v2, 0xffff

    #@90
    and-int v14, v11, v2

    #@92
    .line 1821
    .local v14, "idx":I
    const-wide v2, 0x100000000L

    #@97
    sub-long v2, p2, v2

    #@99
    const-wide v4, -0x100000000L

    #@9e
    and-long/2addr v2, v4

    #@9f
    .line 1822
    move-object/from16 v0, p1

    #@a1
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@a3
    int-to-long v4, v4

    #@a4
    const-wide v6, 0xffffffffL

    #@a9
    and-long/2addr v4, v6

    #@aa
    .line 1821
    or-long v8, v2, v4

    #@ac
    .line 1823
    .local v8, "nc":J
    move-object/from16 v0, p0

    #@ae
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@b0
    and-int/lit8 v2, v2, 0x2

    #@b2
    if-nez v2, :cond_5

    #@b4
    .line 1824
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b8
    move-object/from16 v18, v0

    #@ba
    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_5

    #@bc
    .line 1825
    move-object/from16 v0, v18

    #@be
    array-length v2, v0

    #@bf
    if-ge v14, v2, :cond_5

    #@c1
    if-ltz v14, :cond_5

    #@c3
    aget-object v2, v18, v14

    #@c5
    move-object/from16 v0, p1

    #@c7
    if-ne v2, v0, :cond_5

    #@c9
    .line 1826
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@cb
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@cd
    move-object/from16 v3, p0

    #@cf
    move-wide/from16 v6, p2

    #@d1
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@d4
    move-result v2

    #@d5
    .line 1823
    if-eqz v2, :cond_5

    #@d7
    .line 1827
    const/4 v2, 0x0

    #@d8
    aput-object v2, v18, v14

    #@da
    .line 1828
    const/high16 v2, 0x40000

    #@dc
    or-int/2addr v2, v11

    #@dd
    move-object/from16 v0, p1

    #@df
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@e1
    .line 1829
    const/4 v2, -0x1

    #@e2
    move-object/from16 v0, p1

    #@e4
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e6
    const/16 v17, -0x1

    #@e8
    .line 1832
    .end local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@eb
    goto/16 :goto_0

    #@ed
    .line 1831
    .end local v8    # "nc":J
    .end local v11    # "cfg":I
    .end local v14    # "idx":I
    :catchall_0
    move-exception v2

    #@ee
    .line 1832
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@f1
    .line 1831
    throw v2
.end method

.method private tryAddWorker(J)V
    .locals 9
    .param p1, "c"    # J

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1540
    :goto_0
    const-wide/high16 v0, 0x1000000000000L

    #@3
    add-long/2addr v0, p1

    #@4
    const-wide/high16 v2, -0x1000000000000L

    #@6
    and-long/2addr v0, v2

    #@7
    .line 1541
    const-wide v2, 0x100000000L

    #@c
    add-long/2addr v2, p1

    #@d
    const-wide v4, 0xffff00000000L

    #@12
    and-long/2addr v2, v4

    #@13
    .line 1540
    or-long v6, v0, v2

    #@15
    .line 1542
    .local v6, "nc":J
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@17
    cmp-long v0, v0, p1

    #@19
    if-nez v0, :cond_1

    #@1b
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@1d
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@1f
    move-object v1, p0

    #@20
    move-wide v4, p1

    #@21
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1543
    invoke-direct {p0, v8}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    #@2a
    .line 1538
    :cond_0
    return-void

    #@2b
    .line 1546
    :cond_1
    iget-wide p1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@2d
    const-wide v0, 0x800000000000L

    #@32
    and-long/2addr v0, p1

    #@33
    const-wide/16 v2, 0x0

    #@35
    cmp-long v0, v0, v2

    #@37
    if-eqz v0, :cond_0

    #@39
    long-to-int v0, p1

    #@3a
    if-nez v0, :cond_0

    #@3c
    goto :goto_0
.end method

.method private tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 27
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 2144
    move-object/from16 v0, p0

    #@2
    iget-wide v3, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .line 2145
    .local v3, "c":J
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    move-object/from16 v26, v0

    #@a
    .line 2146
    .local v26, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    #@c
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@e
    const v5, 0xffff

    #@11
    and-int v21, v2, v5

    #@13
    .line 2147
    .local v21, "pc":I
    const/16 v2, 0x30

    #@15
    shr-long v6, v3, v2

    #@17
    long-to-int v2, v6

    #@18
    add-int v14, v21, v2

    #@1a
    .line 2148
    .local v14, "ac":I
    const/16 v2, 0x20

    #@1c
    shr-long v6, v3, v2

    #@1e
    long-to-int v2, v6

    #@1f
    int-to-short v2, v2

    #@20
    add-int v23, v21, v2

    #@22
    .line 2149
    .local v23, "tc":I
    if-eqz p1, :cond_0

    #@24
    move-object/from16 v0, p1

    #@26
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@28
    if-gez v2, :cond_1

    #@2a
    .line 2151
    :cond_0
    const/16 v16, 0x0

    #@2c
    .line 2183
    :goto_0
    return v16

    #@2d
    .line 2149
    :cond_1
    if-eqz v21, :cond_0

    #@2f
    .line 2150
    if-eqz v26, :cond_0

    #@31
    move-object/from16 v0, v26

    #@33
    array-length v0, v0

    #@34
    move/from16 v25, v0

    #@36
    .local v25, "wl":I
    if-lez v25, :cond_0

    #@38
    .line 2153
    add-int/lit8 v20, v25, -0x1

    #@3a
    .line 2154
    .local v20, "m":I
    const/4 v15, 0x1

    #@3b
    .line 2155
    .local v15, "busy":Z
    const/16 v17, 0x0

    #@3d
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@3f
    move/from16 v1, v20

    #@41
    if-gt v0, v1, :cond_2

    #@43
    .line 2157
    shl-int/lit8 v2, v17, 0x1

    #@45
    or-int/lit8 v19, v2, 0x1

    #@47
    .local v19, "k":I
    move/from16 v0, v19

    #@49
    move/from16 v1, v20

    #@4b
    if-gt v0, v1, :cond_4

    #@4d
    if-ltz v19, :cond_4

    #@4f
    aget-object v24, v26, v19

    #@51
    .local v24, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_4

    #@53
    .line 2158
    move-object/from16 v0, v24

    #@55
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@57
    if-ltz v2, :cond_4

    #@59
    move-object/from16 v0, v24

    #@5b
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@5d
    if-nez v2, :cond_4

    #@5f
    .line 2159
    const/4 v15, 0x0

    #@60
    .line 2163
    .end local v19    # "k":I
    .end local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    if-eqz v15, :cond_3

    #@62
    move-object/from16 v0, p0

    #@64
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@66
    cmp-long v2, v6, v3

    #@68
    if-eqz v2, :cond_5

    #@6a
    .line 2164
    :cond_3
    const/16 v16, 0x0

    #@6c
    .local v16, "canBlock":Z
    goto :goto_0

    #@6d
    .line 2155
    .end local v16    # "canBlock":Z
    .restart local v19    # "k":I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 2165
    .end local v19    # "k":I
    :cond_5
    long-to-int v0, v3

    #@71
    move/from16 v22, v0

    #@73
    .local v22, "sp":I
    if-eqz v22, :cond_6

    #@75
    .line 2166
    and-int v2, v20, v22

    #@77
    aget-object v5, v26, v2

    #@79
    const-wide/16 v6, 0x0

    #@7b
    move-object/from16 v2, p0

    #@7d
    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    #@80
    move-result v16

    #@81
    .local v16, "canBlock":Z
    goto :goto_0

    #@82
    .line 2167
    .end local v16    # "canBlock":Z
    :cond_6
    move/from16 v0, v23

    #@84
    move/from16 v1, v21

    #@86
    if-lt v0, v1, :cond_7

    #@88
    const/4 v2, 0x1

    #@89
    if-le v14, v2, :cond_7

    #@8b
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_7

    #@91
    .line 2168
    const-wide/high16 v6, 0x1000000000000L

    #@93
    sub-long v6, v3, v6

    #@95
    const-wide/high16 v8, -0x1000000000000L

    #@97
    and-long/2addr v6, v8

    #@98
    .line 2169
    const-wide v8, 0xffffffffffffL

    #@9d
    and-long/2addr v8, v3

    #@9e
    .line 2168
    or-long v12, v6, v8

    #@a0
    .line 2170
    .local v12, "nc":J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a2
    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@a4
    move-object/from16 v7, p0

    #@a6
    move-wide v10, v3

    #@a7
    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@aa
    move-result v16

    #@ab
    .restart local v16    # "canBlock":Z
    goto :goto_0

    #@ac
    .line 2172
    .end local v12    # "nc":J
    .end local v16    # "canBlock":Z
    :cond_7
    const/16 v2, 0x7fff

    #@ae
    move/from16 v0, v23

    #@b0
    if-ge v0, v2, :cond_8

    #@b2
    .line 2173
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@b4
    move-object/from16 v0, p0

    #@b6
    if-ne v0, v2, :cond_9

    #@b8
    sget v2, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    #@ba
    add-int v2, v2, v21

    #@bc
    move/from16 v0, v23

    #@be
    if-lt v0, v2, :cond_9

    #@c0
    .line 2174
    :cond_8
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    #@c2
    .line 2175
    const-string/jumbo v5, "Thread limit exceeded replacing blocked worker"

    #@c5
    .line 2174
    invoke-direct {v2, v5}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v2

    #@c9
    .line 2177
    :cond_9
    move/from16 v0, v23

    #@cb
    move/from16 v1, v21

    #@cd
    if-lt v0, v1, :cond_a

    #@cf
    const/16 v18, 0x1

    #@d1
    .line 2178
    .local v18, "isSpare":Z
    :goto_2
    const-wide/high16 v6, -0x1000000000000L

    #@d3
    and-long/2addr v6, v3

    #@d4
    const-wide v8, 0x100000000L

    #@d9
    add-long/2addr v8, v3

    #@da
    const-wide v10, 0xffff00000000L

    #@df
    and-long/2addr v8, v10

    #@e0
    or-long v12, v6, v8

    #@e2
    .line 2179
    .restart local v12    # "nc":J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@e4
    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@e6
    move-object/from16 v7, p0

    #@e8
    move-wide v10, v3

    #@e9
    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@ec
    move-result v2

    #@ed
    if-eqz v2, :cond_b

    #@ef
    .line 2180
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, v18

    #@f3
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    #@f6
    move-result v16

    #@f7
    .restart local v16    # "canBlock":Z
    goto/16 :goto_0

    #@f9
    .line 2177
    .end local v12    # "nc":J
    .end local v16    # "canBlock":Z
    .end local v18    # "isSpare":Z
    :cond_a
    const/16 v18, 0x0

    #@fb
    .restart local v18    # "isSpare":Z
    goto :goto_2

    #@fc
    .line 2179
    .restart local v12    # "nc":J
    :cond_b
    const/16 v16, 0x0

    #@fe
    .local v16, "canBlock":Z
    goto/16 :goto_0
.end method

.method private tryCreateExternalQueue(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2461
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@4
    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_1

    #@6
    if-ltz p1, :cond_1

    #@8
    .line 2462
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@a
    invoke-direct {v2, p0, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    #@d
    .line 2463
    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iput p1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@f
    .line 2464
    const v4, 0x7fffffff

    #@12
    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@14
    .line 2465
    const/4 v4, 0x1

    #@15
    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@17
    .line 2466
    const/4 v1, 0x0

    #@18
    .line 2467
    .local v1, "installed":Z
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    #@1b
    .line 2470
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@1d
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@1f
    array-length v4, v3

    #@20
    if-ge p1, v4, :cond_0

    #@22
    .line 2471
    aget-object v4, v3, p1

    #@24
    if-nez v4, :cond_0

    #@26
    .line 2472
    aput-object v2, v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 2473
    const/4 v1, 0x1

    #@29
    .line 2476
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@2c
    .line 2478
    if-eqz v1, :cond_1

    #@2e
    .line 2480
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    .line 2482
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@33
    .line 2459
    .end local v1    # "installed":Z
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-void

    #@34
    .line 2475
    .restart local v1    # "installed":Z
    .restart local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    #@35
    .line 2476
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@38
    .line 2475
    throw v4

    #@39
    .line 2481
    .restart local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_1
    move-exception v4

    #@3a
    .line 2482
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@3c
    .line 2481
    throw v4
.end method

.method private tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 1848
    if-eqz p1, :cond_9

    #@2
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_9

    #@8
    .line 1850
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@c
    .local v6, "c":J
    const/16 v2, 0x20

    #@e
    shr-long v2, v6, v2

    #@10
    long-to-int v2, v2

    #@11
    int-to-short v2, v2

    #@12
    if-lez v2, :cond_9

    #@14
    .line 1851
    long-to-int v14, v6

    #@15
    .local v14, "sp":I
    if-nez v14, :cond_1

    #@17
    const/16 v2, 0x30

    #@19
    shr-long v2, v6, v2

    #@1b
    long-to-int v2, v2

    #@1c
    if-lez v2, :cond_9

    #@1e
    .line 1852
    :cond_1
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@22
    move-object/from16 v17, v0

    #@24
    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_9

    #@26
    move-object/from16 v0, v17

    #@28
    array-length v0, v0

    #@29
    move/from16 v16, v0

    #@2b
    .local v16, "wl":I
    if-lez v16, :cond_9

    #@2d
    .line 1854
    if-nez v14, :cond_3

    #@2f
    .line 1855
    const-wide/high16 v2, 0x1000000000000L

    #@31
    sub-long v2, v6, v2

    #@33
    const-wide/high16 v4, -0x1000000000000L

    #@35
    and-long/2addr v2, v4

    #@36
    .line 1856
    const-wide v4, 0x100000000L

    #@3b
    sub-long v4, v6, v4

    #@3d
    const-wide v18, 0xffff00000000L

    #@42
    and-long v4, v4, v18

    #@44
    .line 1855
    or-long/2addr v2, v4

    #@45
    .line 1856
    const-wide v4, 0xffffffffL

    #@4a
    and-long/2addr v4, v6

    #@4b
    .line 1855
    or-long v8, v2, v4

    #@4d
    .line 1857
    .local v8, "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@4f
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@51
    move-object/from16 v3, p0

    #@53
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@56
    move-result v12

    #@57
    .line 1882
    .end local v8    # "nc":J
    :goto_0
    if-eqz v12, :cond_0

    #@59
    .line 1883
    move-object/from16 v0, p1

    #@5b
    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@5d
    .local v11, "cfg":I
    const v2, 0xffff

    #@60
    and-int v13, v11, v2

    #@62
    .line 1884
    .local v13, "idx":I
    if-ltz v13, :cond_2

    #@64
    move-object/from16 v0, v17

    #@66
    array-length v2, v0

    #@67
    if-ge v13, v2, :cond_2

    #@69
    aget-object v2, v17, v13

    #@6b
    move-object/from16 v0, p1

    #@6d
    if-ne v2, v0, :cond_2

    #@6f
    .line 1885
    const/4 v2, 0x0

    #@70
    aput-object v2, v17, v13

    #@72
    .line 1886
    :cond_2
    const/high16 v2, 0x40000

    #@74
    or-int/2addr v2, v11

    #@75
    move-object/from16 v0, p1

    #@77
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@79
    .line 1887
    const/4 v2, -0x1

    #@7a
    move-object/from16 v0, p1

    #@7c
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@7e
    .line 1888
    const/4 v2, 0x1

    #@7f
    return v2

    #@80
    .line 1860
    .end local v11    # "cfg":I
    .end local v13    # "idx":I
    :cond_3
    add-int/lit8 v2, v16, -0x1

    #@82
    and-int/2addr v2, v14

    #@83
    aget-object v15, v17, v2

    #@85
    .local v15, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_4

    #@87
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@89
    if-eq v2, v14, :cond_5

    #@8b
    .line 1861
    :cond_4
    const/4 v12, 0x0

    #@8c
    .local v12, "dropped":Z
    goto :goto_0

    #@8d
    .line 1863
    .end local v12    # "dropped":Z
    :cond_5
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@8f
    int-to-long v2, v2

    #@90
    const-wide v4, 0xffffffffL

    #@95
    and-long v8, v2, v4

    #@97
    .line 1864
    .restart local v8    # "nc":J
    move-object/from16 v0, p1

    #@99
    if-eq v0, v15, :cond_6

    #@9b
    move-object/from16 v0, p1

    #@9d
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@9f
    if-ltz v2, :cond_7

    #@a1
    .line 1865
    :cond_6
    const/4 v10, 0x1

    #@a2
    .line 1866
    .local v10, "canDrop":Z
    const-wide/high16 v2, -0x1000000000000L

    #@a4
    and-long/2addr v2, v6

    #@a5
    .line 1867
    const-wide v4, 0x100000000L

    #@aa
    sub-long v4, v6, v4

    #@ac
    const-wide v18, 0xffff00000000L

    #@b1
    and-long v4, v4, v18

    #@b3
    .line 1866
    or-long/2addr v2, v4

    #@b4
    or-long/2addr v8, v2

    #@b5
    .line 1874
    :goto_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@b7
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@b9
    move-object/from16 v3, p0

    #@bb
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@be
    move-result v2

    #@bf
    if-eqz v2, :cond_8

    #@c1
    .line 1875
    const v2, 0x7fffffff

    #@c4
    and-int/2addr v2, v14

    #@c5
    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@c7
    .line 1876
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@c9
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@cc
    .line 1877
    move v12, v10

    #@cd
    .local v12, "dropped":Z
    goto :goto_0

    #@ce
    .line 1870
    .end local v10    # "canDrop":Z
    .end local v12    # "dropped":Z
    :cond_7
    const/4 v10, 0x0

    #@cf
    .line 1871
    .restart local v10    # "canDrop":Z
    const-wide/high16 v2, 0x1000000000000L

    #@d1
    add-long/2addr v2, v6

    #@d2
    const-wide/high16 v4, -0x1000000000000L

    #@d4
    and-long/2addr v2, v4

    #@d5
    .line 1872
    const-wide v4, 0xffff00000000L

    #@da
    and-long/2addr v4, v6

    #@db
    .line 1871
    or-long/2addr v2, v4

    #@dc
    or-long/2addr v8, v2

    #@dd
    goto :goto_1

    #@de
    .line 1880
    :cond_8
    const/4 v12, 0x0

    #@df
    .local v12, "dropped":Z
    goto/16 :goto_0

    #@e1
    .line 1892
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "canDrop":Z
    .end local v12    # "dropped":Z
    .end local v14    # "sp":I
    .end local v15    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "wl":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    const/4 v2, 0x0

    #@e2
    return v2
.end method

.method private tryInitialize(Z)V
    .locals 7
    .param p1, "checkTermination"    # Z

    #@0
    .prologue
    const v5, 0xffff

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 1476
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@7
    if-nez v4, :cond_2

    #@9
    .line 1477
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@b
    and-int v2, v4, v5

    #@d
    .line 1478
    .local v2, "p":I
    if-le v2, v1, :cond_0

    #@f
    add-int/lit8 v1, v2, -0x1

    #@11
    .line 1479
    .local v1, "n":I
    :cond_0
    ushr-int/lit8 v4, v1, 0x1

    #@13
    or-int/2addr v1, v4

    #@14
    .line 1480
    ushr-int/lit8 v4, v1, 0x2

    #@16
    or-int/2addr v1, v4

    #@17
    .line 1481
    ushr-int/lit8 v4, v1, 0x4

    #@19
    or-int/2addr v1, v4

    #@1a
    .line 1482
    ushr-int/lit8 v4, v1, 0x8

    #@1c
    or-int/2addr v1, v4

    #@1d
    .line 1483
    ushr-int/lit8 v4, v1, 0x10

    #@1f
    or-int/2addr v1, v4

    #@20
    .line 1484
    add-int/lit8 v4, v1, 0x1

    #@22
    shl-int/lit8 v4, v4, 0x1

    #@24
    and-int v1, v4, v5

    #@26
    .line 1485
    new-instance v0, Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@28
    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;-><init>()V

    #@2b
    .line 1486
    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    new-array v3, v1, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2d
    .line 1487
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@2f
    monitor-enter v5

    #@30
    .line 1488
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@32
    if-nez v4, :cond_1

    #@34
    .line 1489
    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@36
    .line 1490
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@38
    .line 1491
    const/4 v4, 0x1

    #@39
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :cond_1
    monitor-exit v5

    #@3c
    .line 1495
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    if-eqz p1, :cond_3

    #@3e
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@40
    if-gez v4, :cond_3

    #@42
    .line 1496
    invoke-direct {p0, v6, v6}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    #@45
    .line 1497
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    #@47
    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    #@4a
    throw v4

    #@4b
    .line 1487
    .restart local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v1    # "n":I
    .restart local v2    # "p":I
    .restart local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    #@4c
    monitor-exit v5

    #@4d
    throw v4

    #@4e
    .line 1475
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    return-void
.end method

.method private tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 16
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "r"    # I

    #@0
    .prologue
    .line 1726
    move-object/from16 v0, p0

    #@2
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .local v6, "c":J
    long-to-int v11, v6

    #@5
    .local v11, "sp":I
    if-eqz v11, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    .line 1727
    if-eqz p2, :cond_0

    #@b
    move-object/from16 v0, p2

    #@d
    array-length v13, v0

    #@e
    .local v13, "wl":I
    if-lez v13, :cond_0

    #@10
    .line 1728
    xor-int v2, v11, p3

    #@12
    const/high16 v3, 0x10000

    #@14
    and-int/2addr v2, v3

    #@15
    if-nez v2, :cond_0

    #@17
    .line 1729
    add-int/lit8 v2, v13, -0x1

    #@19
    and-int/2addr v2, v11

    #@1a
    aget-object v12, p2, v2

    #@1c
    .local v12, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_0

    #@1e
    .line 1730
    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@20
    int-to-long v2, v2

    #@21
    const-wide v4, 0xffffffffL

    #@26
    and-long/2addr v2, v4

    #@27
    const-wide/high16 v4, 0x1000000000000L

    #@29
    add-long/2addr v4, v6

    #@2a
    const-wide v14, -0x100000000L

    #@2f
    and-long/2addr v4, v14

    #@30
    or-long v8, v2, v4

    #@32
    .line 1731
    .local v8, "nc":J
    const v2, 0x7fffffff

    #@35
    and-int v10, v11, v2

    #@37
    .line 1732
    .local v10, "ns":I
    move-object/from16 v0, p1

    #@39
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@3b
    if-gez v2, :cond_0

    #@3d
    .line 1733
    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@3f
    if-ne v2, v11, :cond_0

    #@41
    .line 1734
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@43
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@45
    move-object/from16 v3, p0

    #@47
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@4a
    move-result v2

    #@4b
    .line 1732
    if-eqz v2, :cond_0

    #@4d
    .line 1735
    iput v10, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@4f
    .line 1736
    iget-object v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@51
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@54
    .line 1724
    .end local v8    # "nc":J
    .end local v10    # "ns":I
    .end local v12    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "wl":I
    :cond_0
    return-void
.end method

.method private tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z
    .locals 11
    .param p1, "c"    # J
    .param p3, "v"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p4, "inc"    # J

    #@0
    .prologue
    .line 1702
    long-to-int v9, p1

    #@1
    .local v9, "sp":I
    const v0, 0x7fffffff

    #@4
    and-int v8, v9, v0

    #@6
    .line 1703
    .local v8, "ns":I
    if-eqz p3, :cond_0

    #@8
    .line 1704
    iget v10, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@a
    .line 1705
    .local v10, "vs":I
    iget v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@c
    int-to-long v0, v0

    #@d
    const-wide v2, 0xffffffffL

    #@12
    and-long/2addr v0, v2

    #@13
    add-long v2, p1, p4

    #@15
    const-wide v4, -0x100000000L

    #@1a
    and-long/2addr v2, v4

    #@1b
    or-long v6, v0, v2

    #@1d
    .line 1706
    .local v6, "nc":J
    if-ne v9, v10, :cond_0

    #@1f
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@21
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@23
    move-object v1, p0

    #@24
    move-wide v4, p1

    #@25
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1707
    iput v8, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@2d
    .line 1708
    iget-object v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@2f
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@32
    .line 1709
    const/4 v0, 0x1

    #@33
    return v0

    #@34
    .line 1712
    .end local v6    # "nc":J
    .end local v10    # "vs":I
    :cond_0
    const/4 v0, 0x0

    #@35
    return v0
.end method

.method private tryTerminate(ZZ)I
    .locals 20
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 2383
    :goto_0
    move-object/from16 v0, p0

    #@2
    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@4
    .local v6, "rs":I
    if-ltz v6, :cond_3

    #@6
    .line 2384
    if-eqz p2, :cond_0

    #@8
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@a
    move-object/from16 v0, p0

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 2385
    :cond_0
    const/4 v2, 0x1

    #@f
    return v2

    #@10
    .line 2386
    :cond_1
    if-nez v6, :cond_2

    #@12
    .line 2387
    const/4 v2, 0x0

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    #@18
    goto :goto_0

    #@19
    .line 2389
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@1b
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    #@1d
    const/high16 v3, -0x80000000

    #@1f
    or-int v7, v6, v3

    #@21
    move-object/from16 v3, p0

    #@23
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@26
    goto :goto_0

    #@27
    .line 2392
    :cond_3
    and-int/lit8 v2, v6, 0x2

    #@29
    if-nez v2, :cond_9

    #@2b
    .line 2393
    if-nez p1, :cond_8

    #@2d
    .line 2394
    const-wide/16 v14, 0x0

    #@2f
    .line 2396
    .local v14, "oldSum":J
    :goto_1
    move-object/from16 v0, p0

    #@31
    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@33
    .line 2397
    .local v10, "checkSum":J
    const/16 v2, 0x30

    #@35
    shr-long v2, v10, v2

    #@37
    long-to-int v2, v2

    #@38
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@3c
    const v4, 0xffff

    #@3f
    and-int/2addr v3, v4

    #@40
    add-int/2addr v2, v3

    #@41
    if-lez v2, :cond_4

    #@43
    .line 2398
    const/4 v2, 0x0

    #@44
    return v2

    #@45
    .line 2399
    :cond_4
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@49
    move-object/from16 v18, v0

    #@4b
    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_7

    #@4d
    .line 2400
    const/4 v9, 0x0

    #@4e
    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v18

    #@50
    array-length v2, v0

    #@51
    if-ge v9, v2, :cond_7

    #@53
    .line 2401
    aget-object v13, v18, v9

    #@55
    .local v13, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_6

    #@57
    .line 2402
    iget v8, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@59
    .local v8, "b":I
    int-to-long v2, v8

    #@5a
    add-long/2addr v10, v2

    #@5b
    .line 2403
    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@5d
    if-nez v2, :cond_5

    #@5f
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@61
    if-eq v8, v2, :cond_6

    #@63
    .line 2404
    :cond_5
    const/4 v2, 0x0

    #@64
    return v2

    #@65
    .line 2400
    .end local v8    # "b":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    #@67
    goto :goto_2

    #@68
    .line 2408
    .end local v9    # "i":I
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move-wide/from16 v16, v10

    #@6a
    .end local v14    # "oldSum":J
    .local v16, "oldSum":J
    cmp-long v2, v14, v10

    #@6c
    if-nez v2, :cond_b

    #@6e
    .line 2412
    .end local v10    # "checkSum":J
    .end local v16    # "oldSum":J
    .end local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@70
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    #@72
    .line 2413
    move-object/from16 v0, p0

    #@74
    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@76
    or-int/lit8 v7, v6, 0x2

    #@78
    move-object/from16 v3, p0

    #@7a
    .line 2412
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@7d
    move-result v2

    #@7e
    if-eqz v2, :cond_8

    #@80
    .line 2416
    :cond_9
    const-wide/16 v14, 0x0

    #@82
    .line 2418
    .restart local v14    # "oldSum":J
    :goto_3
    move-object/from16 v0, p0

    #@84
    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@86
    .line 2419
    .restart local v10    # "checkSum":J
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8a
    move-object/from16 v18, v0

    #@8c
    .restart local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_c

    #@8e
    .line 2420
    const/4 v9, 0x0

    #@8f
    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, v18

    #@91
    array-length v2, v0

    #@92
    if-ge v9, v2, :cond_c

    #@94
    .line 2421
    aget-object v13, v18, v9

    #@96
    .restart local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_a

    #@98
    .line 2422
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    #@9b
    .line 2423
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@9d
    int-to-long v2, v2

    #@9e
    add-long/2addr v10, v2

    #@9f
    .line 2424
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@a1
    if-ltz v2, :cond_a

    #@a3
    .line 2425
    const/4 v2, -0x1

    #@a4
    iput v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@a6
    .line 2426
    iget-object v0, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a8
    move-object/from16 v19, v0

    #@aa
    .local v19, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v19, :cond_a

    #@ac
    .line 2428
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    .line 2420
    .end local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    #@b1
    goto :goto_4

    #@b2
    .end local v9    # "i":I
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    :cond_b
    move-wide/from16 v14, v16

    #@b4
    .end local v16    # "oldSum":J
    .restart local v14    # "oldSum":J
    goto/16 :goto_1

    #@b6
    .line 2429
    .restart local v9    # "i":I
    .restart local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v12

    #@b7
    .local v12, "ignore":Ljava/lang/Throwable;
    goto :goto_5

    #@b8
    .line 2436
    .end local v9    # "i":I
    .end local v12    # "ignore":Ljava/lang/Throwable;
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_c
    move-wide/from16 v16, v10

    #@ba
    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    cmp-long v2, v14, v10

    #@bc
    if-nez v2, :cond_e

    #@be
    .line 2440
    move-object/from16 v0, p0

    #@c0
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@c2
    const/16 v4, 0x20

    #@c4
    ushr-long/2addr v2, v4

    #@c5
    long-to-int v2, v2

    #@c6
    int-to-short v2, v2

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@cb
    const v4, 0xffff

    #@ce
    and-int/2addr v3, v4

    #@cf
    add-int/2addr v2, v3

    #@d0
    if-gtz v2, :cond_d

    #@d2
    .line 2441
    const v2, -0x7ffffff9

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@d9
    .line 2442
    monitor-enter p0

    #@da
    .line 2443
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@dd
    monitor-exit p0

    #@de
    .line 2447
    :cond_d
    const/4 v2, -0x1

    #@df
    return v2

    #@e0
    :cond_e
    move-wide/from16 v14, v16

    #@e2
    .end local v16    # "oldSum":J
    .restart local v14    # "oldSum":J
    goto :goto_3

    #@e3
    .line 2442
    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    :catchall_0
    move-exception v2

    #@e4
    monitor-exit p0

    #@e5
    throw v2
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I
    .locals 13
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;J)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2195
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v12, 0x0

    #@1
    .line 2196
    .local v12, "s":I
    if-eqz p1, :cond_2

    #@3
    .line 2197
    iget-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@5
    .line 2198
    .local v7, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p2, :cond_2

    #@7
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@9
    if-ltz v12, :cond_2

    #@b
    .line 2199
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@d
    .line 2200
    instance-of v0, p2, Ljava/util/concurrent/CountedCompleter;

    #@f
    if-eqz v0, :cond_3

    #@11
    move-object v6, p2

    #@12
    .line 2201
    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    #@14
    .line 2203
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    #@16
    .line 2204
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, p1, v6, v0}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    #@1a
    .line 2207
    :goto_1
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@1c
    if-gez v12, :cond_5

    #@1e
    .line 2223
    :cond_1
    :goto_2
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@20
    .line 2226
    .end local v7    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    return v12

    #@21
    .line 2201
    .restart local v7    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v6, 0x0

    #@22
    .local v6, "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    goto :goto_0

    #@23
    .line 2206
    .end local v6    # "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    #@26
    goto :goto_1

    #@27
    .line 2210
    :cond_5
    const-wide/16 v0, 0x0

    #@29
    cmp-long v0, p3, v0

    #@2b
    if-nez v0, :cond_8

    #@2d
    .line 2211
    const-wide/16 v8, 0x0

    #@2f
    .line 2216
    .local v8, "ms":J
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_7

    #@35
    .line 2217
    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/ForkJoinTask;->internalWait(J)V

    #@38
    .line 2218
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@3a
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@3c
    const-wide/high16 v4, 0x1000000000000L

    #@3e
    move-object v1, p0

    #@3f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@42
    .line 2220
    :cond_7
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@44
    if-gez v12, :cond_0

    #@46
    goto :goto_2

    #@47
    .line 2212
    .end local v8    # "ms":J
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4a
    move-result-wide v0

    #@4b
    sub-long v10, p3, v0

    #@4d
    .local v10, "ns":J
    const-wide/16 v0, 0x0

    #@4f
    cmp-long v0, v10, v0

    #@51
    if-lez v0, :cond_1

    #@53
    .line 2214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@55
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@58
    move-result-wide v8

    #@59
    .restart local v8    # "ms":J
    const-wide/16 v0, 0x0

    #@5b
    cmp-long v0, v8, v0

    #@5d
    if-gtz v0, :cond_6

    #@5f
    .line 2215
    const-wide/16 v8, 0x1

    #@61
    goto :goto_3
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 3250
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v10

    #@8
    .line 3252
    .local v10, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v17

    #@c
    .line 3253
    .local v17, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v17

    #@e
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@10
    move/from16 v21, v0

    #@12
    if-eqz v21, :cond_0

    #@14
    move-object/from16 v20, v17

    #@16
    .line 3254
    check-cast v20, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@18
    .local v20, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v20

    #@1a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@1c
    move-object/from16 v21, v0

    #@1e
    move-object/from16 v0, v21

    #@20
    move-object/from16 v1, p0

    #@22
    if-ne v0, v1, :cond_0

    #@24
    .line 3255
    move-object/from16 v0, v20

    #@26
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@28
    move-object/from16 v21, v0

    #@2a
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v21

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@31
    .line 3256
    const/16 v21, 0x1

    #@33
    return v21

    #@34
    .line 3258
    .end local v20    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@37
    move-result-wide v14

    #@38
    .line 3260
    .local v14, "startTime":J
    const/4 v12, 0x0

    #@39
    .line 3261
    .local v12, "r":I
    const/4 v5, 0x1

    #@3a
    .line 3262
    .local v5, "found":Z
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    #@3d
    move-result v21

    #@3e
    if-nez v21, :cond_5

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@44
    move-object/from16 v19, v0

    #@46
    .local v19, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_5

    #@48
    .line 3263
    move-object/from16 v0, v19

    #@4a
    array-length v0, v0

    #@4b
    move/from16 v18, v0

    #@4d
    .local v18, "wl":I
    if-lez v18, :cond_5

    #@4f
    .line 3264
    if-nez v5, :cond_3

    #@51
    .line 3265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@54
    move-result-wide v22

    #@55
    sub-long v22, v22, v14

    #@57
    cmp-long v21, v22, v10

    #@59
    if-lez v21, :cond_2

    #@5b
    .line 3266
    const/16 v21, 0x0

    #@5d
    return v21

    #@5e
    .line 3267
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@61
    .line 3269
    :cond_3
    const/4 v5, 0x0

    #@62
    .line 3270
    add-int/lit8 v8, v18, -0x1

    #@64
    .local v8, "m":I
    add-int/lit8 v21, v8, 0x1

    #@66
    shl-int/lit8 v6, v21, 0x2

    #@68
    .local v6, "j":I
    move v13, v12

    #@69
    .end local v12    # "r":I
    .local v13, "r":I
    :goto_1
    if-ltz v6, :cond_6

    #@6b
    .line 3272
    add-int/lit8 v12, v13, 0x1

    #@6d
    .end local v13    # "r":I
    .restart local v12    # "r":I
    and-int v7, v13, v8

    #@6f
    .local v7, "k":I
    if-gt v7, v8, :cond_4

    #@71
    if-ltz v7, :cond_4

    #@73
    aget-object v9, v19, v7

    #@75
    .local v9, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v9, :cond_4

    #@77
    .line 3273
    iget v4, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@79
    .local v4, "b":I
    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@7b
    move/from16 v21, v0

    #@7d
    sub-int v21, v4, v21

    #@7f
    if-gez v21, :cond_4

    #@81
    .line 3274
    const/4 v5, 0x1

    #@82
    .line 3275
    invoke-virtual {v9, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@85
    move-result-object v16

    #@86
    .local v16, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v16, :cond_1

    #@88
    .line 3276
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@8b
    goto :goto_0

    #@8c
    .line 3270
    .end local v4    # "b":I
    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@8e
    move v13, v12

    #@8f
    .end local v12    # "r":I
    .restart local v13    # "r":I
    goto :goto_1

    #@90
    .line 3281
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "m":I
    .end local v13    # "r":I
    .end local v18    # "wl":I
    .end local v19    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v12    # "r":I
    :cond_5
    const/16 v21, 0x1

    #@92
    return v21

    #@93
    .end local v12    # "r":I
    .restart local v6    # "j":I
    .restart local v8    # "m":I
    .restart local v13    # "r":I
    .restart local v18    # "wl":I
    .restart local v19    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move v12, v13

    #@94
    .end local v13    # "r":I
    .restart local v12    # "r":I
    goto :goto_0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const-wide/16 v14, 0x0

    #@3
    const/4 v12, 0x0

    #@4
    .line 3213
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@7
    move-result v10

    #@8
    if-eqz v10, :cond_0

    #@a
    .line 3214
    new-instance v10, Ljava/lang/InterruptedException;

    #@c
    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    #@f
    throw v10

    #@10
    .line 3215
    :cond_0
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@12
    move-object/from16 v0, p0

    #@14
    if-ne v0, v10, :cond_1

    #@16
    .line 3216
    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    #@19
    .line 3217
    return v12

    #@1a
    .line 3219
    :cond_1
    move-object/from16 v0, p3

    #@1c
    move-wide/from16 v1, p1

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@21
    move-result-wide v8

    #@22
    .line 3220
    .local v8, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    #@25
    move-result v10

    #@26
    if-eqz v10, :cond_2

    #@28
    .line 3221
    return v13

    #@29
    .line 3222
    :cond_2
    cmp-long v10, v8, v14

    #@2b
    if-gtz v10, :cond_3

    #@2d
    .line 3223
    return v12

    #@2e
    .line 3224
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v10

    #@32
    add-long v4, v10, v8

    #@34
    .line 3225
    .local v4, "deadline":J
    monitor-enter p0

    #@35
    .line 3227
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v10

    #@39
    if-eqz v10, :cond_4

    #@3b
    monitor-exit p0

    #@3c
    .line 3228
    return v13

    #@3d
    .line 3229
    :cond_4
    cmp-long v10, v8, v14

    #@3f
    if-gtz v10, :cond_5

    #@41
    monitor-exit p0

    #@42
    .line 3230
    return v12

    #@43
    .line 3231
    :cond_5
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@45
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@48
    move-result-wide v6

    #@49
    .line 3232
    .local v6, "millis":J
    cmp-long v10, v6, v14

    #@4b
    if-lez v10, :cond_6

    #@4d
    .end local v6    # "millis":J
    :goto_1
    move-object/from16 v0, p0

    #@4f
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->wait(J)V

    #@52
    .line 3233
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result-wide v10

    #@56
    sub-long v8, v4, v10

    #@58
    goto :goto_0

    #@59
    .line 3232
    .restart local v6    # "millis":J
    :cond_6
    const-wide/16 v6, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 3225
    .end local v6    # "millis":J
    :catchall_0
    move-exception v10

    #@5d
    monitor-exit p0

    #@5e
    throw v10
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 22
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1606
    const/4 v15, 0x0

    #@1
    .line 1607
    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_1

    #@3
    move-object/from16 v0, p1

    #@5
    iget-object v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@7
    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    #@9
    .line 1609
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@b
    const v3, 0xffff

    #@e
    and-int v12, v2, v3

    #@10
    .line 1610
    .local v12, "idx":I
    iget v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@12
    .line 1611
    .local v13, "ns":I
    move-object/from16 v0, p0

    #@14
    iget-object v11, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@16
    .local v11, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v11, :cond_1

    #@18
    .line 1612
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    #@1b
    .line 1614
    :try_start_0
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@1f
    move-object/from16 v17, v0

    #@21
    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    #@23
    move-object/from16 v0, v17

    #@25
    array-length v2, v0

    #@26
    if-le v2, v12, :cond_0

    #@28
    .line 1615
    aget-object v2, v17, v12

    #@2a
    if-ne v2, v15, :cond_0

    #@2c
    .line 1616
    const/4 v2, 0x0

    #@2d
    aput-object v2, v17, v12

    #@2f
    .line 1617
    :cond_0
    iget-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    #@31
    int-to-long v4, v13

    #@32
    add-long/2addr v2, v4

    #@33
    iput-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1619
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@38
    .line 1623
    .end local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v12    # "idx":I
    .end local v13    # "ns":I
    .end local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    if-eqz v15, :cond_2

    #@3a
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@3c
    const/high16 v3, 0x40000

    #@3e
    and-int/2addr v2, v3

    #@3f
    if-nez v2, :cond_3

    #@41
    .line 1625
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@43
    .line 1626
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@45
    move-object/from16 v0, p0

    #@47
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@49
    .local v6, "c":J
    const-wide/high16 v8, 0x1000000000000L

    #@4b
    sub-long v8, v6, v8

    #@4d
    const-wide/high16 v18, -0x1000000000000L

    #@4f
    and-long v8, v8, v18

    #@51
    .line 1627
    const-wide v18, 0x100000000L

    #@56
    sub-long v18, v6, v18

    #@58
    const-wide v20, 0xffff00000000L

    #@5d
    and-long v18, v18, v20

    #@5f
    .line 1626
    or-long v8, v8, v18

    #@61
    .line 1628
    const-wide v18, 0xffffffffL

    #@66
    and-long v18, v18, v6

    #@68
    .line 1626
    or-long v8, v8, v18

    #@6a
    move-object/from16 v3, p0

    #@6c
    .line 1625
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@6f
    move-result v2

    #@70
    if-eqz v2, :cond_2

    #@72
    .line 1630
    .end local v6    # "c":J
    :cond_3
    if-eqz v15, :cond_4

    #@74
    .line 1631
    const/4 v2, 0x0

    #@75
    iput-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@77
    .line 1632
    const/4 v2, -0x1

    #@78
    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@7a
    .line 1633
    invoke-virtual {v15}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    #@7d
    .line 1635
    :cond_4
    const/4 v2, 0x0

    #@7e
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    #@84
    move-result v2

    #@85
    if-ltz v2, :cond_5

    #@87
    .line 1637
    if-eqz v15, :cond_5

    #@89
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@8b
    if-nez v2, :cond_6

    #@8d
    .line 1651
    :cond_5
    :goto_0
    if-nez p2, :cond_8

    #@8f
    .line 1652
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    #@92
    .line 1605
    :goto_1
    return-void

    #@93
    .line 1618
    .restart local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v12    # "idx":I
    .restart local v13    # "ns":I
    .restart local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v2

    #@94
    .line 1619
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@97
    .line 1618
    throw v2

    #@98
    .line 1638
    .end local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v12    # "idx":I
    .end local v13    # "ns":I
    .end local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@9c
    move-object/from16 v17, v0

    #@9e
    .restart local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_5

    #@a0
    move-object/from16 v0, v17

    #@a2
    array-length v0, v0

    #@a3
    move/from16 v16, v0

    #@a5
    .local v16, "wl":I
    if-lez v16, :cond_5

    #@a7
    .line 1640
    move-object/from16 v0, p0

    #@a9
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@ab
    .restart local v6    # "c":J
    long-to-int v14, v6

    #@ac
    .local v14, "sp":I
    if-eqz v14, :cond_7

    #@ae
    .line 1641
    add-int/lit8 v2, v16, -0x1

    #@b0
    and-int/2addr v2, v14

    #@b1
    aget-object v8, v17, v2

    #@b3
    const-wide/high16 v9, 0x1000000000000L

    #@b5
    move-object/from16 v5, p0

    #@b7
    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_4

    #@bd
    goto :goto_0

    #@be
    .line 1644
    :cond_7
    if-eqz p2, :cond_5

    #@c0
    const-wide v2, 0x800000000000L

    #@c5
    and-long/2addr v2, v6

    #@c6
    const-wide/16 v4, 0x0

    #@c8
    cmp-long v2, v2, v4

    #@ca
    if-eqz v2, :cond_5

    #@cc
    .line 1645
    move-object/from16 v0, p0

    #@ce
    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    #@d1
    goto :goto_0

    #@d2
    .line 1654
    .end local v6    # "c":J
    .end local v14    # "sp":I
    .end local v16    # "wl":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@d5
    goto :goto_1
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 3052
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    #@1
    .line 3054
    .local v0, "count":I
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    #@5
    .line 3055
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v5, v4

    #@7
    if-ge v1, v5, :cond_1

    #@9
    .line 3056
    aget-object v3, v4, v1

    #@b
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@d
    .line 3057
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@10
    move-result-object v2

    #@11
    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    #@13
    .line 3058
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@16
    .line 3059
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 3055
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 3064
    .end local v1    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2741
    if-nez p1, :cond_0

    #@2
    .line 2742
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2744
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v0, p1

    #@d
    .line 2745
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    #@f
    .line 2748
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@12
    .line 2740
    return-void

    #@13
    .line 2747
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    #@15
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    #@18
    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2730
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    .line 2729
    return-void
.end method

.method final externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I
    .locals 4
    .param p2, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v3, 0x0

    #@1
    .line 2567
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@4
    move-result v0

    #@5
    .line 2568
    .local v0, "r":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@7
    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@9
    array-length v1, v2

    #@a
    .local v1, "wl":I
    if-lez v1, :cond_0

    #@c
    .line 2569
    add-int/lit8 v3, v1, -0x1

    #@e
    and-int/2addr v3, v0

    #@f
    and-int/lit8 v3, v3, 0x7e

    #@11
    aget-object v3, v2, v3

    #@13
    invoke-virtual {p0, v3, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    #@16
    move-result v3

    #@17
    .line 2568
    .end local v1    # "wl":I
    :cond_0
    return v3
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2499
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@3
    move-result v2

    #@4
    .local v2, "r":I
    if-nez v2, :cond_0

    #@6
    .line 2500
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    #@9
    .line 2501
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@c
    move-result v2

    #@d
    .line 2505
    :cond_0
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@f
    .line 2506
    .local v3, "rs":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@11
    .line 2507
    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-lez v3, :cond_1

    #@13
    if-nez v6, :cond_2

    #@15
    .line 2508
    :cond_1
    const/4 v7, 0x1

    #@16
    invoke-direct {p0, v7}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    #@19
    goto :goto_0

    #@1a
    .line 2507
    :cond_2
    array-length v5, v6

    #@1b
    .local v5, "wl":I
    if-lez v5, :cond_1

    #@1d
    .line 2509
    add-int/lit8 v7, v5, -0x1

    #@1f
    and-int/2addr v7, v2

    #@20
    and-int/lit8 v0, v7, 0x7e

    #@22
    .local v0, "k":I
    aget-object v1, v6, v0

    #@24
    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_3

    #@26
    .line 2510
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryCreateExternalQueue(I)V

    #@29
    goto :goto_0

    #@2a
    .line 2511
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->sharedPush(Ljava/util/concurrent/ForkJoinTask;)I

    #@2d
    move-result v4

    #@2e
    .local v4, "stat":I
    if-gez v4, :cond_4

    #@30
    .line 2497
    :goto_1
    return-void

    #@31
    .line 2513
    :cond_4
    if-nez v4, :cond_5

    #@33
    .line 2514
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    #@36
    goto :goto_1

    #@37
    .line 2518
    :cond_5
    invoke-static {v2}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    #@3a
    move-result v2

    #@3b
    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2914
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@3
    const v3, 0xffff

    #@6
    and-int/2addr v2, v3

    #@7
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@9
    const/16 v3, 0x30

    #@b
    shr-long/2addr v4, v3

    #@c
    long-to-int v3, v4

    #@d
    add-int v0, v2, v3

    #@f
    .line 2915
    .local v0, "r":I
    if-gtz v0, :cond_0

    #@11
    move v0, v1

    #@12
    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2883
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 2831
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@2
    return-object v0
.end method

.method public getParallelism()I
    .locals 3

    #@0
    .prologue
    .line 2851
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@2
    const v2, 0xffff

    #@5
    and-int v0, v1, v2

    #@7
    .local v0, "par":I
    if-lez v0, :cond_0

    #@9
    .end local v0    # "par":I
    :goto_0
    return v0

    #@a
    .restart local v0    # "par":I
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    #@0
    .prologue
    .line 2873
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@8
    const/16 v1, 0x20

    #@a
    ushr-long/2addr v2, v1

    #@b
    long-to-int v1, v2

    #@c
    int-to-short v1, v1

    #@d
    add-int/2addr v0, v1

    #@e
    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    #@0
    .prologue
    .line 2987
    const/4 v0, 0x0

    #@1
    .line 2989
    .local v0, "count":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@5
    .line 2990
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@7
    if-ge v1, v4, :cond_1

    #@9
    .line 2991
    aget-object v2, v3, v1

    #@b
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@d
    .line 2992
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@10
    move-result v4

    #@11
    add-int/2addr v0, v4

    #@12
    .line 2990
    :cond_0
    add-int/lit8 v1, v1, 0x2

    #@14
    goto :goto_0

    #@15
    .line 2995
    .end local v1    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 2968
    const-wide/16 v0, 0x0

    #@2
    .line 2970
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@4
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    #@6
    .line 2971
    const/4 v2, 0x1

    #@7
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@8
    if-ge v2, v5, :cond_1

    #@a
    .line 2972
    aget-object v3, v4, v2

    #@c
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@e
    .line 2973
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@11
    move-result v5

    #@12
    int-to-long v6, v5

    #@13
    add-long/2addr v0, v6

    #@14
    .line 2971
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@16
    goto :goto_0

    #@17
    .line 2976
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    #@0
    .prologue
    .line 2895
    const/4 v1, 0x0

    #@1
    .line 2897
    .local v1, "rc":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@5
    .line 2898
    const/4 v0, 0x1

    #@6
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@7
    if-ge v0, v4, :cond_1

    #@9
    .line 2899
    aget-object v2, v3, v0

    #@b
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 2900
    add-int/lit8 v1, v1, 0x1

    #@15
    .line 2898
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@17
    goto :goto_0

    #@18
    .line 2903
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    #@0
    .prologue
    .line 2945
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@2
    .line 2946
    .local v3, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v3, :cond_1

    #@4
    const-wide/16 v0, 0x0

    #@6
    .line 2948
    .local v0, "count":J
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2

    #@a
    .line 2949
    const/4 v2, 0x1

    #@b
    .local v2, "i":I
    :goto_1
    array-length v6, v5

    #@c
    if-ge v2, v6, :cond_2

    #@e
    .line 2950
    aget-object v4, v5, v2

    #@10
    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    #@12
    .line 2951
    iget v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@14
    int-to-long v6, v6

    #@15
    add-long/2addr v0, v6

    #@16
    .line 2949
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@18
    goto :goto_1

    #@19
    .line 2946
    .end local v0    # "count":J
    .end local v2    # "i":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    iget-wide v0, v3, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    #@1b
    .restart local v0    # "count":J
    goto :goto_0

    #@1c
    .line 2954
    .restart local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 2841
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    #@0
    .prologue
    .line 3006
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2
    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_2

    #@4
    .line 3007
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@6
    if-ge v0, v3, :cond_2

    #@8
    .line 3008
    aget-object v1, v2, v0

    #@a
    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 3007
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@14
    goto :goto_0

    #@15
    .line 3009
    :cond_1
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 3012
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    const/4 v3, 0x0

    #@18
    return v3
.end method

.method final helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I
    .locals 19
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2005
    .local p2, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v14, 0x0

    #@1
    .line 2006
    .local v14, "s":I
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@5
    move-object/from16 v17, v0

    #@7
    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_1

    #@9
    move-object/from16 v0, v17

    #@b
    array-length v0, v0

    #@c
    move/from16 v16, v0

    #@e
    .local v16, "wl":I
    const/16 v18, 0x1

    #@10
    move/from16 v0, v16

    #@12
    move/from16 v1, v18

    #@14
    if-le v0, v1, :cond_1

    #@16
    .line 2007
    if-eqz p2, :cond_1

    #@18
    if-eqz p1, :cond_1

    #@1a
    .line 2008
    add-int/lit8 v6, v16, -0x1

    #@1c
    .line 2009
    .local v6, "m":I
    move-object/from16 v0, p1

    #@1e
    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@20
    .line 2010
    .local v7, "mode":I
    not-int v13, v7

    #@21
    .line 2011
    .local v13, "r":I
    and-int v10, v13, v6

    #@23
    .local v10, "origin":I
    move v5, v10

    #@24
    .line 2012
    .local v5, "k":I
    const/4 v15, 0x3

    #@25
    .line 2013
    .local v15, "step":I
    const/4 v3, 0x1

    #@26
    .line 2014
    .local v3, "h":I
    const/4 v8, 0x0

    #@27
    .local v8, "oldSum":I
    const/4 v2, 0x0

    #@28
    .line 2016
    .local v2, "checkSum":I
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    #@2a
    iget v14, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    #@2c
    if-gez v14, :cond_2

    #@2e
    .line 2046
    .end local v2    # "checkSum":I
    .end local v3    # "h":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    .end local v7    # "mode":I
    .end local v8    # "oldSum":I
    .end local v10    # "origin":I
    .end local v13    # "r":I
    .end local v15    # "step":I
    .end local v16    # "wl":I
    :cond_1
    return v14

    #@2f
    .line 2018
    .restart local v2    # "checkSum":I
    .restart local v3    # "h":I
    .restart local v5    # "k":I
    .restart local v6    # "m":I
    .restart local v7    # "mode":I
    .restart local v8    # "oldSum":I
    .restart local v10    # "origin":I
    .restart local v13    # "r":I
    .restart local v15    # "step":I
    .restart local v16    # "wl":I
    :cond_2
    const/16 v18, 0x1

    #@31
    move/from16 v0, v18

    #@33
    if-ne v3, v0, :cond_4

    #@35
    move-object/from16 v0, p1

    #@37
    move-object/from16 v1, p2

    #@39
    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;

    #@3c
    move-result-object v11

    #@3d
    .local v11, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v11, :cond_4

    #@3f
    .line 2019
    invoke-virtual {v11}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    #@42
    .line 2020
    if-eqz p3, :cond_3

    #@44
    add-int/lit8 p3, p3, -0x1

    #@46
    if-eqz p3, :cond_1

    #@48
    .line 2022
    :cond_3
    move v10, v5

    #@49
    .line 2023
    const/4 v2, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    .line 2018
    goto :goto_0

    #@4c
    .line 2026
    .end local v11    # "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    or-int/lit8 v4, v5, 0x1

    #@4e
    .local v4, "i":I
    if-ltz v4, :cond_5

    #@50
    if-le v4, v6, :cond_8

    #@52
    .line 2027
    :cond_5
    const/4 v3, 0x0

    #@53
    .line 2030
    :cond_6
    :goto_1
    if-lez v3, :cond_9

    #@55
    .line 2031
    const/16 v18, 0x1

    #@57
    move/from16 v0, v18

    #@59
    if-ne v3, v0, :cond_7

    #@5b
    if-eqz p3, :cond_7

    #@5d
    add-int/lit8 p3, p3, -0x1

    #@5f
    if-eqz p3, :cond_1

    #@61
    .line 2033
    :cond_7
    ushr-int/lit8 v18, v13, 0x10

    #@63
    or-int/lit8 v15, v18, 0x3

    #@65
    .line 2034
    shl-int/lit8 v18, v13, 0xd

    #@67
    xor-int v13, v13, v18

    #@69
    ushr-int/lit8 v18, v13, 0x11

    #@6b
    xor-int v13, v13, v18

    #@6d
    shl-int/lit8 v18, v13, 0x5

    #@6f
    xor-int v13, v13, v18

    #@71
    .line 2035
    and-int v10, v13, v6

    #@73
    move v5, v10

    #@74
    .line 2036
    const/4 v2, 0x0

    #@75
    const/4 v8, 0x0

    #@76
    goto :goto_0

    #@77
    .line 2026
    :cond_8
    aget-object v12, v17, v4

    #@79
    .local v12, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_5

    #@7b
    .line 2028
    move-object/from16 v0, p2

    #@7d
    invoke-virtual {v12, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I

    #@80
    move-result v3

    #@81
    if-gez v3, :cond_6

    #@83
    .line 2029
    add-int/2addr v2, v3

    #@84
    goto :goto_1

    #@85
    .line 2038
    .end local v12    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    add-int v18, v5, v15

    #@87
    and-int v5, v18, v6

    #@89
    if-ne v5, v10, :cond_0

    #@8b
    .line 2039
    move v9, v2

    #@8c
    .end local v8    # "oldSum":I
    .local v9, "oldSum":I
    if-eq v8, v2, :cond_1

    #@8e
    .line 2041
    const/4 v2, 0x0

    #@8f
    move v8, v9

    #@90
    .end local v9    # "oldSum":I
    .restart local v8    # "oldSum":I
    goto :goto_0
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 2265
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@4
    move-object/from16 v19, v0

    #@6
    .line 2266
    .local v19, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    #@8
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@a
    move/from16 v22, v0

    #@c
    .line 2267
    .local v22, "wc":I
    const/16 v18, 0x1

    #@e
    .line 2269
    .local v18, "active":Z
    :cond_0
    :goto_0
    if-ltz v22, :cond_1

    #@10
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    #@13
    move-result-object v21

    #@14
    .local v21, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v21, :cond_1

    #@16
    .line 2270
    move-object/from16 v0, v21

    #@18
    move-object/from16 v1, p1

    #@1a
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@1c
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@1f
    .line 2271
    move-object/from16 v0, v19

    #@21
    move-object/from16 v1, p1

    #@23
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@25
    goto :goto_0

    #@26
    .line 2273
    .end local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@29
    move-result-object v20

    #@2a
    .local v20, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_3

    #@2c
    .line 2274
    if-nez v18, :cond_2

    #@2e
    .line 2275
    const/16 v18, 0x1

    #@30
    .line 2276
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@32
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@34
    const-wide/high16 v6, 0x1000000000000L

    #@36
    move-object/from16 v3, p0

    #@38
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@3b
    .line 2278
    :cond_2
    move-object/from16 v0, v20

    #@3d
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3f
    move-object/from16 v0, v20

    #@41
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@44
    move-result-object v21

    #@45
    .restart local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v21, :cond_0

    #@47
    .line 2279
    move-object/from16 v0, v21

    #@49
    move-object/from16 v1, p1

    #@4b
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@4d
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@50
    .line 2280
    move-object/from16 v0, v19

    #@52
    move-object/from16 v1, p1

    #@54
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@56
    .line 2281
    move-object/from16 v0, p1

    #@58
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@5a
    add-int/lit8 v2, v2, 0x1

    #@5c
    move-object/from16 v0, p1

    #@5e
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@60
    if-gez v2, :cond_0

    #@62
    .line 2282
    move-object/from16 v0, p1

    #@64
    move-object/from16 v1, p0

    #@66
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    #@69
    goto :goto_0

    #@6a
    .line 2285
    .end local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    if-eqz v18, :cond_4

    #@6c
    .line 2286
    move-object/from16 v0, p0

    #@6e
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@70
    .local v6, "c":J
    const-wide/high16 v2, 0x1000000000000L

    #@72
    sub-long v2, v6, v2

    #@74
    const-wide/high16 v4, -0x1000000000000L

    #@76
    and-long/2addr v2, v4

    #@77
    const-wide v4, 0xffffffffffffL

    #@7c
    and-long/2addr v4, v6

    #@7d
    or-long v8, v2, v4

    #@7f
    .line 2287
    .local v8, "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@81
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@83
    move-object/from16 v3, p0

    #@85
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_0

    #@8b
    .line 2288
    const/16 v18, 0x0

    #@8d
    goto :goto_0

    #@8e
    .line 2290
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_4
    move-object/from16 v0, p0

    #@90
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@92
    .restart local v6    # "c":J
    const/16 v2, 0x30

    #@94
    shr-long v2, v6, v2

    #@96
    long-to-int v2, v2

    #@97
    move-object/from16 v0, p0

    #@99
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@9b
    const v4, 0xffff

    #@9e
    and-int/2addr v3, v4

    #@9f
    add-int/2addr v2, v3

    #@a0
    if-gtz v2, :cond_0

    #@a2
    .line 2291
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a4
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@a6
    const-wide/high16 v2, 0x1000000000000L

    #@a8
    add-long v16, v6, v2

    #@aa
    move-object/from16 v11, p0

    #@ac
    move-wide v14, v6

    #@ad
    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@b0
    move-result v2

    #@b1
    .line 2290
    if-eqz v2, :cond_0

    #@b3
    .line 2264
    return-void
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2715
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 2716
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2717
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@b
    .line 2718
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2807
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v7

    #@6
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 2810
    .local v1, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v6

    #@d
    .local v6, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v7

    #@11
    if-eqz v7, :cond_0

    #@13
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Ljava/util/concurrent/Callable;

    #@19
    .line 2811
    .local v5, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@1b
    invoke-direct {v0, v5}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@1e
    .line 2812
    .local v0, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 2813
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 2818
    .end local v0    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    .end local v5    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    #@26
    .line 2819
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    #@27
    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    .local v3, "size":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@2d
    .line 2820
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v7

    #@31
    check-cast v7, Ljava/util/concurrent/Future;

    #@33
    const/4 v8, 0x0

    #@34
    invoke-interface {v7, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@37
    .line 2819
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2815
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v6    # "t$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@3b
    .restart local v2    # "i":I
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v3

    #@3f
    .restart local v3    # "size":I
    :goto_2
    if-ge v2, v3, :cond_1

    #@41
    .line 2816
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    #@47
    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    .line 2815
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 2817
    :cond_1
    return-object v1

    #@4e
    .line 2821
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    throw v4
.end method

.method public isQuiescent()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2930
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@3
    const v2, 0xffff

    #@6
    and-int/2addr v1, v2

    #@7
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@9
    const/16 v4, 0x30

    #@b
    shr-long/2addr v2, v4

    #@c
    long-to-int v2, v2

    #@d
    add-int/2addr v1, v2

    #@e
    if-gtz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method public isShutdown()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3194
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3167
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isTerminating()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3184
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@3
    .line 3185
    .local v0, "rs":I
    and-int/lit8 v2, v0, 0x2

    #@5
    if-eqz v2, :cond_0

    #@7
    and-int/lit8 v2, v0, 0x4

    #@9
    if-nez v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3423
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3427
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2304
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    #@4
    move-result-object v1

    #@5
    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    #@7
    .line 2305
    return-object v1

    #@8
    .line 2306
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b
    move-result-object v0

    #@c
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_2

    #@e
    .line 2307
    return-object v3

    #@f
    .line 2308
    :cond_2
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@11
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@14
    move-result-object v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 2309
    return-object v1
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3024
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    #@4
    move-result v2

    #@5
    .line 3025
    .local v2, "r":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@7
    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v6, :cond_1

    #@9
    array-length v5, v6

    #@a
    .local v5, "wl":I
    if-lez v5, :cond_1

    #@c
    .line 3026
    add-int/lit8 v1, v5, -0x1

    #@e
    .local v1, "m":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@11
    .line 3027
    shl-int/lit8 v7, v0, 0x1

    #@13
    and-int/2addr v7, v1

    #@14
    aget-object v4, v6, v7

    #@16
    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    #@18
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@1b
    move-result-object v3

    #@1c
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_0

    #@1e
    .line 3028
    return-object v3

    #@1f
    .line 3026
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 3031
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "wl":I
    :cond_1
    return-object v8
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 18
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    #@0
    .prologue
    .line 1559
    const/4 v13, 0x1

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    #@6
    .line 1560
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@a
    .local v3, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v3, :cond_0

    #@c
    .line 1561
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@11
    .line 1562
    :cond_0
    new-instance v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@13
    move-object/from16 v0, p0

    #@15
    move-object/from16 v1, p1

    #@17
    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    #@1a
    .line 1563
    .local v11, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    #@1b
    .line 1564
    .local v4, "i":I
    move-object/from16 v0, p0

    #@1d
    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@1f
    const/high16 v14, -0x10000

    #@21
    and-int v6, v13, v14

    #@23
    .line 1565
    .local v6, "mode":I
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@27
    .local v2, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v2, :cond_5

    #@29
    .line 1566
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    #@2c
    .line 1568
    :try_start_0
    iget-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    #@2e
    const-wide/32 v16, -0x61c88647

    #@31
    add-long v14, v14, v16

    #@33
    iput-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    #@35
    long-to-int v9, v14

    #@36
    .line 1569
    .local v9, "s":I
    move-object/from16 v0, p0

    #@38
    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3a
    .line 1570
    .local v12, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_4

    #@3c
    array-length v7, v12

    #@3d
    .local v7, "n":I
    if-lez v7, :cond_4

    #@3f
    .line 1571
    add-int/lit8 v5, v7, -0x1

    #@41
    .local v5, "m":I
    shl-int/lit8 v13, v9, 0x1

    #@43
    or-int/lit8 v13, v13, 0x1

    #@45
    and-int v4, v5, v13

    #@47
    .line 1572
    aget-object v13, v12, v4

    #@49
    if-eqz v13, :cond_3

    #@4b
    .line 1573
    const/4 v8, 0x0

    #@4c
    .line 1574
    .local v8, "probes":I
    const/4 v13, 0x4

    #@4d
    if-gt v7, v13, :cond_2

    #@4f
    const/4 v10, 0x2

    #@50
    .line 1575
    .local v10, "step":I
    :cond_1
    :goto_0
    add-int v13, v4, v10

    #@52
    and-int v4, v13, v5

    #@54
    aget-object v13, v12, v4

    #@56
    if-eqz v13, :cond_3

    #@58
    .line 1576
    add-int/lit8 v8, v8, 0x1

    #@5a
    if-lt v8, v7, :cond_1

    #@5c
    .line 1577
    shl-int/lit8 v7, v7, 0x1

    #@5e
    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@61
    move-result-object v12

    #@62
    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    check-cast v12, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@64
    .restart local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    #@66
    iput-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@68
    .line 1578
    add-int/lit8 v5, v7, -0x1

    #@6a
    .line 1579
    const/4 v8, 0x0

    #@6b
    goto :goto_0

    #@6c
    .line 1574
    .end local v10    # "step":I
    :cond_2
    ushr-int/lit8 v13, v7, 0x1

    #@6e
    const v14, 0xfffe

    #@71
    and-int/2addr v13, v14

    #@72
    add-int/lit8 v10, v13, 0x2

    #@74
    .restart local v10    # "step":I
    goto :goto_0

    #@75
    .line 1583
    .end local v8    # "probes":I
    .end local v10    # "step":I
    :cond_3
    iput v9, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@77
    .line 1584
    or-int v13, v4, v6

    #@79
    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@7b
    .line 1585
    const/high16 v13, 0x7fff0000

    #@7d
    and-int/2addr v13, v9

    #@7e
    or-int/2addr v13, v4

    #@7f
    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@81
    .line 1586
    aput-object v11, v12, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    .line 1589
    .end local v5    # "m":I
    .end local v7    # "n":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@86
    .line 1592
    .end local v9    # "s":I
    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move-object/from16 v0, p0

    #@88
    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    #@8a
    ushr-int/lit8 v14, v4, 0x1

    #@8c
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8f
    move-result-object v14

    #@90
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object v13

    #@94
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    #@99
    .line 1593
    return-object v11

    #@9a
    .line 1588
    :catchall_0
    move-exception v13

    #@9b
    .line 1589
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    #@9e
    .line 1588
    throw v13
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 10
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 1899
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .line 1900
    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    #@5
    const/high16 v7, 0x20000

    #@7
    and-int/2addr v6, v7

    #@8
    if-eqz v6, :cond_2

    #@a
    const/4 v0, 0x0

    #@b
    .line 1901
    .local v0, "bound":I
    :goto_0
    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@d
    int-to-long v6, v6

    #@e
    const-wide v8, -0x2545f4914f6cdd1dL    # -1.1283317689613908E129

    #@13
    mul-long v4, v6, v8

    #@15
    .line 1902
    .local v4, "seed":J
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@17
    and-int/lit8 v6, v6, 0x2

    #@19
    if-nez v6, :cond_1

    #@1b
    .line 1903
    const-wide/16 v6, 0x0

    #@1d
    cmp-long v6, v4, v6

    #@1f
    if-nez v6, :cond_3

    #@21
    const-wide/16 v2, 0x1

    #@23
    .line 1904
    .local v2, "r":J
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    #@25
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_4

    #@2b
    .line 1898
    .end local v2    # "r":J
    :cond_1
    :goto_2
    return-void

    #@2c
    .line 1900
    .end local v0    # "bound":I
    .end local v4    # "seed":J
    :cond_2
    const/16 v0, 0x3ff

    #@2e
    .restart local v0    # "bound":I
    goto :goto_0

    #@2f
    .line 1903
    .restart local v4    # "seed":J
    :cond_3
    move-wide v2, v4

    #@30
    .restart local v2    # "r":J
    goto :goto_1

    #@31
    .line 1907
    :cond_4
    const/16 v6, 0x30

    #@33
    ushr-long v6, v2, v6

    #@35
    long-to-int v6, v6

    #@36
    or-int/lit8 v1, v6, 0x1

    #@38
    .line 1908
    .local v1, "step":I
    const/16 v6, 0xc

    #@3a
    ushr-long v6, v2, v6

    #@3c
    xor-long/2addr v2, v6

    #@3d
    const/16 v6, 0x19

    #@3f
    shl-long v6, v2, v6

    #@41
    xor-long/2addr v2, v6

    #@42
    const/16 v6, 0x1b

    #@44
    ushr-long v6, v2, v6

    #@46
    xor-long/2addr v2, v6

    #@47
    .line 1909
    long-to-int v6, v2

    #@48
    invoke-direct {p0, p1, v0, v1, v6}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I

    #@4b
    move-result v6

    #@4c
    if-gez v6, :cond_0

    #@4e
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I

    #@51
    move-result v6

    #@52
    if-gez v6, :cond_0

    #@54
    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 3133
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@3
    .line 3134
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    #@8
    .line 3132
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3156
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@4
    .line 3157
    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    #@7
    .line 3158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method final signalWork()V
    .locals 18

    #@0
    .prologue
    .line 1665
    :cond_0
    move-object/from16 v0, p0

    #@2
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .local v6, "c":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v6, v2

    #@8
    if-ltz v2, :cond_2

    #@a
    .line 1662
    :cond_1
    :goto_0
    return-void

    #@b
    .line 1667
    :cond_2
    long-to-int v12, v6

    #@c
    .local v12, "sp":I
    if-nez v12, :cond_3

    #@e
    .line 1668
    const-wide v2, 0x800000000000L

    #@13
    and-long/2addr v2, v6

    #@14
    const-wide/16 v4, 0x0

    #@16
    cmp-long v2, v2, v4

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1669
    move-object/from16 v0, p0

    #@1c
    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    #@1f
    goto :goto_0

    #@20
    .line 1672
    :cond_3
    move-object/from16 v0, p0

    #@22
    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@24
    .local v15, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    #@26
    .line 1674
    array-length v2, v15

    #@27
    const v3, 0xffff

    #@2a
    and-int v10, v12, v3

    #@2c
    .local v10, "i":I
    if-le v2, v10, :cond_1

    #@2e
    .line 1676
    aget-object v13, v15, v10

    #@30
    .local v13, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_1

    #@32
    .line 1679
    const v2, 0x7fffffff

    #@35
    and-int v11, v12, v2

    #@37
    .line 1680
    .local v11, "ns":I
    iget v14, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@39
    .line 1681
    .local v14, "vs":I
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    #@3b
    int-to-long v2, v2

    #@3c
    const-wide v4, 0xffffffffL

    #@41
    and-long/2addr v2, v4

    #@42
    const-wide/high16 v4, 0x1000000000000L

    #@44
    add-long/2addr v4, v6

    #@45
    const-wide v16, -0x100000000L

    #@4a
    and-long v4, v4, v16

    #@4c
    or-long v8, v2, v4

    #@4e
    .line 1682
    .local v8, "nc":J
    if-ne v12, v14, :cond_0

    #@50
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@52
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@54
    move-object/from16 v3, p0

    #@56
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_0

    #@5c
    .line 1683
    iput v11, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    #@5e
    .line 1684
    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@60
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@63
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2789
    if-nez p1, :cond_0

    #@2
    .line 2790
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2792
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v0, p1

    #@d
    .line 2793
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    #@f
    .line 2796
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 2795
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    #@16
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    #@19
    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2780
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2771
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2762
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2788
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2779
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/util/concurrent/Callable;

    #@0
    .prologue
    .line 2770
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    #@0
    .prologue
    .line 3076
    const-wide/16 v12, 0x0

    #@2
    .local v12, "qt":J
    const-wide/16 v10, 0x0

    #@4
    .local v10, "qs":J
    const/4 v14, 0x0

    #@5
    .line 3077
    .local v14, "rc":I
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    #@9
    move-object/from16 v16, v0

    #@b
    .line 3078
    .local v16, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v16, :cond_1

    #@d
    const-wide/16 v18, 0x0

    #@f
    .line 3079
    .local v18, "st":J
    :goto_0
    move-object/from16 v0, p0

    #@11
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@13
    .line 3081
    .local v6, "c":J
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@17
    move-object/from16 v22, v0

    #@19
    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_3

    #@1b
    .line 3082
    const/4 v5, 0x0

    #@1c
    .local v5, "i":I
    :goto_1
    move-object/from16 v0, v22

    #@1e
    array-length v0, v0

    #@1f
    move/from16 v23, v0

    #@21
    move/from16 v0, v23

    #@23
    if-ge v5, v0, :cond_3

    #@25
    .line 3083
    aget-object v21, v22, v5

    #@27
    .local v21, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_0

    #@29
    .line 3084
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@2c
    move-result v17

    #@2d
    .line 3085
    .local v17, "size":I
    and-int/lit8 v23, v5, 0x1

    #@2f
    if-nez v23, :cond_2

    #@31
    .line 3086
    move/from16 v0, v17

    #@33
    int-to-long v0, v0

    #@34
    move-wide/from16 v24, v0

    #@36
    add-long v10, v10, v24

    #@38
    .line 3082
    .end local v17    # "size":I
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 3078
    .end local v5    # "i":I
    .end local v6    # "c":J
    .end local v18    # "st":J
    .end local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    move-object/from16 v0, v16

    #@3d
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    #@3f
    move-wide/from16 v18, v0

    #@41
    .restart local v18    # "st":J
    goto :goto_0

    #@42
    .line 3088
    .restart local v5    # "i":I
    .restart local v6    # "c":J
    .restart local v17    # "size":I
    .restart local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move/from16 v0, v17

    #@44
    int-to-long v0, v0

    #@45
    move-wide/from16 v24, v0

    #@47
    add-long v12, v12, v24

    #@49
    .line 3089
    move-object/from16 v0, v21

    #@4b
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@4d
    move/from16 v23, v0

    #@4f
    move/from16 v0, v23

    #@51
    int-to-long v0, v0

    #@52
    move-wide/from16 v24, v0

    #@54
    add-long v18, v18, v24

    #@56
    .line 3090
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    #@59
    move-result v23

    #@5a
    if-eqz v23, :cond_0

    #@5c
    .line 3091
    add-int/lit8 v14, v14, 0x1

    #@5e
    goto :goto_2

    #@5f
    .line 3096
    .end local v5    # "i":I
    .end local v17    # "size":I
    .end local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    #@63
    move/from16 v23, v0

    #@65
    const v24, 0xffff

    #@68
    and-int v9, v23, v24

    #@6a
    .line 3097
    .local v9, "pc":I
    const/16 v23, 0x20

    #@6c
    ushr-long v24, v6, v23

    #@6e
    move-wide/from16 v0, v24

    #@70
    long-to-int v0, v0

    #@71
    move/from16 v23, v0

    #@73
    move/from16 v0, v23

    #@75
    int-to-short v0, v0

    #@76
    move/from16 v23, v0

    #@78
    add-int v20, v9, v23

    #@7a
    .line 3098
    .local v20, "tc":I
    const/16 v23, 0x30

    #@7c
    shr-long v24, v6, v23

    #@7e
    move-wide/from16 v0, v24

    #@80
    long-to-int v0, v0

    #@81
    move/from16 v23, v0

    #@83
    add-int v4, v9, v23

    #@85
    .line 3099
    .local v4, "ac":I
    if-gez v4, :cond_4

    #@87
    .line 3100
    const/4 v4, 0x0

    #@88
    .line 3101
    :cond_4
    move-object/from16 v0, p0

    #@8a
    iget v15, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    #@8c
    .line 3102
    .local v15, "rs":I
    and-int/lit8 v23, v15, 0x4

    #@8e
    if-eqz v23, :cond_5

    #@90
    const-string/jumbo v8, "Terminated"

    #@93
    .line 3106
    .local v8, "level":Ljava/lang/String;
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    #@95
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-super/range {p0 .. p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    #@9b
    move-result-object v24

    #@9c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v23

    #@a0
    .line 3107
    const-string/jumbo v24, "["

    #@a3
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v23

    #@a7
    move-object/from16 v0, v23

    #@a9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v23

    #@ad
    .line 3108
    const-string/jumbo v24, ", parallelism = "

    #@b0
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v23

    #@b4
    move-object/from16 v0, v23

    #@b6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v23

    #@ba
    .line 3109
    const-string/jumbo v24, ", size = "

    #@bd
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v23

    #@c1
    move-object/from16 v0, v23

    #@c3
    move/from16 v1, v20

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v23

    #@c9
    .line 3110
    const-string/jumbo v24, ", active = "

    #@cc
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v23

    #@d0
    move-object/from16 v0, v23

    #@d2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v23

    #@d6
    .line 3111
    const-string/jumbo v24, ", running = "

    #@d9
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v23

    #@dd
    move-object/from16 v0, v23

    #@df
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v23

    #@e3
    .line 3112
    const-string/jumbo v24, ", steals = "

    #@e6
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v23

    #@ea
    move-object/from16 v0, v23

    #@ec
    move-wide/from16 v1, v18

    #@ee
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v23

    #@f2
    .line 3113
    const-string/jumbo v24, ", tasks = "

    #@f5
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v23

    #@f9
    move-object/from16 v0, v23

    #@fb
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v23

    #@ff
    .line 3114
    const-string/jumbo v24, ", submissions = "

    #@102
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v23

    #@106
    move-object/from16 v0, v23

    #@108
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v23

    #@10c
    .line 3115
    const-string/jumbo v24, "]"

    #@10f
    .line 3106
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v23

    #@113
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v23

    #@117
    return-object v23

    #@118
    .line 3103
    .end local v8    # "level":Ljava/lang/String;
    :cond_5
    and-int/lit8 v23, v15, 0x2

    #@11a
    if-eqz v23, :cond_6

    #@11c
    const-string/jumbo v8, "Terminating"

    #@11f
    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3

    #@121
    .line 3104
    .end local v8    # "level":Ljava/lang/String;
    :cond_6
    const/high16 v23, -0x80000000

    #@123
    and-int v23, v23, v15

    #@125
    if-eqz v23, :cond_7

    #@127
    const-string/jumbo v8, "Shutting down"

    #@12a
    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3

    #@12c
    .line 3105
    .end local v8    # "level":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "Running"

    #@12f
    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method final tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    #@1
    .line 2554
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    #@4
    move-result v0

    #@5
    .line 2556
    .local v0, "r":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@7
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@9
    .line 2557
    array-length v2, v3

    #@a
    .local v2, "wl":I
    if-lez v2, :cond_0

    #@c
    .line 2558
    add-int/lit8 v5, v2, -0x1

    #@e
    and-int/2addr v5, v0

    #@f
    and-int/lit8 v5, v5, 0x7e

    #@11
    aget-object v1, v3, v5

    #@13
    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    #@15
    .line 2559
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    #@18
    move-result v4

    #@19
    .line 2556
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "wl":I
    :cond_0
    return v4
.end method
