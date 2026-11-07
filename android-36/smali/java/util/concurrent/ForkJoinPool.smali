.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;,
        Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field static final blacklist CLEAR_TLS:I = 0x40000

.field private static final greylist-max-o CTL:J

.field static final greylist-max-o DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field static final blacklist DEFAULT_KEEPALIVE:J = 0xea60L

.field static final blacklist FIFO:I = 0x10000

.field static final blacklist INACTIVE:I = -0x80000000

.field static final blacklist INITIAL_QUEUE_CAPACITY:I = 0x40

.field static final blacklist ISCOMMON:I = 0x100000

.field static final greylist-max-o MAX_CAP:I = 0x7fff

.field private static final blacklist PARALLELISM:J

.field static final blacklist PARKED:I = -0x1

.field private static final blacklist POOLIDS:J

.field private static final blacklist POOLIDS_BASE:Ljava/lang/Object;

.field static final blacklist PRESET_SIZE:I = 0x200000

.field static final blacklist RC_MASK:J = -0x1000000000000L

.field static final blacklist RC_SHIFT:I = 0x30

.field static final blacklist RC_UNIT:J = 0x1000000000000L

.field private static final greylist-max-o RUNSTATE:J

.field static final greylist-max-o SHUTDOWN:I = 0x1

.field static final greylist-max-o SMASK:I = 0xffff

.field static final greylist-max-o SP_MASK:J = 0xffffffffL

.field static final blacklist SRC:I = 0x20000

.field static final greylist-max-o SS_SEQ:I = 0x10000

.field static final greylist-max-o STOP:I = -0x80000000

.field static final blacklist SWIDTH:I = 0x10

.field static final greylist-max-o TC_MASK:J = 0xffff00000000L

.field static final greylist-max-o TC_SHIFT:I = 0x20

.field static final greylist-max-o TC_UNIT:J = 0x100000000L

.field static final greylist-max-o TERMINATED:I = 0x2

.field private static final blacklist THREADIDS:J

.field static final blacklist TIMEOUT_SLOP:J = 0x14L

.field static final blacklist TRIMMED:I = 0x80000

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field static final greylist-max-o UC_MASK:J = -0x100000000L

.field static final blacklist UNCOMPENSATE:I = 0x10000

.field static final greylist-max-o common:Ljava/util/concurrent/ForkJoinPool;

.field public static final whitelist test-api defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static volatile greylist-max-o modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static volatile blacklist poolIds:I


# instance fields
.field final blacklist bounds:J

.field final greylist-max-o config:I

.field volatile greylist-max-o ctl:J

.field final greylist-max-o factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field final blacklist keepAlive:J

.field blacklist parallelism:I

.field blacklist queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final blacklist registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile greylist-max-o runState:I

.field final blacklist saturate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/concurrent/ForkJoinPool;",
            ">;"
        }
    .end annotation
.end field

.field volatile blacklist stealCount:J

.field blacklist termination:Ljava/util/concurrent/locks/Condition;

.field volatile blacklist threadIds:J

.field final greylist-max-o ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final greylist-max-o workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 3823
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    .line 3824
    const-class v0, Ljava/util/concurrent/ForkJoinPool;

    .line 3826
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool;>;"
    :try_start_8
    const-string v1, "poolIds"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3827
    .local v1, "poolIdsField":Ljava/lang/reflect/Field;
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v1}, Ljdk/internal/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool;->POOLIDS_BASE:Ljava/lang/Object;

    .line 3828
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v1}, Ljdk/internal/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool;->POOLIDS:J
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_1e} :catch_6b

    .line 3831
    .end local v1    # "poolIdsField":Ljava/lang/reflect/Field;
    nop

    .line 3832
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "ctl"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 3833
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "runState"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    .line 3834
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "parallelism"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool;->PARALLELISM:J

    .line 3835
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    const-string v2, "threadIds"

    invoke-virtual {v1, v0, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinPool;->THREADIDS:J

    .line 3837
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3840
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 3841
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(B)V

    goto :goto_66

    .line 3842
    :cond_5b
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$1;

    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ForkJoinPool;

    :goto_66
    sput-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 3860
    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 3861
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool;>;"
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    return-void

    .line 3829
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/concurrent/ForkJoinPool;>;"
    :catch_6b
    move-exception v1

    .line 3830
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v2, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor whitelist test-api <init>()V
    .registers 15

    .line 2574
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const-wide/32 v11, 0xea60

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2577
    return-void
.end method

.method private constructor blacklist <init>(B)V
    .registers 16
    .param p1, "forCommonPoolOnly"    # B

    .line 2754
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2755
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2756
    .local v0, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v1, 0x0

    .line 2757
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    const/16 v2, 0x100

    .line 2758
    .local v2, "maxSpares":I
    const/4 v3, 0x0

    .local v3, "pc":I
    const/4 v4, 0x0

    .line 2760
    .local v4, "preset":I
    const/16 v5, 0x7fff

    :try_start_c
    const-string v6, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 2761
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2762
    .local v6, "pp":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v6, :cond_20

    .line 2763
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v8

    .line 2764
    const/high16 v4, 0x200000

    .line 2766
    :cond_20
    const-string v8, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    .line 2767
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2768
    .local v8, "ms":Ljava/lang/String;
    if-eqz v8, :cond_32

    .line 2769
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10, v7, v5}, Ljava/lang/Math;->clamp(JII)I

    move-result v9

    move v2, v9

    .line 2770
    :cond_32
    const-string v9, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    .line 2771
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2772
    .local v9, "sf":Ljava/lang/String;
    const-string v10, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    .line 2773
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2774
    .local v10, "sh":Ljava/lang/String;
    if-nez v9, :cond_42

    if-eqz v10, :cond_72

    .line 2775
    :cond_42
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2776
    .local v11, "ldr":Ljava/lang/ClassLoader;
    if-eqz v9, :cond_5c

    .line 2777
    nop

    .line 2778
    invoke-virtual {v11, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v0, v12

    .line 2779
    :cond_5c
    if-eqz v10, :cond_72

    .line 2780
    nop

    .line 2781
    invoke-virtual {v11, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_71} :catch_73

    move-object v1, v7

    .line 2784
    .end local v6    # "pp":Ljava/lang/String;
    .end local v8    # "ms":Ljava/lang/String;
    .end local v9    # "sf":Ljava/lang/String;
    .end local v10    # "sh":Ljava/lang/String;
    .end local v11    # "ldr":Ljava/lang/ClassLoader;
    :cond_72
    goto :goto_74

    .line 2783
    :catch_73
    move-exception v6

    .line 2785
    :goto_74
    const/4 v6, 0x1

    if-nez v4, :cond_84

    .line 2786
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2787
    :cond_84
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2788
    .local v5, "p":I
    if-nez v5, :cond_8c

    move v7, v6

    goto :goto_96

    :cond_8c
    add-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x21

    shl-int v7, v6, v7

    .line 2789
    .local v7, "size":I
    :goto_96
    iput v5, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 2790
    const/high16 v8, 0x100000

    or-int/2addr v8, v4

    iput v8, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2791
    shl-int/lit8 v8, v2, 0x10

    or-int/2addr v6, v8

    int-to-long v8, v6

    iput-wide v8, p0, Ljava/util/concurrent/ForkJoinPool;->bounds:J

    .line 2792
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2793
    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2794
    const-wide/32 v8, 0xea60

    iput-wide v8, p0, Ljava/util/concurrent/ForkJoinPool;->keepAlive:J

    .line 2795
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->saturate:Ljava/util/function/Predicate;

    .line 2796
    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2797
    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2798
    new-array v6, v7, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2802
    return-void
.end method

.method synthetic constructor blacklist <init>(BLjava/util/concurrent/ForkJoinPool-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;-><init>(B)V

    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 14
    .param p1, "parallelism"    # I

    .line 2595
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const-wide/32 v9, 0xea60

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "parallelism":I
    .local v1, "parallelism":I
    invoke-direct/range {v0 .. v11}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2597
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .registers 17
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .line 2630
    const-wide/32 v9, 0xea60

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2632
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V
    .registers 29
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z
    .param p5, "corePoolSize"    # I
    .param p6, "maximumPoolSize"    # I
    .param p7, "minimumRunnable"    # I
    .param p9, "keepAliveTime"    # J
    .param p11, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "ZIII",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/concurrent/ForkJoinPool;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 2721
    .local p8, "saturate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/concurrent/ForkJoinPool;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    move-wide/from16 v3, p9

    move-object/from16 v5, p11

    invoke-direct {v0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2722
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2723
    move/from16 v6, p1

    .line 2724
    .local v6, "p":I
    if-lez v6, :cond_c5

    const/16 v7, 0x7fff

    if-gt v6, v7, :cond_c5

    if-gt v6, v2, :cond_c5

    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_c5

    .line 2726
    if-eqz v1, :cond_b7

    if-eqz v5, :cond_b7

    .line 2728
    iput v6, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 2729
    iput-object v1, v0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2730
    move-object/from16 v8, p3

    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2731
    move-object/from16 v9, p8

    iput-object v9, v0, Ljava/util/concurrent/ForkJoinPool;->saturate:Ljava/util/function/Predicate;

    .line 2732
    const/4 v10, 0x0

    if-eqz p4, :cond_36

    const/high16 v11, 0x10000

    goto :goto_37

    :cond_36
    move v11, v10

    :goto_37
    iput v11, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2733
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    const-wide/16 v13, 0x14

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Ljava/util/concurrent/ForkJoinPool;->keepAlive:J

    .line 2734
    move/from16 v11, p5

    int-to-long v12, v11

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->clamp(JII)I

    move-result v12

    .line 2735
    .local v12, "corep":I
    sub-int v13, v2, v6

    int-to-long v13, v13

    invoke-static {v13, v14, v10, v7}, Ljava/lang/Math;->clamp(JII)I

    move-result v13

    .line 2736
    .local v13, "maxSpares":I
    move/from16 v14, p7

    int-to-long v1, v14

    invoke-static {v1, v2, v10, v7}, Ljava/lang/Math;->clamp(JII)I

    move-result v1

    .line 2737
    .local v1, "minAvail":I
    const v2, 0xffff

    and-int/2addr v2, v1

    move v7, v1

    .end local v1    # "minAvail":I
    .local v7, "minAvail":I
    int-to-long v1, v2

    shl-int/lit8 v10, v13, 0x10

    move-wide v15, v1

    int-to-long v1, v10

    or-long/2addr v1, v15

    move-wide v15, v1

    int-to-long v1, v12

    const/16 v10, 0x20

    shl-long/2addr v1, v10

    or-long/2addr v1, v15

    iput-wide v1, v0, Ljava/util/concurrent/ForkJoinPool;->bounds:J

    .line 2739
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x21

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 2740
    .local v1, "size":I
    new-instance v10, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2741
    new-array v10, v1, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2742
    invoke-static {v2}, Ljava/util/concurrent/ForkJoinPool;->getAndAddPoolIds(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2743
    .local v2, "pid":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ForkJoinPool-"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2744
    .local v10, "name":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v1

    .end local v1    # "size":I
    .local v16, "size":I
    const-string v1, "-worker-"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2748
    return-void

    .line 2726
    .end local v2    # "pid":Ljava/lang/String;
    .end local v7    # "minAvail":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "corep":I
    .end local v13    # "maxSpares":I
    .end local v16    # "size":I
    :cond_b7
    move-object/from16 v8, p3

    move/from16 v11, p5

    move/from16 v14, p7

    move-object/from16 v9, p8

    .line 2727
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2724
    :cond_c5
    move-object/from16 v8, p3

    move/from16 v11, p5

    move/from16 v14, p7

    move-object/from16 v9, p8

    .line 2725
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private greylist-max-o awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I
    .registers 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 1875
    return v2

    .line 1876
    :cond_8
    iget v3, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    const/high16 v4, 0x10000

    add-int/2addr v3, v4

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 1877
    .local v3, "p":I
    const/4 v4, 0x0

    .line 1878
    .local v4, "idle":Z
    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v5, :cond_17

    .line 1879
    return v2

    .line 1880
    :cond_17
    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .local v5, "sp":J
    iget-wide v7, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1881
    .local v7, "pc":J
    const/high16 v9, -0x80000000

    or-int/2addr v9, v3

    iput v9, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1883
    :goto_25
    long-to-int v9, v7

    iput v9, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1884
    const-wide/high16 v9, 0x1000000000000L

    sub-long v9, v7, v9

    const-wide v11, -0x100000000L

    and-long/2addr v9, v11

    or-long/2addr v9, v5

    move-wide v11, v9

    .local v11, "qc":J
    invoke-direct {v0, v7, v8, v9, v10}, Ljava/util/concurrent/ForkJoinPool;->compareAndExchangeCtl(JJ)J

    move-result-wide v9

    move-wide v13, v9

    .end local v7    # "pc":J
    .local v13, "pc":J
    cmp-long v7, v7, v9

    if-nez v7, :cond_e4

    .line 1886
    const-wide/high16 v7, -0x1000000000000L

    and-long/2addr v7, v11

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x1

    const/4 v15, 0x0

    if-gtz v7, :cond_65

    .line 1887
    invoke-direct {v0, v8}, Ljava/util/concurrent/ForkJoinPool;->hasTasks(Z)Z

    move-result v7

    if-eqz v7, :cond_59

    iget v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-gez v7, :cond_58

    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool;->reactivate()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v7

    if-ne v7, v1, :cond_59

    .line 1888
    :cond_58
    return v15

    .line 1889
    :cond_59
    iget v7, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-eqz v7, :cond_64

    invoke-direct {v0, v15, v15}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1890
    return v2

    .line 1891
    :cond_64
    const/4 v4, 0x1

    .line 1893
    :cond_65
    iget-object v7, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1894
    .local v7, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v7, :cond_6b

    move v8, v15

    goto :goto_75

    :cond_6b
    move/from16 v16, v8

    array-length v8, v7

    const v17, 0xffff

    and-int v8, v8, v17

    shl-int/lit8 v8, v8, 0x1

    :goto_75
    or-int/lit8 v8, v8, 0xf

    .line 1895
    .local v8, "spins":I
    :goto_77
    iget v9, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v3, v9

    if-gez v9, :cond_86

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_86

    .line 1896
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    const-wide/16 v9, 0x0

    goto :goto_77

    .line 1897
    :cond_86
    if-gez v3, :cond_e0

    .line 1898
    if-eqz v4, :cond_93

    iget-wide v9, v0, Ljava/util/concurrent/ForkJoinPool;->keepAlive:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v9, v9, v16

    goto :goto_95

    :cond_93
    const-wide/16 v9, 0x0

    .line 1899
    .local v9, "deadline":J
    :goto_95
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1901
    :goto_98
    iget v15, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v15, :cond_9d

    .line 1902
    return v2

    .line 1903
    :cond_9d
    iput v2, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1904
    iget v15, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-gez v15, :cond_ac

    .line 1905
    if-eqz v4, :cond_a9

    .line 1906
    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(J)V

    goto :goto_ac

    .line 1908
    :cond_a9
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    .line 1910
    :cond_ac
    :goto_ac
    const/4 v15, 0x0

    iput v15, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1911
    iget v15, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v15, :cond_b9

    .line 1912
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 1913
    move v15, v3

    goto :goto_e1

    .line 1915
    :cond_b9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1916
    if-eqz v4, :cond_db

    .line 1917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v9, v17

    const-wide/16 v19, 0x14

    cmp-long v15, v17, v19

    if-gez v15, :cond_d9

    .line 1918
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ForkJoinPool;->tryTrim(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v15

    if-eqz v15, :cond_d1

    .line 1919
    return v2

    .line 1921
    :cond_d1
    move v15, v3

    .end local v3    # "p":I
    .local v15, "p":I
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->keepAlive:J

    add-long/2addr v9, v2

    move v3, v15

    const/4 v2, -0x1

    const/4 v15, 0x0

    goto :goto_98

    .line 1917
    .end local v15    # "p":I
    .restart local v3    # "p":I
    :cond_d9
    move v15, v3

    .end local v3    # "p":I
    .restart local v15    # "p":I
    goto :goto_dc

    .line 1916
    .end local v15    # "p":I
    .restart local v3    # "p":I
    :cond_db
    move v15, v3

    .line 1901
    .end local v3    # "p":I
    .restart local v15    # "p":I
    :goto_dc
    move v3, v15

    const/4 v2, -0x1

    const/4 v15, 0x0

    goto :goto_98

    .line 1897
    .end local v9    # "deadline":J
    .end local v15    # "p":I
    .restart local v3    # "p":I
    :cond_e0
    move v15, v3

    .line 1926
    .end local v3    # "p":I
    .restart local v15    # "p":I
    :goto_e1
    const/16 v16, 0x0

    return v16

    .line 1884
    .end local v7    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "spins":I
    .end local v15    # "p":I
    .restart local v3    # "p":I
    :cond_e4
    move-wide v7, v13

    const/4 v2, -0x1

    goto/16 :goto_25
.end method

.method private blacklist canStop()Z
    .registers 7

    .line 1934
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1936
    .local v0, "c":J
    :goto_2
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v2, :cond_7

    .line 1937
    goto :goto_20

    .line 1938
    :cond_7
    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_24

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinPool;->hasTasks(Z)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_24

    .line 1940
    :cond_18
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v4, v2

    .end local v0    # "c":J
    .local v4, "c":J
    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    move-wide v0, v4

    .line 1941
    .end local v4    # "c":J
    .restart local v0    # "c":J
    :goto_20
    const/4 v2, 0x1

    return v2

    .line 1940
    .end local v0    # "c":J
    .restart local v4    # "c":J
    :cond_22
    move-wide v0, v4

    goto :goto_2

    .line 1939
    .end local v4    # "c":J
    .restart local v0    # "c":J
    :cond_24
    :goto_24
    return v3
.end method

.method private static greylist-max-o checkPermission()V
    .registers 4

    .line 948
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    move-object v1, v0

    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_19

    .line 949
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    move-object v2, v0

    .local v2, "perm":Ljava/lang/RuntimePermission;
    if-nez v0, :cond_16

    .line 950
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v3, "modifyThread"

    invoke-direct {v0, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    sput-object v0, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 952
    :cond_16
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 954
    .end local v2    # "perm":Ljava/lang/RuntimePermission;
    :cond_19
    return-void
.end method

.method public static whitelist test-api commonPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 1

    .line 2819
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static blacklist commonQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 1

    .line 2406
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->externalQueue(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    return-object v0
.end method

.method private blacklist compareAndExchangeCtl(JJ)J
    .registers 13
    .param p1, "c"    # J
    .param p3, "v"    # J

    .line 1550
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "c":J
    .end local p3    # "v":J
    .local v4, "c":J
    .local v6, "v":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndExchangeLong(Ljava/lang/Object;JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private blacklist compareAndSetCtl(JJ)Z
    .registers 13
    .param p1, "c"    # J
    .param p3, "v"    # J

    .line 1547
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "c":J
    .end local p3    # "v":J
    .local v4, "c":J
    .local v6, "v":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method private blacklist compensatedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 8
    .param p1, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3752
    if-eqz p1, :cond_2c

    .line 3755
    :goto_2
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3756
    .local v0, "c":J
    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3757
    goto :goto_25

    .line 3758
    :cond_b
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(JZ)I

    move-result v2

    move v3, v2

    .local v3, "comp":I
    if-ltz v2, :cond_2b

    .line 3759
    if-nez v3, :cond_18

    const-wide/16 v4, 0x0

    goto :goto_1a

    :cond_18
    const-wide/high16 v4, 0x1000000000000L

    .line 3761
    .local v4, "post":J
    :goto_1a
    :try_start_1a
    invoke-interface {p1}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    .line 3763
    .local v2, "done":Z
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->getAndAddCtl(J)J

    .line 3764
    nop

    .line 3765
    if-eqz v2, :cond_2b

    .line 3766
    nop

    .line 3769
    .end local v0    # "c":J
    .end local v2    # "done":Z
    .end local v3    # "comp":I
    .end local v4    # "post":J
    :goto_25
    return-void

    .line 3763
    .restart local v0    # "c":J
    .restart local v3    # "comp":I
    .restart local v4    # "post":J
    :catchall_26
    move-exception v2

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ForkJoinPool;->getAndAddCtl(J)J

    .line 3764
    throw v2

    .line 3768
    .end local v0    # "c":J
    .end local v3    # "comp":I
    .end local v4    # "post":J
    :cond_2b
    goto :goto_2

    .line 3752
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist createWorker()Z
    .registers 5

    .line 1581
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 1582
    .local v0, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v1, 0x0

    .line 1583
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1585
    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_4
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-ltz v3, :cond_16

    if-eqz v0, :cond_16

    .line 1586
    invoke-interface {v0, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_16

    .line 1590
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_17

    .line 1591
    const/4 v3, 0x1

    return v3

    .line 1595
    :cond_16
    goto :goto_19

    .line 1593
    :catchall_17
    move-exception v3

    .line 1594
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v1, v3

    .line 1596
    .end local v3    # "rex":Ljava/lang/Throwable;
    :goto_19
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1597
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist externalHelpQuiesce(JZ)I
    .registers 14
    .param p1, "nanos"    # J
    .param p3, "interruptible"    # Z

    .line 2272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    .line 2274
    .local v2, "parkTime":J
    :goto_6
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Ljava/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    move-object v6, v5

    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_14

    .line 2275
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2276
    const-wide/16 v2, 0x0

    goto :goto_4f

    .line 2278
    :cond_14
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->canStop()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1c

    .line 2279
    return v7

    .line 2280
    :cond_1c
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-nez v5, :cond_28

    .line 2281
    const-wide/16 v2, 0x400

    .line 2282
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4f

    .line 2284
    :cond_28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    cmp-long v5, v8, p1

    if-lez v5, :cond_32

    .line 2285
    return v4

    .line 2286
    :cond_32
    if-eqz p3, :cond_3c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2287
    const/4 v4, -0x1

    return v4

    .line 2289
    :cond_3c
    invoke-static {p0, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2290
    const/16 v4, 0x8

    ushr-long v4, p1, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4f

    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gez v4, :cond_4f

    .line 2291
    shl-long/2addr v2, v7

    .line 2293
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4f
    :goto_4f
    goto :goto_6
.end method

.method private static blacklist externalQueue(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 6
    .param p0, "p"    # Ljava/util/concurrent/ForkJoinPool;

    .line 2396
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 2397
    .local v0, "r":I
    if-eqz p0, :cond_19

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_19

    array-length v1, v2

    move v3, v1

    .local v3, "n":I
    if-lez v1, :cond_19

    if-eqz v0, :cond_19

    .line 2399
    add-int/lit8 v1, v3, -0x1

    shl-int/lit8 v4, v0, 0x1

    and-int/2addr v1, v4

    aget-object v1, v2, v1

    goto :goto_1a

    .end local v2    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    :cond_19
    const/4 v1, 0x0

    .line 2397
    :goto_1a
    return-object v1
.end method

.method private blacklist getAndAddCtl(J)J
    .registers 9
    .param p1, "v"    # J

    .line 1553
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    .end local p1    # "v":J
    .local v4, "v":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private static blacklist getAndAddPoolIds(I)I
    .registers 5
    .param p0, "x"    # I

    .line 1562
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->POOLIDS_BASE:Ljava/lang/Object;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->POOLIDS:J

    invoke-virtual {v0, v1, v2, v3, p0}, Ljdk/internal/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method private blacklist getAndBitwiseOrRunState(I)I
    .registers 5
    .param p1, "v"    # I

    .line 1556
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->getAndBitwiseOrInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method private blacklist getAndSetParallelism(I)I
    .registers 5
    .param p1, "v"    # I

    .line 1565
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool;->PARALLELISM:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getCommonPoolParallelism()I
    .registers 1

    .line 3220
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v0

    return v0
.end method

.method private blacklist getParallelismOpaque()I
    .registers 4

    .line 1568
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinPool;->PARALLELISM:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getIntOpaque(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static greylist-max-o getSurplusQueuedTaskCount()I
    .registers 10

    .line 2477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object v4, v0

    .local v4, "pool":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v0, :cond_46

    iget-object v0, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v0

    .local v5, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_46

    .line 2480
    iget v0, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v6, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v0, v6

    .line 2481
    .local v0, "n":I
    iget v6, v4, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 2482
    .local v6, "p":I
    iget-wide v7, v4, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v9, 0x30

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-short v7, v7

    .line 2483
    .local v7, "a":I
    ushr-int/lit8 v8, v6, 0x1

    move v6, v8

    if-le v7, v8, :cond_2c

    goto :goto_43

    .line 2484
    :cond_2c
    ushr-int/lit8 v2, v6, 0x1

    move v6, v2

    if-le v7, v2, :cond_33

    const/4 v2, 0x1

    goto :goto_43

    .line 2485
    :cond_33
    ushr-int/lit8 v2, v6, 0x1

    move v6, v2

    if-le v7, v2, :cond_3a

    const/4 v2, 0x2

    goto :goto_43

    .line 2486
    :cond_3a
    ushr-int/lit8 v2, v6, 0x1

    move v6, v2

    if-le v7, v2, :cond_41

    const/4 v2, 0x4

    goto :goto_43

    .line 2487
    :cond_41
    const/16 v2, 0x8

    :goto_43
    sub-int v2, v0, v2

    .line 2483
    return v2

    .line 2489
    .end local v0    # "n":I
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v4    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v5    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "p":I
    .end local v7    # "a":I
    :cond_46
    return v2
.end method

.method private blacklist hasTasks(Z)Z
    .registers 14
    .param p1, "submissionsOnly"    # Z

    .line 1794
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_6

    :cond_5
    move v1, v0

    .line 1795
    .local v1, "step":I
    :goto_6
    const/4 v2, 0x0

    .line 1796
    .local v2, "checkSum":I
    :goto_7
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1797
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1798
    .local v3, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    if-nez v3, :cond_13

    move v5, v4

    goto :goto_14

    :cond_13
    array-length v5, v3

    .local v5, "n":I
    :goto_14
    const/4 v6, 0x0

    .line 1799
    .local v6, "sum":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_16
    if-ge v7, v5, :cond_32

    .line 1801
    aget-object v8, v3, v7

    move-object v9, v8

    .local v9, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_30

    .line 1802
    iget v8, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    if-gtz v8, :cond_2f

    iget v8, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v10, v8

    .local v10, "s":I
    iget v11, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v8, v11, :cond_29

    goto :goto_2f

    .line 1804
    :cond_29
    shl-int/lit8 v8, v10, 0x10

    add-int/2addr v8, v7

    add-int/2addr v8, v0

    add-int/2addr v6, v8

    goto :goto_30

    .line 1803
    .end local v10    # "s":I
    :cond_2f
    :goto_2f
    return v0

    .line 1799
    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_30
    :goto_30
    add-int/2addr v7, v1

    goto :goto_16

    .line 1807
    .end local v7    # "i":I
    :cond_32
    move v7, v6

    .end local v2    # "checkSum":I
    .local v7, "checkSum":I
    if-ne v2, v6, :cond_36

    .line 1808
    return v4

    .line 1809
    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "n":I
    .end local v6    # "sum":I
    :cond_36
    move v2, v7

    goto :goto_7
.end method

.method static blacklist helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 6
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;

    .line 2422
    const/4 v0, 0x0

    .line 2423
    .local v0, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v2, v1

    .local v2, "t":Ljava/lang/Thread;
    instance-of v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_15

    .line 2424
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v1

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v1, p0, :cond_20

    .line 2425
    iget-object v0, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    goto :goto_20

    .line 2427
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_15
    instance-of v1, p0, Ljava/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_20

    .line 2428
    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->externalQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 2429
    :cond_20
    :goto_20
    if-eqz v0, :cond_25

    .line 2430
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->helpAsyncBlocker(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 2431
    :cond_25
    return-void
.end method

.method private blacklist helpQuiesce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JZ)I
    .registers 36
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "nanos"    # J
    .param p4, "interruptible"    # Z

    .line 2184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .local v2, "startTime":J
    const-wide/16 v4, 0x0

    .line 2186
    .local v4, "parkTime":J
    const/4 v6, 0x0

    if-eqz v1, :cond_197

    iget v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v8, v7

    .local v8, "phase":I
    if-gez v7, :cond_18

    move-wide/from16 v23, v2

    move/from16 v16, v6

    goto/16 :goto_19b

    .line 2188
    :cond_18
    move v7, v8

    .local v7, "activePhase":I
    const/high16 v9, -0x80000000

    or-int/2addr v9, v8

    .line 2189
    .local v9, "inactivePhase":I
    iget v10, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v10, "wsrc":I
    const/4 v11, 0x0

    .line 2190
    .local v11, "r":I
    const/4 v12, 0x1

    .line 2192
    .local v12, "locals":Z
    :goto_20
    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    const/4 v14, 0x1

    if-gez v13, :cond_28

    .line 2193
    iput v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 2194
    return v14

    .line 2196
    :cond_28
    if-eqz v12, :cond_35

    .line 2197
    :goto_2a
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v13

    move-object v15, v13

    .local v15, "u":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_35

    .line 2198
    invoke-virtual {v15}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_2a

    .line 2200
    .end local v15    # "u":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_35
    const/4 v13, 0x0

    .local v13, "rescan":Z
    move v12, v6

    move v15, v6

    .line 2201
    .local v15, "busy":Z
    move/from16 v16, v6

    iget-object v6, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v6

    .local v17, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v6, :cond_47

    move-object/from16 v6, v17

    move/from16 v17, v14

    move/from16 v14, v16

    goto :goto_4c

    :cond_47
    move-object/from16 v6, v17

    move/from16 v17, v14

    .end local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v6, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    array-length v14, v6

    .local v14, "n":I
    :goto_4c
    add-int/lit8 v18, v14, -0x1

    .line 2202
    .local v18, "m":I
    move/from16 v19, v14

    .local v19, "i":I
    :goto_50
    if-lez v19, :cond_12c

    .line 2203
    and-int v20, v18, v11

    move/from16 v21, v20

    .local v21, "j":I
    aget-object v20, v6, v20

    move-object/from16 v22, v20

    .local v22, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_10e

    move-wide/from16 v23, v2

    move-object/from16 v2, v22

    .end local v22    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v23, "startTime":J
    if-eq v2, v1, :cond_103

    .line 2204
    const/high16 v3, 0x20000

    or-int v3, v21, v3

    .line 2205
    .local v3, "src":I
    :goto_66
    move-object/from16 v20, v6

    .end local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v20, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget-object v6, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 2206
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    move/from16 v22, v8

    .end local v8    # "phase":I
    .local v22, "phase":I
    iget v8, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2207
    .local v8, "b":I
    if-eqz v6, :cond_f6

    move/from16 v25, v11

    .end local v11    # "r":I
    .local v25, "r":I
    array-length v11, v6

    move/from16 v26, v11

    .local v26, "cap":I
    if-gtz v11, :cond_7f

    .line 2208
    move/from16 v27, v12

    move/from16 v29, v13

    move/from16 v30, v14

    goto/16 :goto_fe

    .line 2209
    :cond_7f
    add-int/lit8 v11, v26, -0x1

    and-int/2addr v11, v8

    .local v11, "k":I
    move/from16 v27, v12

    .end local v12    # "locals":Z
    .local v27, "locals":Z
    add-int/lit8 v12, v8, 0x1

    .local v12, "nb":I
    add-int/lit8 v28, v26, -0x1

    and-int v28, v28, v12

    .line 2210
    .local v28, "nk":I
    move/from16 v29, v13

    .end local v13    # "rescan":Z
    .local v29, "rescan":Z
    aget-object v13, v6, v11

    .line 2211
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v30, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual/range {v30 .. v30}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 2212
    move/from16 v30, v14

    .end local v14    # "n":I
    .local v30, "n":I
    iget v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v14, v8, :cond_e8

    iget-object v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v14, v6, :cond_e8

    aget-object v14, v6, v11

    if-eq v14, v13, :cond_a2

    .line 2213
    goto :goto_e8

    .line 2214
    :cond_a2
    if-nez v13, :cond_c8

    .line 2215
    if-nez v29, :cond_fe

    .line 2216
    aget-object v14, v6, v28

    if-nez v14, :cond_c2

    iget v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v14, v8

    if-lez v14, :cond_b0

    goto :goto_c2

    .line 2218
    :cond_b0
    if-nez v15, :cond_fe

    iget-object v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v14, :cond_fe

    iget v14, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v14, :cond_fe

    .line 2220
    const/4 v14, 0x1

    move v15, v14

    move/from16 v8, v22

    move/from16 v13, v29

    .end local v15    # "busy":Z
    .local v14, "busy":Z
    goto/16 :goto_11e

    .line 2217
    .end local v14    # "busy":Z
    .restart local v15    # "busy":Z
    :cond_c2
    :goto_c2
    const/4 v14, 0x1

    move v13, v14

    move/from16 v8, v22

    .end local v29    # "rescan":Z
    .local v14, "rescan":Z
    goto/16 :goto_11e

    .line 2224
    .end local v14    # "rescan":Z
    .restart local v29    # "rescan":Z
    :cond_c8
    if-gez v22, :cond_cf

    .line 2225
    move v14, v7

    .end local v22    # "phase":I
    .local v14, "phase":I
    iput v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v8, v14

    goto :goto_ea

    .line 2226
    .end local v14    # "phase":I
    .restart local v22    # "phase":I
    :cond_cf
    invoke-static {v6, v11, v13}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v14

    if-eqz v14, :cond_e8

    .line 2227
    iput v12, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2228
    iput v3, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2229
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2230
    iput v10, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2231
    move/from16 v14, v17

    .end local v27    # "locals":Z
    .local v14, "locals":Z
    move/from16 v27, v17

    .line 2232
    .end local v29    # "rescan":Z
    .local v27, "rescan":Z
    move v12, v14

    move/from16 v8, v22

    move/from16 v13, v27

    goto :goto_138

    .line 2234
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v11    # "k":I
    .end local v12    # "nb":I
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "locals":Z
    .end local v26    # "cap":I
    .end local v28    # "nk":I
    .local v27, "locals":Z
    .restart local v29    # "rescan":Z
    :cond_e8
    :goto_e8
    move/from16 v8, v22

    .end local v22    # "phase":I
    .local v8, "phase":I
    :goto_ea
    move-object/from16 v6, v20

    move/from16 v11, v25

    move/from16 v12, v27

    move/from16 v13, v29

    move/from16 v14, v30

    goto/16 :goto_66

    .line 2207
    .end local v25    # "r":I
    .end local v27    # "locals":Z
    .end local v29    # "rescan":Z
    .end local v30    # "n":I
    .restart local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v8, "b":I
    .local v11, "r":I
    .local v12, "locals":Z
    .local v13, "rescan":Z
    .local v14, "n":I
    .restart local v22    # "phase":I
    :cond_f6
    move/from16 v25, v11

    move/from16 v27, v12

    move/from16 v29, v13

    move/from16 v30, v14

    .line 2202
    .end local v3    # "src":I
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v11    # "r":I
    .end local v12    # "locals":Z
    .end local v13    # "rescan":Z
    .end local v14    # "n":I
    .restart local v25    # "r":I
    .restart local v27    # "locals":Z
    .restart local v29    # "rescan":Z
    .restart local v30    # "n":I
    :cond_fe
    :goto_fe
    move/from16 v8, v22

    move/from16 v13, v29

    goto :goto_11e

    .line 2203
    .end local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "phase":I
    .end local v25    # "r":I
    .end local v27    # "locals":Z
    .end local v29    # "rescan":Z
    .end local v30    # "n":I
    .local v6, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v8, "phase":I
    .restart local v11    # "r":I
    .restart local v12    # "locals":Z
    .restart local v13    # "rescan":Z
    .restart local v14    # "n":I
    :cond_103
    move-object/from16 v20, v6

    move/from16 v25, v11

    move/from16 v27, v12

    move/from16 v29, v13

    move/from16 v30, v14

    .end local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "r":I
    .end local v12    # "locals":Z
    .end local v13    # "rescan":Z
    .end local v14    # "n":I
    .restart local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v25    # "r":I
    .restart local v27    # "locals":Z
    .restart local v29    # "rescan":Z
    .restart local v30    # "n":I
    goto :goto_11c

    .end local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v23    # "startTime":J
    .end local v25    # "r":I
    .end local v27    # "locals":Z
    .end local v29    # "rescan":Z
    .end local v30    # "n":I
    .local v2, "startTime":J
    .restart local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "r":I
    .restart local v12    # "locals":Z
    .restart local v13    # "rescan":Z
    .restart local v14    # "n":I
    .local v22, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_10e
    move-wide/from16 v23, v2

    move-object/from16 v20, v6

    move/from16 v25, v11

    move/from16 v27, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v2, v22

    .line 2202
    .end local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "r":I
    .end local v12    # "locals":Z
    .end local v13    # "rescan":Z
    .end local v14    # "n":I
    .end local v22    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v23    # "startTime":J
    .restart local v25    # "r":I
    .restart local v27    # "locals":Z
    .restart local v29    # "rescan":Z
    .restart local v30    # "n":I
    :goto_11c
    move/from16 v13, v29

    .end local v29    # "rescan":Z
    .restart local v13    # "rescan":Z
    :goto_11e
    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v11, v25, 0x1

    move-object/from16 v6, v20

    move-wide/from16 v2, v23

    move/from16 v12, v27

    move/from16 v14, v30

    .end local v25    # "r":I
    .restart local v11    # "r":I
    goto/16 :goto_50

    .end local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "j":I
    .end local v23    # "startTime":J
    .end local v27    # "locals":Z
    .end local v30    # "n":I
    .local v2, "startTime":J
    .restart local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v12    # "locals":Z
    .restart local v14    # "n":I
    :cond_12c
    move-wide/from16 v23, v2

    move-object/from16 v20, v6

    move/from16 v25, v11

    move/from16 v27, v12

    move/from16 v29, v13

    move/from16 v30, v14

    .line 2237
    .end local v2    # "startTime":J
    .end local v6    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "r":I
    .end local v14    # "n":I
    .end local v19    # "i":I
    .restart local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v23    # "startTime":J
    .restart local v25    # "r":I
    .restart local v30    # "n":I
    :goto_138
    if-eqz v13, :cond_13b

    .line 2238
    goto :goto_186

    .line 2239
    :cond_13b
    if-ltz v8, :cond_145

    .line 2240
    const-wide/16 v2, 0x0

    .line 2241
    .end local v4    # "parkTime":J
    .local v2, "parkTime":J
    move v4, v9

    .end local v8    # "phase":I
    .local v4, "phase":I
    iput v9, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v8, v4

    move-wide v4, v2

    goto :goto_186

    .line 2243
    .end local v2    # "parkTime":J
    .local v4, "parkTime":J
    .restart local v8    # "phase":I
    :cond_145
    if-nez v15, :cond_14a

    .line 2244
    iput v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 2245
    return v17

    .line 2247
    :cond_14a
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_157

    .line 2248
    const-wide/16 v2, 0x400

    .line 2249
    .end local v4    # "parkTime":J
    .restart local v2    # "parkTime":J
    invoke-static {}, Ljava/lang/Thread;->yield()V

    move-wide v4, v2

    goto :goto_186

    .line 2251
    .end local v2    # "parkTime":J
    .restart local v4    # "parkTime":J
    :cond_157
    if-eqz p4, :cond_162

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_162

    move/from16 v2, v17

    goto :goto_164

    :cond_162
    move/from16 v2, v16

    :goto_164
    move v3, v2

    .local v3, "interrupted":Z
    if-nez v2, :cond_18e

    .line 2252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    sub-long v21, v21, v23

    cmp-long v2, v21, p2

    if-lez v2, :cond_172

    goto :goto_18e

    .line 2257
    :cond_172
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2258
    const/16 v2, 0x8

    ushr-long v21, p2, v2

    cmp-long v2, v4, v21

    if-gez v2, :cond_186

    const-wide/32 v21, 0x100000

    cmp-long v2, v4, v21

    if-gez v2, :cond_186

    .line 2259
    shl-long v4, v4, v17

    .line 2261
    .end local v3    # "interrupted":Z
    .end local v13    # "rescan":Z
    .end local v15    # "busy":Z
    .end local v18    # "m":I
    .end local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v30    # "n":I
    :cond_186
    :goto_186
    move/from16 v6, v16

    move-wide/from16 v2, v23

    move/from16 v11, v25

    goto/16 :goto_20

    .line 2253
    .restart local v3    # "interrupted":Z
    .restart local v13    # "rescan":Z
    .restart local v15    # "busy":Z
    .restart local v18    # "m":I
    .restart local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v30    # "n":I
    :cond_18e
    :goto_18e
    iput v7, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 2254
    if-eqz v3, :cond_194

    const/4 v6, -0x1

    goto :goto_196

    :cond_194
    move/from16 v6, v16

    :goto_196
    return v6

    .line 2186
    .end local v3    # "interrupted":Z
    .end local v7    # "activePhase":I
    .end local v8    # "phase":I
    .end local v9    # "inactivePhase":I
    .end local v10    # "wsrc":I
    .end local v12    # "locals":Z
    .end local v13    # "rescan":Z
    .end local v15    # "busy":Z
    .end local v18    # "m":I
    .end local v20    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v23    # "startTime":J
    .end local v25    # "r":I
    .end local v30    # "n":I
    .local v2, "startTime":J
    :cond_197
    move-wide/from16 v23, v2

    move/from16 v16, v6

    .line 2187
    .end local v2    # "startTime":J
    .restart local v23    # "startTime":J
    :goto_19b
    return v16
.end method

.method static final blacklist helpQuiescePool(Ljava/util/concurrent/ForkJoinPool;JZ)I
    .registers 8
    .param p0, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p1, "nanos"    # J
    .param p3, "interruptible"    # Z

    .line 2307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1d

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object v3, v0

    .local v3, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v0, :cond_1d

    if-eq v3, p0, :cond_16

    if-nez p0, :cond_1d

    .line 2310
    :cond_16
    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v3, v0, p1, p2, p3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiesce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JZ)I

    move-result v0

    return v0

    .line 2311
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_1d
    move-object v0, p0

    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    if-nez p0, :cond_28

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v0, v2

    if-eqz v2, :cond_26

    goto :goto_28

    .line 2314
    :cond_26
    const/4 v2, 0x0

    return v2

    .line 2312
    :cond_28
    :goto_28
    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ForkJoinPool;->externalHelpQuiesce(JZ)I

    move-result v2

    return v2
.end method

.method private blacklist incrementThreadIds()J
    .registers 7

    .line 1559
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->THREADIDS:J

    const-wide/16 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static whitelist test-api managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 4
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3742
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_15

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object v2, v0

    .local v2, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v0, :cond_15

    .line 3744
    invoke-direct {v2, p0}, Ljava/util/concurrent/ForkJoinPool;->compensatedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    goto :goto_18

    .line 3746
    .end local v2    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_15
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->unmanagedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    .line 3747
    :goto_18
    return-void
.end method

.method private blacklist pollScan(Z)Ljava/util/concurrent/ForkJoinTask;
    .registers 10
    .param p1, "submissionsOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1952
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v0

    .line 1953
    .local v0, "r":I
    if-eqz p1, :cond_8

    .line 1954
    and-int/lit8 v0, v0, -0x2

    .line 1955
    :cond_8
    if-eqz p1, :cond_c

    const/4 v1, 0x2

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    .line 1957
    .local v1, "step":I
    :goto_d
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-ltz v2, :cond_30

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_30

    array-length v2, v3

    move v4, v2

    .local v4, "n":I
    if-lez v2, :cond_30

    .line 1958
    move v2, v4

    .local v2, "i":I
    :goto_1b
    if-lez v2, :cond_30

    .line 1959
    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v0

    aget-object v5, v3, v5

    move-object v6, v5

    .local v6, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2d

    .line 1960
    invoke-virtual {v6, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v5

    move-object v7, v5

    .local v7, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_2d

    .line 1961
    return-object v7

    .line 1958
    .end local v7    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2d
    sub-int/2addr v2, v1

    add-int/2addr v0, v1

    goto :goto_1b

    .line 1964
    .end local v2    # "i":I
    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "n":I
    .end local v6    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_30
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 6
    .param p1, "signalIfEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2376
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 2377
    if-eqz p2, :cond_27

    .line 2378
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1b

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v0, p0, :cond_1b

    .line 2380
    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_23

    .line 2382
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1b
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinTask;->markPoolSubmission()V

    .line 2383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->submissionQueue(Z)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 2385
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_23
    invoke-virtual {v0, p2, p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool;Z)V

    .line 2386
    return-object p2

    .line 2377
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist reactivate()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 13

    .line 1747
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1748
    .local v0, "c":J
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_45

    array-length v2, v3

    move v4, v2

    .local v4, "n":I
    if-lez v2, :cond_45

    .line 1750
    :goto_b
    long-to-int v2, v0

    const v5, 0x7fffffff

    and-int/2addr v2, v5

    .line 1751
    .local v2, "sp":I
    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    aget-object v5, v3, v5

    .line 1752
    .local v5, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v0

    const-wide v8, -0x100000000L

    and-long/2addr v6, v8

    .line 1753
    .local v6, "ac":J
    if-eqz v2, :cond_45

    if-nez v5, :cond_23

    .line 1754
    goto :goto_45

    .line 1755
    :cond_23
    iget v8, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v8, v6

    invoke-direct {p0, v0, v1, v8, v9}, Ljava/util/concurrent/ForkJoinPool;->compareAndExchangeCtl(JJ)J

    move-result-wide v8

    move-wide v10, v8

    .end local v0    # "c":J
    .local v10, "c":J
    cmp-long v0, v0, v8

    if-nez v0, :cond_43

    .line 1757
    iget-object v0, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1758
    .local v0, "owner":Ljava/lang/Thread;
    iput v2, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1759
    iget v1, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_42

    .line 1760
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1761
    :cond_42
    return-object v5

    .line 1763
    .end local v0    # "owner":Ljava/lang/Thread;
    .end local v2    # "sp":I
    .end local v5    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "ac":J
    :cond_43
    move-wide v0, v10

    goto :goto_b

    .line 1765
    .end local v4    # "n":I
    .end local v10    # "c":J
    .local v0, "c":J
    :cond_45
    :goto_45
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;II)I
    .registers 22
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "prevSrc"    # I
    .param p3, "r"    # I

    .line 1840
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1841
    .local v3, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_f

    if-nez v3, :cond_d

    goto :goto_f

    :cond_d
    array-length v4, v3

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v4, 0x0

    .line 1842
    .local v4, "n":I
    :goto_10
    ushr-int/lit8 v5, p3, 0x10

    or-int/lit8 v5, v5, 0x1

    .local v5, "step":I
    move v6, v4

    move v7, v6

    move/from16 v6, p3

    .end local p3    # "r":I
    .local v6, "r":I
    .local v7, "i":I
    :goto_18
    if-lez v7, :cond_88

    .line 1844
    add-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v6

    move v9, v8

    .local v9, "j":I
    aget-object v8, v3, v8

    move-object v10, v8

    .local v10, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_7e

    iget-object v8, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v11, v8

    .local v11, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_7b

    array-length v8, v11

    move v12, v8

    .local v12, "cap":I
    if-lez v8, :cond_78

    .line 1846
    const/high16 v8, 0x20000

    or-int/2addr v8, v9

    .local v8, "src":I
    iget v13, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1847
    .local v13, "b":I
    add-int/lit8 v14, v12, -0x1

    and-int/2addr v14, v13

    .local v14, "k":I
    add-int/lit8 v15, v13, 0x1

    .local v15, "nb":I
    add-int/lit8 v16, v12, -0x1

    and-int v16, v16, v15

    .line 1848
    .local v16, "nk":I
    aget-object v2, v11, v14

    .line 1849
    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v17, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual/range {v17 .. v17}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 1850
    move-object/from16 v17, v3

    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v17, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v3, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v3, v13, :cond_48

    .line 1851
    return v1

    .line 1852
    :cond_48
    if-eqz v2, :cond_6b

    invoke-static {v11, v14, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1853
    iput v15, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1854
    iput v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1855
    shl-int/lit8 v3, v8, 0x10

    add-int/2addr v3, v8

    if-eq v3, v1, :cond_64

    iget v3, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v3, v15, :cond_64

    aget-object v3, v11, v16

    if-eqz v3, :cond_64

    .line 1857
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1858
    :cond_64
    invoke-virtual {v0, v2, v10}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->topLevelExec(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1859
    shl-int/lit8 v3, v1, 0x10

    add-int/2addr v3, v8

    return v3

    .line 1861
    :cond_6b
    iget-object v3, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v3, v11, :cond_77

    aget-object v3, v11, v14

    if-nez v3, :cond_77

    aget-object v3, v11, v16

    if-eqz v3, :cond_80

    .line 1862
    :cond_77
    return v1

    .line 1844
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "src":I
    .end local v13    # "b":I
    .end local v14    # "k":I
    .end local v15    # "nb":I
    .end local v16    # "nk":I
    .end local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_78
    move-object/from16 v17, v3

    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_80

    .end local v12    # "cap":I
    .end local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7b
    move-object/from16 v17, v3

    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_80

    .end local v11    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7e
    move-object/from16 v17, v3

    .line 1842
    .end local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "j":I
    .end local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_80
    :goto_80
    add-int/lit8 v7, v7, -0x1

    add-int/2addr v6, v5

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    goto :goto_18

    .line 1865
    .end local v5    # "step":I
    .end local v7    # "i":I
    .end local v17    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_88
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist tryCompensate(JZ)I
    .registers 25
    .param p1, "c"    # J
    .param p3, "canSaturate"    # Z

    .line 1981
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Ljava/util/concurrent/ForkJoinPool;->bounds:J

    .line 1982
    .local v3, "b":J
    iget v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 1983
    .local v5, "pc":I
    const-wide/32 v6, 0xffff

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-short v6, v6

    .line 1984
    .local v6, "minActive":I
    const/16 v7, 0x10

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-short v7, v7

    add-int/2addr v7, v5

    .line 1985
    .local v7, "maxTotal":I
    const/16 v8, 0x30

    ushr-long v8, v1, v8

    long-to-int v8, v8

    int-to-short v8, v8

    .line 1986
    .local v8, "active":I
    const/16 v9, 0x20

    ushr-long v9, v1, v9

    long-to-int v9, v9

    int-to-short v9, v9

    .line 1987
    .local v9, "total":I
    long-to-int v10, v1

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    .line 1988
    .local v10, "sp":I
    if-eqz v10, :cond_74

    if-gt v8, v5, :cond_74

    .line 1990
    iget-wide v13, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v13, v13, v1

    if-nez v13, :cond_71

    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v14, v13

    .local v14, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_6e

    array-length v13, v14

    const v15, 0xffff

    and-int/2addr v15, v10

    move/from16 v16, v15

    .local v16, "i":I
    if-le v13, v15, :cond_6b

    aget-object v13, v14, v16

    move-object v15, v13

    .local v15, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_68

    .line 1992
    iget v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    const/high16 v17, 0x10000

    const/16 v18, -0x1

    int-to-long v11, v13

    const-wide v19, 0xffffffffL

    and-long v11, v11, v19

    const-wide v19, -0x100000000L

    and-long v19, v1, v19

    or-long v11, v11, v19

    .line 1993
    .local v11, "nc":J
    invoke-direct {v0, v1, v2, v11, v12}, Ljava/util/concurrent/ForkJoinPool;->compareAndSetCtl(JJ)Z

    move-result v13

    if-eqz v13, :cond_73

    .line 1994
    iput v10, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1995
    iget-object v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-static {v13}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1996
    return v17

    .line 1990
    .end local v11    # "nc":J
    :cond_68
    const/16 v18, -0x1

    goto :goto_73

    .end local v15    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6b
    const/16 v18, -0x1

    goto :goto_73

    .end local v16    # "i":I
    :cond_6e
    const/16 v18, -0x1

    goto :goto_73

    .end local v14    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_71
    const/16 v18, -0x1

    .line 1999
    :cond_73
    :goto_73
    return v18

    .line 1988
    :cond_74
    const/high16 v17, 0x10000

    const/16 v18, -0x1

    .line 2001
    if-le v8, v6, :cond_94

    if-lt v9, v5, :cond_94

    .line 2002
    const-wide/high16 v11, 0x1000000000000L

    sub-long v11, v1, v11

    const-wide/high16 v13, -0x1000000000000L

    and-long/2addr v11, v13

    const-wide v13, 0xffffffffffffL

    and-long/2addr v13, v1

    or-long/2addr v11, v13

    .line 2003
    .restart local v11    # "nc":J
    invoke-direct {v0, v1, v2, v11, v12}, Ljava/util/concurrent/ForkJoinPool;->compareAndSetCtl(JJ)Z

    move-result v13

    if-eqz v13, :cond_91

    goto :goto_93

    :cond_91
    move/from16 v17, v18

    :goto_93
    return v17

    .line 2005
    .end local v11    # "nc":J
    :cond_94
    const/4 v11, 0x0

    if-ge v9, v7, :cond_c1

    const/16 v12, 0x7fff

    if-ge v9, v12, :cond_c1

    .line 2006
    const-wide v12, 0x100000000L

    add-long/2addr v12, v1

    const-wide v14, 0xffff00000000L

    and-long/2addr v12, v14

    const-wide v14, -0xffff00000001L

    and-long/2addr v14, v1

    or-long/2addr v12, v14

    .line 2007
    .local v12, "nc":J
    invoke-direct {v0, v1, v2, v12, v13}, Ljava/util/concurrent/ForkJoinPool;->compareAndSetCtl(JJ)Z

    move-result v14

    if-nez v14, :cond_b7

    move/from16 v11, v18

    goto :goto_c0

    .line 2008
    :cond_b7
    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool;->createWorker()Z

    move-result v14

    if-nez v14, :cond_be

    goto :goto_c0

    :cond_be
    move/from16 v11, v17

    .line 2007
    :goto_c0
    return v11

    .line 2010
    .end local v12    # "nc":J
    :cond_c1
    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->compareAndSetCtl(JJ)Z

    move-result v12

    if-nez v12, :cond_c8

    .line 2011
    return v18

    .line 2012
    :cond_c8
    if-nez p3, :cond_de

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->saturate:Ljava/util/function/Predicate;

    move-object v13, v12

    .local v13, "sat":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/concurrent/ForkJoinPool;>;"
    if-eqz v12, :cond_d6

    invoke-interface {v13, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d6

    goto :goto_de

    .line 2015
    :cond_d6
    new-instance v11, Ljava/util/concurrent/RejectedExecutionException;

    const-string v12, "Thread limit exceeded replacing blocked worker"

    invoke-direct {v11, v12}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2013
    .end local v13    # "sat":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/concurrent/ForkJoinPool;>;"
    :cond_de
    :goto_de
    return v11
.end method

.method private blacklist tryTerminate(ZZ)Z
    .registers 20
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .line 2504
    move-object/from16 v1, p0

    iget v0, v1, Ljava/util/concurrent/ForkJoinPool;->runState:I

    move v2, v0

    .local v2, "rs":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_2a

    .line 2505
    iget v0, v1, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v5, 0x100000

    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    .line 2506
    return v3

    .line 2507
    :cond_11
    if-nez p1, :cond_24

    .line 2508
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_1d

    .line 2509
    if-nez p2, :cond_1a

    .line 2510
    return v3

    .line 2511
    :cond_1a
    invoke-direct {v1, v4}, Ljava/util/concurrent/ForkJoinPool;->getAndBitwiseOrRunState(I)I

    .line 2513
    :cond_1d
    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinPool;->canStop()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2514
    return v3

    .line 2516
    :cond_24
    const v0, -0x7fffffff

    invoke-direct {v1, v0}, Ljava/util/concurrent/ForkJoinPool;->getAndBitwiseOrRunState(I)I

    .line 2518
    :cond_2a
    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinPool;->reactivate()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v5

    .line 2519
    .local v5, "released":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget-wide v6, v1, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    long-to-int v0, v6

    int-to-short v6, v0

    .line 2520
    .local v6, "tc":I
    if-nez v5, :cond_9c

    if-lez v6, :cond_9c

    .line 2521
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 2522
    .local v7, "current":Ljava/lang/Thread;
    instance-of v0, v7, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/4 v9, 0x0

    if-eqz v0, :cond_48

    .line 2523
    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    goto :goto_49

    :cond_48
    move-object v0, v9

    :goto_49
    move-object v10, v0

    .line 2524
    .local v10, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v10, :cond_4e

    move v0, v3

    goto :goto_51

    :cond_4e
    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    add-int/2addr v0, v4

    :goto_51
    move v11, v0

    .line 2525
    .local v11, "r":I
    iget-object v12, v1, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2526
    .local v12, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v12, :cond_57

    goto :goto_58

    :cond_57
    array-length v3, v12

    .line 2527
    .local v3, "n":I
    :goto_58
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_5a
    if-ge v13, v3, :cond_99

    .line 2529
    add-int v0, v11, v13

    add-int/lit8 v14, v3, -0x1

    and-int/2addr v0, v14

    aget-object v0, v12, v0

    move-object v14, v0

    .local v14, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_92

    iget-object v0, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v15, v0

    .local v15, "thread":Ljava/lang/Thread;
    if-eq v0, v7, :cond_8f

    iget v0, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    move/from16 v16, v4

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_94

    .line 2531
    :goto_73
    invoke-virtual {v14, v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v4, v0

    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_7e

    .line 2532
    invoke-static {v4}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    goto :goto_73

    .line 2533
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_7e
    if-eqz v15, :cond_94

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_94

    .line 2534
    invoke-virtual {v14}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->forcePhaseActive()V

    .line 2536
    :try_start_89
    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    .line 2538
    goto :goto_94

    .line 2537
    :catchall_8d
    move-exception v0

    goto :goto_94

    .line 2529
    :cond_8f
    move/from16 v16, v4

    goto :goto_94

    .end local v15    # "thread":Ljava/lang/Thread;
    :cond_92
    move/from16 v16, v4

    .line 2527
    .end local v14    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_94
    :goto_94
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto :goto_5a

    :cond_99
    move/from16 v16, v4

    goto :goto_9e

    .line 2520
    .end local v3    # "n":I
    .end local v7    # "current":Ljava/lang/Thread;
    .end local v10    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "r":I
    .end local v12    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "i":I
    :cond_9c
    move/from16 v16, v4

    .line 2543
    :goto_9e
    if-lez v6, :cond_a7

    iget-wide v3, v1, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    ushr-long/2addr v3, v8

    long-to-int v0, v3

    int-to-short v0, v0

    if-gtz v0, :cond_c2

    .line 2544
    :cond_a7
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/concurrent/ForkJoinPool;->getAndBitwiseOrRunState(I)I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_c2

    iget-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v3, v0

    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-eqz v0, :cond_c2

    .line 2546
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2547
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    move-object v4, v0

    .local v4, "cond":Ljava/util/concurrent/locks/Condition;
    if-eqz v0, :cond_bf

    .line 2548
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 2549
    :cond_bf
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2554
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "cond":Ljava/util/concurrent/locks/Condition;
    :cond_c2
    return v16
.end method

.method private blacklist tryTrim(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .registers 13
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1772
    if-eqz p1, :cond_39

    .line 1773
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .local v0, "pred":I
    iget v1, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 1774
    .local v1, "cfg":I
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1775
    .local v2, "c":J
    long-to-int v4, v2

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 1776
    .local v4, "sp":I
    const v5, 0xffff

    and-int v6, v4, v5

    and-int/2addr v5, v1

    if-ne v6, v5, :cond_39

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    const-wide v7, 0x100000000L

    sub-long v7, v2, v7

    const-wide v9, -0x100000000L

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 1777
    invoke-direct {p0, v2, v3, v5, v6}, Ljava/util/concurrent/ForkJoinPool;->compareAndSetCtl(JJ)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1779
    iput v1, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1780
    iput v4, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1781
    const/4 v5, 0x1

    return v5

    .line 1784
    .end local v0    # "pred":I
    .end local v1    # "cfg":I
    .end local v2    # "c":J
    .end local v4    # "sp":I
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist unmanagedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .registers 2
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3804
    if-eqz p0, :cond_f

    .line 3805
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3806
    :cond_e
    return-void

    .line 3804
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 3586
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool;JZ)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method public whitelist test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 14
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3549
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 3550
    .local v0, "nanos":J
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 3551
    invoke-static {p0, v0, v1, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool;JZ)I

    move-result v2

    if-ltz v2, :cond_15

    .line 3553
    const/4 v2, 0x0

    .local v2, "terminated":Z
    goto/16 :goto_70

    .line 3552
    .end local v2    # "terminated":Z
    :cond_15
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 3555
    :cond_1b
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v4

    :goto_25
    move v5, v2

    .local v5, "terminated":Z
    if-nez v2, :cond_6f

    .line 3556
    invoke-direct {p0, v4, v4}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3557
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v6, v2

    .local v6, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-eqz v2, :cond_6f

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_38

    move v2, v3

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    move v5, v2

    if-nez v2, :cond_6d

    .line 3559
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3561
    :try_start_3f
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    move-object v7, v2

    .local v7, "cond":Ljava/util/concurrent/locks/Condition;
    if-nez v2, :cond_4b

    .line 3562
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    move-object v7, v2

    iput-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->termination:Ljava/util/concurrent/locks/Condition;

    .line 3563
    :cond_4b
    :goto_4b
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_53

    move v2, v3

    goto :goto_54

    :cond_53
    move v2, v4

    :goto_54
    move v5, v2

    if-nez v2, :cond_63

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-lez v2, :cond_63

    .line 3565
    invoke-interface {v7, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_68

    move-wide v0, v8

    goto :goto_4b

    .line 3567
    :cond_63
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3568
    move v2, v5

    goto :goto_70

    .line 3567
    .end local v7    # "cond":Ljava/util/concurrent/locks/Condition;
    :catchall_68
    move-exception v2

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3568
    throw v2

    .line 3557
    :cond_6d
    move v2, v5

    goto :goto_70

    .line 3571
    .end local v6    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_6f
    move v2, v5

    .end local v5    # "terminated":Z
    .restart local v2    # "terminated":Z
    :goto_70
    return v2
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 3615
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_2f

    .line 3616
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v0

    .line 3617
    .local v0, "terminated":Z
    if-nez v0, :cond_2f

    .line 3618
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->shutdown()V

    .line 3619
    const/4 v1, 0x0

    .line 3620
    .local v1, "interrupted":Z
    :goto_12
    if-nez v0, :cond_26

    .line 3622
    :try_start_14
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/concurrent/ForkJoinPool;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_1e

    move v0, v2

    .line 3628
    :cond_1d
    :goto_1d
    goto :goto_12

    .line 3623
    :catch_1e
    move-exception v2

    .line 3624
    .local v2, "e":Ljava/lang/InterruptedException;
    if-nez v1, :cond_1d

    .line 3625
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->shutdownNow()Ljava/util/List;

    .line 3626
    const/4 v1, 0x1

    goto :goto_1d

    .line 3630
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_26
    if-eqz v1, :cond_2f

    .line 3631
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3635
    .end local v0    # "terminated":Z
    .end local v1    # "interrupted":Z
    :cond_2f
    return-void
.end method

.method final greylist-max-o deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .registers 20
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 1669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move-object v3, v2

    goto :goto_b

    :cond_9
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1670
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_b
    const/4 v4, 0x0

    if-nez v3, :cond_10

    move v5, v4

    goto :goto_12

    :cond_10
    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1671
    .local v5, "cfg":I
    :goto_12
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1672
    .local v6, "c":J
    const/high16 v8, 0x80000

    and-int/2addr v8, v5

    const-wide v9, 0xffffffffL

    if-nez v8, :cond_43

    .line 1673
    :goto_1e
    const-wide/high16 v11, 0x1000000000000L

    sub-long v11, v6, v11

    const-wide/high16 v13, -0x1000000000000L

    and-long/2addr v11, v13

    const-wide v13, 0x100000000L

    sub-long v13, v6, v13

    const-wide v15, 0xffff00000000L

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    and-long v13, v6, v9

    or-long/2addr v11, v13

    invoke-direct {v0, v6, v7, v11, v12}, Ljava/util/concurrent/ForkJoinPool;->compareAndExchangeCtl(JJ)J

    move-result-wide v11

    move-wide v13, v11

    .end local v6    # "c":J
    .local v13, "c":J
    cmp-long v6, v6, v11

    if-nez v6, :cond_41

    move-wide v6, v13

    goto :goto_4a

    :cond_41
    move-wide v6, v13

    goto :goto_1e

    .line 1677
    .end local v13    # "c":J
    .restart local v6    # "c":J
    :cond_43
    long-to-int v8, v6

    if-nez v8, :cond_4a

    .line 1678
    const v8, -0x20001

    and-int/2addr v5, v8

    .line 1679
    :cond_4a
    :goto_4a
    invoke-direct {v0, v4, v4}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v8

    if-nez v8, :cond_82

    if-eqz v3, :cond_82

    .line 1681
    iget v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v11, v8

    and-long v8, v11, v9

    .line 1682
    .local v8, "ns":J
    iget-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v11, v10

    .local v11, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-eqz v10, :cond_7a

    .line 1683
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1684
    iget-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v12, v10

    .local v12, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_72

    array-length v10, v12

    move v13, v10

    .local v13, "n":I
    if-lez v10, :cond_72

    add-int/lit8 v10, v13, -0x1

    and-int/2addr v10, v5

    move v14, v10

    .local v14, "i":I
    aget-object v10, v12, v10

    if-ne v10, v3, :cond_72

    .line 1686
    aput-object v2, v12, v14

    .line 1687
    .end local v13    # "n":I
    .end local v14    # "i":I
    :cond_72
    iget-wide v13, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    add-long/2addr v13, v8

    iput-wide v13, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 1688
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1690
    .end local v12    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7a
    const/high16 v2, 0x20000

    and-int/2addr v2, v5

    if-eqz v2, :cond_82

    .line 1691
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1693
    .end local v8    # "ns":J
    .end local v11    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_82
    if-eqz p2, :cond_98

    .line 1694
    if-eqz v3, :cond_95

    .line 1695
    const/high16 v2, -0x80000000

    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1696
    :goto_8a
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    move-object v8, v2

    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_95

    .line 1697
    invoke-static {v8}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    goto :goto_8a

    .line 1699
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_95
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 1701
    :cond_98
    return-void
.end method

.method protected whitelist test-api drainTasksTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    .line 3395
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 3396
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    move-object v2, v1

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_f

    .line 3397
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3400
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_f
    return v0
.end method

.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 2868
    instance-of v0, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_8

    .line 2869
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    goto :goto_d

    .line 2870
    :cond_8
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .line 2868
    :goto_d
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2871
    return-void
.end method

.method public whitelist test-api execute(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2855
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2856
    return-void
.end method

.method final blacklist externalQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 2

    .line 2413
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinPool;->externalQueue(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2944
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 2945
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->markPoolSubmission()V

    .line 2946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->submissionQueue(Z)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v1

    .line 2947
    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool;Z)V

    .line 2948
    return-object p1
.end method

.method public whitelist test-api getActiveThreadCount()I
    .registers 4

    .line 3273
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getAsyncMode()Z
    .registers 3

    .line 3242
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .registers 2

    .line 3191
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public whitelist test-api getParallelism()I
    .registers 3

    .line 3210
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->getParallelismOpaque()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPoolSize()I
    .registers 4

    .line 3232
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api getQueuedSubmissionCount()I
    .registers 6

    .line 3346
    const/4 v0, 0x0

    .line 3347
    .local v0, "count":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1d

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1d

    .line 3348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 3349
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1a

    .line 3350
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 3348
    :cond_1a
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 3353
    .end local v1    # "i":I
    .end local v2    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1d
    return v0
.end method

.method public whitelist test-api getQueuedTaskCount()J
    .registers 6

    .line 3327
    const/4 v0, 0x0

    .line 3328
    .local v0, "count":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1d

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1d

    .line 3329
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 3330
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1a

    .line 3331
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 3329
    :cond_1a
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 3334
    .end local v1    # "i":I
    .end local v2    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1d
    int-to-long v1, v0

    return-wide v1
.end method

.method public whitelist test-api getRunningThreadCount()I
    .registers 6

    .line 3255
    const/4 v0, 0x0

    .line 3256
    .local v0, "rc":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_20

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_20

    .line 3257
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 3258
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1d

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3259
    add-int/lit8 v0, v0, 0x1

    .line 3257
    :cond_1d
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 3262
    .end local v1    # "i":I
    .end local v2    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_20
    return v0
.end method

.method public whitelist test-api getStealCount()J
    .registers 11

    .line 3303
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 3305
    .local v0, "count":J
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1d

    .line 3306
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 3307
    aget-object v4, v3, v2

    move-object v5, v4

    .local v5, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1a

    .line 3308
    iget v4, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 3306
    :cond_1a
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 3311
    .end local v2    # "i":I
    .end local v5    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1d
    return-wide v0
.end method

.method public whitelist test-api getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .line 3201
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public whitelist test-api hasQueuedSubmissions()Z
    .registers 2

    .line 3363
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->hasTasks(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist helpComplete(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;ZZ)I
    .registers 29
    .param p2, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "owned"    # Z
    .param p4, "timed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "ZZ)I"
        }
    .end annotation

    .line 2113
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v2, :cond_136

    if-nez v1, :cond_11

    move/from16 v16, v4

    goto/16 :goto_138

    .line 2115
    :cond_11
    iget v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v5, "wsrc":I
    iget v6, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2116
    .local v6, "r":I
    const-wide/16 v7, 0x0

    .line 2117
    .local v7, "sctl":J
    const/4 v9, 0x1

    .line 2119
    .local v9, "rescan":Z
    :goto_18
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->helpComplete(Ljava/util/concurrent/ForkJoinTask;ZI)I

    move-result v10

    move v11, v10

    .local v11, "s":I
    if-gez v10, :cond_20

    .line 2120
    return v11

    .line 2121
    :cond_20
    if-nez v9, :cond_45

    iget-wide v12, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v14, v12

    .end local v7    # "sctl":J
    .local v14, "sctl":J
    cmp-long v7, v7, v12

    if-nez v7, :cond_41

    .line 2122
    if-eqz v3, :cond_3e

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v7, :cond_32

    move/from16 v10, p4

    goto :goto_40

    .line 2124
    :cond_32
    move/from16 v10, p4

    invoke-direct {v0, v14, v15, v10}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(JZ)I

    move-result v7

    move v11, v7

    if-ltz v7, :cond_3c

    .line 2125
    return v11

    .line 2124
    :cond_3c
    move-wide v7, v14

    goto :goto_47

    .line 2122
    :cond_3e
    move/from16 v10, p4

    .line 2123
    :goto_40
    return v4

    .line 2121
    :cond_41
    move/from16 v10, p4

    move-wide v7, v14

    goto :goto_47

    .end local v14    # "sctl":J
    .restart local v7    # "sctl":J
    :cond_45
    move/from16 v10, p4

    .line 2127
    :goto_47
    const/4 v9, 0x0

    .line 2128
    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v13, v12

    .local v13, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v12, :cond_4f

    move v12, v4

    goto :goto_50

    :cond_4f
    array-length v12, v13

    .local v12, "n":I
    :goto_50
    add-int/lit8 v14, v12, -0x1

    .line 2129
    .local v14, "m":I
    move v15, v12

    .local v15, "i":I
    :goto_53
    if-lez v15, :cond_122

    .line 2131
    and-int v16, v6, v14

    move/from16 v17, v16

    .local v17, "j":I
    aget-object v16, v13, v16

    move-object/from16 v18, v16

    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v16, :cond_106

    move/from16 v16, v4

    move-object/from16 v4, v18

    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget-object v0, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v18, v0

    .local v18, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_fd

    move-object/from16 v0, v18

    .end local v18    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    array-length v3, v0

    move/from16 v18, v3

    .local v18, "cap":I
    if-lez v3, :cond_f4

    .line 2133
    const/high16 v3, 0x20000

    or-int v3, v17, v3

    move/from16 v19, v6

    .end local v6    # "r":I
    .local v3, "src":I
    .local v19, "r":I
    iget v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2134
    .local v6, "b":I
    :goto_78
    add-int/lit8 v20, v18, -0x1

    move-wide/from16 v21, v7

    .end local v7    # "sctl":J
    .local v21, "sctl":J
    and-int v7, v20, v6

    .local v7, "k":I
    add-int/lit8 v8, v6, 0x1

    .line 2135
    .local v8, "nb":I
    move/from16 v20, v9

    .end local v9    # "rescan":Z
    .local v20, "rescan":Z
    aget-object v9, v0, v7

    .line 2136
    .local v9, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v23, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual/range {v23 .. v23}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 2137
    iget v10, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move/from16 v23, v10

    .end local v6    # "b":I
    .local v23, "b":I
    if-eq v6, v10, :cond_93

    .line 2138
    move v10, v11

    move/from16 v11, v23

    goto :goto_da

    .line 2139
    :cond_93
    iget v6, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v10, v6

    .end local v11    # "s":I
    .local v10, "s":I
    if-gez v6, :cond_99

    .line 2140
    return v10

    .line 2141
    :cond_99
    if-nez v9, :cond_b9

    .line 2142
    aget-object v6, v0, v7

    if-nez v6, :cond_b6

    .line 2143
    if-nez v20, :cond_b3

    iget-object v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v6, v0, :cond_ac

    iget v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v11, v23

    .end local v23    # "b":I
    .local v11, "b":I
    if-eq v6, v11, :cond_f0

    goto :goto_ae

    .end local v11    # "b":I
    .restart local v23    # "b":I
    :cond_ac
    move/from16 v11, v23

    .line 2145
    .end local v23    # "b":I
    .restart local v11    # "b":I
    :goto_ae
    const/4 v6, 0x1

    move v9, v6

    move v11, v10

    .end local v20    # "rescan":Z
    .local v6, "rescan":Z
    goto/16 :goto_112

    .line 2143
    .end local v6    # "rescan":Z
    .end local v11    # "b":I
    .restart local v20    # "rescan":Z
    .restart local v23    # "b":I
    :cond_b3
    move/from16 v11, v23

    .end local v23    # "b":I
    .restart local v11    # "b":I
    goto :goto_f0

    .line 2142
    .end local v11    # "b":I
    .restart local v23    # "b":I
    :cond_b6
    move/from16 v11, v23

    .end local v23    # "b":I
    .restart local v11    # "b":I
    goto :goto_da

    .line 2149
    .end local v11    # "b":I
    .restart local v23    # "b":I
    :cond_b9
    move/from16 v11, v23

    .end local v23    # "b":I
    .restart local v11    # "b":I
    instance-of v6, v9, Ljava/util/concurrent/CountedCompleter;

    if-eqz v6, :cond_ee

    .line 2151
    move-object v6, v9

    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    .line 2152
    .local v6, "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_c2
    if-ne v6, v1, :cond_e3

    .line 2153
    nop

    .line 2157
    invoke-static {v0, v7, v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v23

    if-eqz v23, :cond_da

    .line 2158
    iput v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2159
    iput v3, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2160
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2161
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2162
    const/16 v20, 0x1

    .line 2163
    move/from16 v9, v20

    goto/16 :goto_12a

    .line 2168
    .end local v6    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v7    # "k":I
    .end local v8    # "nb":I
    .end local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_da
    :goto_da
    move v6, v11

    move/from16 v9, v20

    move-wide/from16 v7, v21

    move v11, v10

    move/from16 v10, p4

    goto :goto_78

    .line 2154
    .restart local v6    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v7    # "k":I
    .restart local v8    # "nb":I
    .restart local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_e3
    move-object/from16 v23, v0

    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v23, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    iget-object v0, v6, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v6, v0

    if-nez v0, :cond_eb

    .line 2155
    goto :goto_f0

    .line 2154
    :cond_eb
    move-object/from16 v0, v23

    goto :goto_c2

    .line 2149
    .end local v6    # "f":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v23    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_ee
    move-object/from16 v23, v0

    .line 2129
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "src":I
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v7    # "k":I
    .end local v8    # "nb":I
    .end local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "b":I
    .end local v17    # "j":I
    .end local v18    # "cap":I
    :cond_f0
    :goto_f0
    move v11, v10

    move/from16 v9, v20

    goto :goto_112

    .line 2131
    .end local v10    # "s":I
    .end local v19    # "r":I
    .end local v20    # "rescan":Z
    .end local v21    # "sctl":J
    .restart local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v6, "r":I
    .local v7, "sctl":J
    .local v9, "rescan":Z
    .local v11, "s":I
    .restart local v17    # "j":I
    .restart local v18    # "cap":I
    :cond_f4
    move-object/from16 v23, v0

    move/from16 v19, v6

    move-wide/from16 v21, v7

    move/from16 v20, v9

    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "r":I
    .end local v7    # "sctl":J
    .end local v9    # "rescan":Z
    .restart local v19    # "r":I
    .restart local v20    # "rescan":Z
    .restart local v21    # "sctl":J
    .restart local v23    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_110

    .end local v19    # "r":I
    .end local v20    # "rescan":Z
    .end local v21    # "sctl":J
    .end local v23    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "r":I
    .restart local v7    # "sctl":J
    .restart local v9    # "rescan":Z
    .local v18, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_fd
    move/from16 v19, v6

    move-wide/from16 v21, v7

    move/from16 v20, v9

    move-object/from16 v23, v18

    .end local v6    # "r":I
    .end local v7    # "sctl":J
    .end local v9    # "rescan":Z
    .end local v18    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v19    # "r":I
    .restart local v20    # "rescan":Z
    .restart local v21    # "sctl":J
    .restart local v23    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_110

    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "r":I
    .end local v20    # "rescan":Z
    .end local v21    # "sctl":J
    .end local v23    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "r":I
    .restart local v7    # "sctl":J
    .restart local v9    # "rescan":Z
    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_106
    move/from16 v16, v4

    move/from16 v19, v6

    move-wide/from16 v21, v7

    move/from16 v20, v9

    move-object/from16 v4, v18

    .line 2129
    .end local v6    # "r":I
    .end local v7    # "sctl":J
    .end local v9    # "rescan":Z
    .end local v17    # "j":I
    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "r":I
    .restart local v20    # "rescan":Z
    .restart local v21    # "sctl":J
    :goto_110
    move/from16 v9, v20

    .end local v20    # "rescan":Z
    .restart local v9    # "rescan":Z
    :goto_112
    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v10, p4

    move/from16 v4, v16

    move-wide/from16 v7, v21

    .end local v19    # "r":I
    .restart local v6    # "r":I
    goto/16 :goto_53

    .end local v21    # "sctl":J
    .restart local v7    # "sctl":J
    :cond_122
    move/from16 v16, v4

    move/from16 v19, v6

    move-wide/from16 v21, v7

    move/from16 v20, v9

    .line 2171
    .end local v6    # "r":I
    .end local v7    # "sctl":J
    .end local v11    # "s":I
    .end local v12    # "n":I
    .end local v13    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "m":I
    .end local v15    # "i":I
    .restart local v19    # "r":I
    .restart local v21    # "sctl":J
    :goto_12a
    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, v16

    move/from16 v6, v19

    move-wide/from16 v7, v21

    goto/16 :goto_18

    .line 2113
    .end local v5    # "wsrc":I
    .end local v9    # "rescan":Z
    .end local v19    # "r":I
    .end local v21    # "sctl":J
    :cond_136
    move/from16 v16, v4

    .line 2114
    :goto_138
    return v16
.end method

.method final blacklist helpJoin(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Z)I
    .registers 35
    .param p2, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "timed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Z)I"
        }
    .end annotation

    .line 2038
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v2, :cond_154

    if-nez v1, :cond_f

    move/from16 v17, v3

    goto/16 :goto_156

    .line 2040
    :cond_f
    iget v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v4, "wsrc":I
    iget v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    .local v5, "wid":I
    add-int/lit8 v7, v5, 0x2

    .line 2041
    .local v7, "r":I
    const-wide/16 v8, 0x0

    .line 2042
    .local v8, "sctl":J
    const/4 v10, 0x1

    .line 2044
    .local v10, "rescan":Z
    :goto_1f
    iget v11, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v12, v11

    .local v12, "s":I
    if-gez v11, :cond_25

    .line 2045
    return v12

    .line 2046
    :cond_25
    if-nez v10, :cond_45

    iget-wide v13, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v15, v13

    .end local v8    # "sctl":J
    .local v15, "sctl":J
    cmp-long v8, v8, v13

    if-nez v8, :cond_40

    .line 2047
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v8, :cond_33

    .line 2048
    return v3

    .line 2049
    :cond_33
    move/from16 v11, p3

    move-wide v13, v15

    .end local v15    # "sctl":J
    .local v13, "sctl":J
    invoke-direct {v0, v13, v14, v11}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(JZ)I

    move-result v8

    move v12, v8

    if-ltz v8, :cond_3e

    .line 2050
    return v12

    .line 2049
    :cond_3e
    move-wide v8, v13

    goto :goto_47

    .line 2046
    .end local v13    # "sctl":J
    .restart local v15    # "sctl":J
    :cond_40
    move/from16 v11, p3

    move-wide v13, v15

    .end local v15    # "sctl":J
    .restart local v13    # "sctl":J
    move-wide v8, v13

    goto :goto_47

    .end local v13    # "sctl":J
    .restart local v8    # "sctl":J
    :cond_45
    move/from16 v11, p3

    .line 2052
    :goto_47
    const/4 v10, 0x0

    .line 2053
    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v14, v13

    .local v14, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v13, :cond_4f

    move v13, v3

    goto :goto_50

    :cond_4f
    array-length v13, v14

    .local v13, "n":I
    :goto_50
    add-int/lit8 v15, v13, -0x1

    .line 2054
    .local v15, "m":I
    ushr-int/lit8 v16, v13, 0x1

    .local v16, "i":I
    :goto_54
    if-lez v16, :cond_13a

    .line 2056
    and-int v17, v7, v15

    move/from16 v18, v17

    .local v18, "j":I
    aget-object v17, v14, v17

    move-object/from16 v19, v17

    .local v19, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_118

    move/from16 v17, v3

    move-object/from16 v3, v19

    move/from16 v19, v6

    .end local v19    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget-object v6, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v20, v6

    .local v20, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_10d

    move-object/from16 v6, v20

    .end local v20    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    array-length v0, v6

    move/from16 v20, v0

    .local v20, "cap":I
    if-lez v0, :cond_104

    .line 2058
    or-int v0, v18, v19

    .line 2059
    .local v0, "src":I
    :goto_75
    move/from16 v21, v7

    .end local v7    # "r":I
    .local v21, "r":I
    iget v7, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    move-wide/from16 v22, v8

    .end local v8    # "sctl":J
    .local v7, "sq":I
    .local v22, "sctl":J
    iget v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2060
    .local v8, "b":I
    add-int/lit8 v9, v20, -0x1

    and-int/2addr v9, v8

    .local v9, "k":I
    move/from16 v24, v10

    .end local v10    # "rescan":Z
    .local v24, "rescan":Z
    add-int/lit8 v10, v8, 0x1

    .line 2061
    .local v10, "nb":I
    aget-object v11, v6, v9

    .line 2062
    .local v11, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v25, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual/range {v25 .. v25}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 2063
    const/16 v25, 0x1

    .line 2064
    .local v25, "eligible":Z
    move/from16 v26, v13

    .local v26, "d":I
    move/from16 v27, v7

    move/from16 v30, v27

    move/from16 v27, v12

    move/from16 v12, v30

    .line 2066
    .local v12, "v":I
    .local v27, "s":I
    :goto_97
    if-ne v12, v5, :cond_9c

    .line 2067
    move/from16 v28, v5

    goto :goto_bb

    .line 2068
    :cond_9c
    if-eqz v12, :cond_b6

    add-int/lit8 v26, v26, -0x1

    if-eqz v26, :cond_b6

    and-int v28, v12, v15

    aget-object v28, v14, v28

    move-object/from16 v29, v28

    .local v29, "p":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v28, :cond_ad

    move/from16 v28, v5

    goto :goto_b8

    .line 2072
    :cond_ad
    move/from16 v28, v5

    move-object/from16 v5, v29

    .end local v29    # "p":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v5, "p":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v28, "wid":I
    iget v12, v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2073
    .end local v5    # "p":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move/from16 v5, v28

    goto :goto_97

    .line 2068
    .end local v28    # "wid":I
    .local v5, "wid":I
    :cond_b6
    move/from16 v28, v5

    .line 2069
    .end local v5    # "wid":I
    .restart local v28    # "wid":I
    :goto_b8
    const/16 v25, 0x0

    .line 2070
    nop

    .line 2074
    .end local v12    # "v":I
    .end local v26    # "d":I
    :goto_bb
    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-ne v5, v7, :cond_f6

    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v5, v8, :cond_c4

    .line 2075
    goto :goto_f6

    .line 2076
    :cond_c4
    iget v5, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v12, v5

    .end local v27    # "s":I
    .local v12, "s":I
    if-gez v5, :cond_ca

    .line 2077
    return v12

    .line 2078
    :cond_ca
    if-nez v11, :cond_df

    .line 2079
    aget-object v5, v6, v9

    if-nez v5, :cond_f8

    .line 2080
    if-nez v24, :cond_126

    if-eqz v25, :cond_126

    iget-object v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v5, v6, :cond_dc

    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v5, v8, :cond_126

    .line 2082
    :cond_dc
    const/4 v5, 0x1

    move v10, v5

    .end local v24    # "rescan":Z
    .local v5, "rescan":Z
    goto :goto_128

    .line 2086
    .end local v5    # "rescan":Z
    .restart local v24    # "rescan":Z
    :cond_df
    if-eq v11, v1, :cond_e4

    if-nez v25, :cond_e4

    .line 2087
    goto :goto_126

    .line 2088
    :cond_e4
    invoke-static {v6, v9, v11}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->casSlotToNull([Ljava/util/concurrent/ForkJoinTask;ILjava/util/concurrent/ForkJoinTask;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 2089
    iput v10, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2090
    iput v0, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2091
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2092
    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 2093
    const/4 v5, 0x1

    .line 2094
    .end local v24    # "rescan":Z
    .restart local v5    # "rescan":Z
    move v10, v5

    goto :goto_146

    .line 2096
    .end local v5    # "rescan":Z
    .end local v7    # "sq":I
    .end local v8    # "b":I
    .end local v9    # "k":I
    .end local v10    # "nb":I
    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v12    # "s":I
    .end local v25    # "eligible":Z
    .restart local v24    # "rescan":Z
    .restart local v27    # "s":I
    :cond_f6
    :goto_f6
    move/from16 v12, v27

    .end local v27    # "s":I
    .restart local v12    # "s":I
    :cond_f8
    move/from16 v11, p3

    move/from16 v7, v21

    move-wide/from16 v8, v22

    move/from16 v10, v24

    move/from16 v5, v28

    goto/16 :goto_75

    .line 2056
    .end local v0    # "src":I
    .end local v21    # "r":I
    .end local v22    # "sctl":J
    .end local v24    # "rescan":Z
    .end local v28    # "wid":I
    .local v5, "wid":I
    .local v7, "r":I
    .local v8, "sctl":J
    .local v10, "rescan":Z
    :cond_104
    move/from16 v28, v5

    move/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    .end local v5    # "wid":I
    .end local v7    # "r":I
    .end local v8    # "sctl":J
    .end local v10    # "rescan":Z
    .restart local v21    # "r":I
    .restart local v22    # "sctl":J
    .restart local v24    # "rescan":Z
    .restart local v28    # "wid":I
    goto :goto_126

    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "r":I
    .end local v22    # "sctl":J
    .end local v24    # "rescan":Z
    .end local v28    # "wid":I
    .restart local v5    # "wid":I
    .restart local v7    # "r":I
    .restart local v8    # "sctl":J
    .restart local v10    # "rescan":Z
    .local v20, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_10d
    move/from16 v28, v5

    move/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    move-object/from16 v6, v20

    .end local v5    # "wid":I
    .end local v7    # "r":I
    .end local v8    # "sctl":J
    .end local v10    # "rescan":Z
    .end local v20    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "r":I
    .restart local v22    # "sctl":J
    .restart local v24    # "rescan":Z
    .restart local v28    # "wid":I
    goto :goto_126

    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "r":I
    .end local v22    # "sctl":J
    .end local v24    # "rescan":Z
    .end local v28    # "wid":I
    .restart local v5    # "wid":I
    .restart local v7    # "r":I
    .restart local v8    # "sctl":J
    .restart local v10    # "rescan":Z
    .restart local v19    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_118
    move/from16 v17, v3

    move/from16 v28, v5

    move/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    move-object/from16 v3, v19

    move/from16 v19, v6

    .line 2054
    .end local v5    # "wid":I
    .end local v7    # "r":I
    .end local v8    # "sctl":J
    .end local v10    # "rescan":Z
    .end local v18    # "j":I
    .end local v19    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v21    # "r":I
    .restart local v22    # "sctl":J
    .restart local v24    # "rescan":Z
    .restart local v28    # "wid":I
    :cond_126
    :goto_126
    move/from16 v10, v24

    .end local v24    # "rescan":Z
    .restart local v10    # "rescan":Z
    :goto_128
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v7, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v11, p3

    move/from16 v3, v17

    move/from16 v6, v19

    move-wide/from16 v8, v22

    move/from16 v5, v28

    .end local v21    # "r":I
    .restart local v7    # "r":I
    goto/16 :goto_54

    .end local v22    # "sctl":J
    .end local v28    # "wid":I
    .restart local v5    # "wid":I
    .restart local v8    # "sctl":J
    :cond_13a
    move/from16 v17, v3

    move/from16 v28, v5

    move/from16 v19, v6

    move/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    .line 2099
    .end local v5    # "wid":I
    .end local v7    # "r":I
    .end local v8    # "sctl":J
    .end local v12    # "s":I
    .end local v13    # "n":I
    .end local v14    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "m":I
    .end local v16    # "i":I
    .restart local v21    # "r":I
    .restart local v22    # "sctl":J
    .restart local v28    # "wid":I
    :goto_146
    move-object/from16 v0, p0

    move/from16 v3, v17

    move/from16 v6, v19

    move/from16 v7, v21

    move-wide/from16 v8, v22

    move/from16 v5, v28

    goto/16 :goto_1f

    .line 2038
    .end local v4    # "wsrc":I
    .end local v10    # "rescan":Z
    .end local v21    # "r":I
    .end local v22    # "sctl":J
    .end local v28    # "wid":I
    :cond_154
    move/from16 v17, v3

    .line 2039
    :goto_156
    return v17
.end method

.method public whitelist test-api invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2842
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2843
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 3009
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3011
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 3012
    .local v2, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v4, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;

    invoke-direct {v4, v2}, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3014
    .local v4, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 3016
    nop

    .end local v2    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v4    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    goto :goto_d

    .line 3017
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_2c
    if-ltz v1, :cond_3a

    .line 3018
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_3b

    .line 3017
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 3019
    .end local v1    # "i":I
    :cond_3a
    return-object v0

    .line 3020
    :catchall_3b
    move-exception v1

    .line 3021
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 3022
    .local v3, "e":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-static {v3}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v3    # "e":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    goto :goto_40

    .line 3023
    :cond_50
    throw v1
.end method

.method public whitelist test-api invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 22
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3031
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 3032
    .local v4, "nanos":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 3034
    .local v6, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_12
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Callable;

    .line 3035
    .local v7, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v9, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;

    invoke-direct {v9, v7}, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3037
    .local v9, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_72

    .line 3038
    move-object/from16 v10, p0

    :try_start_2d
    invoke-direct {v10, v8, v9}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 3039
    nop

    .end local v7    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v9    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    goto :goto_16

    .line 3040
    :cond_32
    move-object/from16 v10, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .local v11, "startTime":J
    move-wide v13, v4

    .line 3041
    .local v13, "ns":J
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-gez v0, :cond_41

    move v0, v8

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    .line 3042
    .local v0, "timedOut":Z
    :goto_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_47
    if-ltz v7, :cond_6f

    .line 3043
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/ForkJoinTask;

    .line 3044
    .restart local v9    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinTask;->isDone()Z

    move-result v15

    if-nez v15, :cond_6c

    .line 3045
    if-nez v0, :cond_5f

    .line 3046
    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v13, v14, v15}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin(JLjava/util/concurrent/TimeUnit;)Z

    move-result v15

    xor-int/2addr v15, v8

    move v0, v15

    .line 3047
    :cond_5f
    if-eqz v0, :cond_65

    .line 3048
    invoke-static {v9}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    goto :goto_6c

    .line 3050
    :cond_65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15
    :try_end_69
    .catchall {:try_start_2d .. :try_end_69} :catchall_70

    sub-long/2addr v15, v11

    sub-long v13, v4, v15

    .line 3042
    .end local v9    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    :cond_6c
    :goto_6c
    add-int/lit8 v7, v7, -0x1

    goto :goto_47

    .line 3053
    .end local v7    # "i":I
    :cond_6f
    return-object v6

    .line 3054
    .end local v0    # "timedOut":Z
    .end local v11    # "startTime":J
    .end local v13    # "ns":J
    :catchall_70
    move-exception v0

    goto :goto_75

    :catchall_72
    move-exception v0

    move-object/from16 v10, p0

    .line 3055
    .local v0, "t":Ljava/lang/Throwable;
    :goto_75
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 3056
    .local v8, "e":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-static {v8}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v8    # "e":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    goto :goto_79

    .line 3057
    :cond_89
    throw v0
.end method

.method public whitelist test-api invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3136
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 3137
    .local v0, "n":I
    if-lez v0, :cond_6b

    .line 3139
    new-instance v1, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;

    invoke-direct {v1, v0, p0}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;-><init>(ILjava/util/concurrent/ForkJoinPool;)V

    .line 3140
    .local v1, "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3142
    .local v2, "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    :try_start_10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 3143
    .local v4, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz v4, :cond_36

    .line 3145
    new-instance v5, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    invoke-direct {v5, v1, v4}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;-><init>(Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;Ljava/util/concurrent/Callable;)V

    .line 3146
    .local v5, "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 3148
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->isDone()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 3149
    goto :goto_3c

    .line 3150
    .end local v4    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v5    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    :cond_35
    goto :goto_14

    .line 3144
    .restart local v4    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_36
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    .end local v0    # "n":I
    .end local v1    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .end local v2    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    .end local p0    # "this":Ljava/util/concurrent/ForkJoinPool;
    .end local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    throw v3

    .line 3151
    .end local v4    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local v0    # "n":I
    .restart local v1    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .restart local v2    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ForkJoinPool;
    .restart local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_55

    .line 3153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    .line 3154
    .restart local v5    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v5    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    goto :goto_44

    .line 3151
    :cond_54
    return-object v3

    .line 3153
    :catchall_55
    move-exception v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    .line 3154
    .restart local v5    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v5    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    goto :goto_5a

    .line 3155
    :cond_6a
    throw v3

    .line 3138
    .end local v1    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .end local v2    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public whitelist test-api invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 14
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3162
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 3163
    .local v0, "nanos":J
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 3164
    .local v2, "n":I
    if-lez v2, :cond_71

    .line 3166
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;

    invoke-direct {v3, v2, p0}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;-><init>(ILjava/util/concurrent/ForkJoinPool;)V

    .line 3167
    .local v3, "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3169
    .local v4, "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    :try_start_14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    .line 3170
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz v6, :cond_3a

    .line 3172
    new-instance v7, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    invoke-direct {v7, v3, v6}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;-><init>(Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;Ljava/util/concurrent/Callable;)V

    .line 3173
    .local v7, "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    const/4 v8, 0x1

    invoke-direct {p0, v8, v7}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 3175
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->isDone()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 3176
    goto :goto_40

    .line 3177
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v7    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    :cond_39
    goto :goto_18

    .line 3171
    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_3a
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    .end local v0    # "nanos":J
    .end local v2    # "n":I
    .end local v3    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .end local v4    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    .end local p0    # "this":Ljava/util/concurrent/ForkJoinPool;
    .end local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local p2    # "timeout":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v5

    .line 3178
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local v0    # "nanos":J
    .restart local v2    # "n":I
    .restart local v3    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .restart local v4    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ForkJoinPool;
    .restart local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local p2    # "timeout":J
    .restart local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_40
    :goto_40
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v5}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_5b

    .line 3180
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    .line 3181
    .restart local v7    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-static {v7}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v7    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    goto :goto_4a

    .line 3178
    :cond_5a
    return-object v5

    .line 3180
    :catchall_5b
    move-exception v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;

    .line 3181
    .restart local v7    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    invoke-static {v7}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .end local v7    # "f":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;"
    goto :goto_60

    .line 3182
    :cond_70
    throw v5

    .line 3165
    .end local v3    # "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TT;>;"
    .end local v4    # "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TT;>;>;"
    :cond_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public whitelist test-api isQuiescent()Z
    .registers 2

    .line 3288
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->canStop()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isShutdown()Z
    .registers 2

    .line 3529
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isTerminated()Z
    .registers 2

    .line 3503
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isTerminating()Z
    .registers 3

    .line 3520
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    const v1, -0x7ffffffe

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api lazySubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2968
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3814
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected whitelist test-api newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3819
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final greylist-max-o nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2324
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v0, :cond_e

    .line 2325
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .line 2326
    .restart local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_e
    return-object v1
.end method

.method final blacklist nextWorkerThreadName()Ljava/lang/String;
    .registers 6

    .line 1604
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 1605
    .local v0, "prefix":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->incrementThreadIds()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 1606
    .local v1, "tid":J
    if-nez v0, :cond_d

    .line 1607
    const-string v0, "ForkJoinPool.commonPool-worker-"

    .line 1608
    :cond_d
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected whitelist test-api pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 3374
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method final blacklist registerWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .registers 16
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1617
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 1618
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 1619
    .local v0, "seed":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1620
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    .line 1621
    .local v2, "cfg":I
    if-eqz p1, :cond_84

    if-eqz v1, :cond_84

    .line 1622
    const/16 v3, 0x40

    new-array v3, v3, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 1623
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1624
    iput v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1625
    shl-int/lit8 v3, v0, 0x1

    or-int/lit8 v3, v3, 0x1

    .line 1626
    .local v3, "id":I
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1629
    :try_start_27
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v4

    .local v5, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_7b

    array-length v4, v5

    move v6, v4

    .local v6, "n":I
    if-lez v4, :cond_7b

    .line 1630
    move v4, v6

    .local v4, "k":I
    add-int/lit8 v7, v6, -0x1

    .line 1631
    .local v7, "m":I
    :goto_33
    and-int v8, v3, v7

    move v3, v8

    aget-object v8, v5, v8

    if-eqz v8, :cond_41

    if-lez v4, :cond_41

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, -0x2

    goto :goto_33

    .line 1632
    :cond_41
    if-nez v4, :cond_45

    .line 1633
    or-int/lit8 v3, v6, 0x1

    .line 1634
    :cond_45
    or-int v8, v3, v2

    iput v8, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    iput v8, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1636
    if-ge v3, v6, :cond_50

    .line 1637
    aput-object p1, v5, v3

    goto :goto_7b

    .line 1639
    :cond_50
    shl-int/lit8 v8, v6, 0x1

    .local v8, "an":I
    add-int/lit8 v9, v8, -0x1

    .line 1640
    .local v9, "am":I
    new-array v10, v8, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1641
    .local v10, "as":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    and-int v11, v3, v9

    aput-object p1, v10, v11

    .line 1642
    const/4 v11, 0x1

    .local v11, "j":I
    :goto_5b
    if-ge v11, v6, :cond_64

    .line 1643
    aget-object v12, v5, v11

    aput-object v12, v10, v11

    .line 1642
    add-int/lit8 v11, v11, 0x2

    goto :goto_5b

    .line 1644
    .end local v11    # "j":I
    :cond_64
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_65
    if-ge v11, v6, :cond_74

    .line 1646
    aget-object v12, v5, v11

    move-object v13, v12

    .local v13, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_71

    .line 1647
    iget v12, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    and-int/2addr v12, v9

    aput-object v13, v10, v12

    .line 1644
    .end local v13    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_71
    add-int/lit8 v11, v11, 0x2

    goto :goto_65

    .line 1649
    .end local v11    # "j":I
    :cond_74
    sget-object v11, Ljava/util/concurrent/ForkJoinPool;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v11}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 1650
    iput-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :try_end_7b
    .catchall {:try_start_27 .. :try_end_7b} :catchall_7f

    .line 1654
    .end local v4    # "k":I
    .end local v5    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "n":I
    .end local v7    # "m":I
    .end local v8    # "an":I
    .end local v9    # "am":I
    .end local v10    # "as":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7b
    :goto_7b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1655
    goto :goto_84

    .line 1654
    :catchall_7f
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1655
    throw v4

    .line 1657
    .end local v3    # "id":I
    :cond_84
    :goto_84
    return-void
.end method

.method final greylist-max-o runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .registers 5
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1819
    if-eqz p1, :cond_20

    .line 1820
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .local v0, "r":I
    const/4 v1, 0x0

    .line 1822
    .local v1, "src":I
    :cond_5
    shl-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    .line 1823
    invoke-direct {p0, p1, v1, v0}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;II)I

    move-result v2

    move v1, v2

    if-gez v2, :cond_5

    .line 1824
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v2

    move v1, v2

    if-eqz v2, :cond_5

    .line 1825
    const/high16 v2, -0x80000000

    iput v2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 1827
    .end local v0    # "r":I
    .end local v1    # "src":I
    :cond_20
    return-void
.end method

.method public whitelist test-api setParallelism(I)I
    .registers 4
    .param p1, "size"    # I

    .line 2995
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1e

    .line 2997
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 2999
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3000
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->getAndSetParallelism(I)I

    move-result v0

    return v0

    .line 2998
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot override System property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2996
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api shutdown()V
    .registers 3

    .line 3469
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3470
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3471
    return-void
.end method

.method public whitelist test-api shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 3492
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3493
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o signalWork()V
    .registers 19

    .line 1707
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 1708
    .local v1, "pc":I
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1709
    .local v2, "c":J
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1710
    .local v4, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/16 v5, 0x30

    ushr-long v5, v2, v5

    long-to-int v5, v5

    int-to-short v5, v5

    if-ge v5, v1, :cond_75

    if-eqz v4, :cond_75

    array-length v5, v4

    move v6, v5

    .local v6, "n":I
    if-lez v5, :cond_75

    .line 1712
    :goto_16
    const/4 v5, 0x0

    .line 1713
    .local v5, "create":Z
    long-to-int v7, v2

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    .line 1714
    .local v7, "sp":I
    add-int/lit8 v8, v6, -0x1

    and-int/2addr v8, v7

    aget-object v8, v4, v8

    .line 1715
    .local v8, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/16 v9, 0x20

    ushr-long v9, v2, v9

    long-to-int v9, v9

    int-to-short v9, v9

    sub-int v9, v1, v9

    .line 1716
    .local v9, "deficit":I
    const-wide/high16 v10, 0x1000000000000L

    add-long/2addr v10, v2

    const-wide/high16 v12, -0x1000000000000L

    and-long/2addr v10, v12

    .line 1717
    .local v10, "ac":J
    const-wide v12, 0xffff00000000L

    if-eqz v7, :cond_45

    if-eqz v8, :cond_45

    .line 1718
    iget v14, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    and-long/2addr v12, v2

    or-long/2addr v12, v14

    .local v12, "nc":J
    goto :goto_50

    .line 1719
    .end local v12    # "nc":J
    :cond_45
    if-gtz v9, :cond_48

    .line 1720
    goto :goto_75

    .line 1722
    :cond_48
    const/4 v5, 0x1

    .line 1723
    const-wide v14, 0x100000000L

    add-long/2addr v14, v2

    and-long/2addr v12, v14

    .line 1725
    .restart local v12    # "nc":J
    :goto_50
    or-long v14, v12, v10

    invoke-direct {v0, v2, v3, v14, v15}, Ljava/util/concurrent/ForkJoinPool;->compareAndExchangeCtl(JJ)J

    move-result-wide v14

    move-wide/from16 v16, v14

    .end local v2    # "c":J
    .local v16, "c":J
    cmp-long v2, v2, v14

    if-nez v2, :cond_72

    .line 1726
    if-eqz v5, :cond_62

    .line 1727
    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool;->createWorker()Z

    goto :goto_6f

    .line 1729
    :cond_62
    iget-object v2, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1730
    .local v2, "owner":Ljava/lang/Thread;
    iput v7, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1731
    iget v3, v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    const/4 v14, -0x1

    if-ne v3, v14, :cond_6e

    .line 1732
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1734
    .end local v2    # "owner":Ljava/lang/Thread;
    :cond_6e
    nop

    .line 1738
    .end local v5    # "create":Z
    .end local v6    # "n":I
    .end local v7    # "sp":I
    .end local v8    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "deficit":I
    .end local v10    # "ac":J
    .end local v12    # "nc":J
    :goto_6f
    move-wide/from16 v2, v16

    goto :goto_75

    .line 1736
    .restart local v6    # "n":I
    :cond_72
    move-wide/from16 v2, v16

    goto :goto_16

    .line 1738
    .end local v6    # "n":I
    .end local v16    # "c":J
    .local v2, "c":J
    :cond_75
    :goto_75
    return-void
.end method

.method final blacklist submissionQueue(Z)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .registers 12
    .param p1, "isSubmit"    # Z

    .line 2338
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->registrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2339
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    move v2, v1

    .local v2, "r":I
    if-nez v1, :cond_10

    .line 2340
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2341
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    .line 2343
    :cond_10
    if-eqz v0, :cond_62

    .line 2344
    shl-int/lit8 v1, v2, 0x1

    .line 2346
    .local v1, "id":I
    :goto_14
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v3

    .local v4, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_62

    array-length v3, v4

    move v5, v3

    .local v5, "n":I
    if-lez v3, :cond_61

    .line 2348
    add-int/lit8 v3, v5, -0x1

    and-int/2addr v3, v1

    move v6, v3

    .local v6, "i":I
    aget-object v3, v4, v3

    move-object v7, v3

    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v3, :cond_46

    .line 2349
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const/high16 v8, 0x20000

    or-int/2addr v8, v1

    const/4 v9, 0x0

    invoke-direct {v3, v9, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinWorkerThread;I)V

    .line 2350
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/16 v8, 0x40

    new-array v8, v8, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 2351
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2352
    iget-object v8, p0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    if-ne v8, v4, :cond_42

    aget-object v8, v4, v6

    if-nez v8, :cond_42

    .line 2353
    aput-object v3, v4, v6

    .line 2354
    :cond_42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2355
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_54

    .line 2356
    :cond_46
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getAndSetAccess(I)I

    move-result v8

    if-eqz v8, :cond_55

    .line 2357
    invoke-static {v2}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v8

    move v2, v8

    shl-int/lit8 v1, v8, 0x1

    .line 2364
    .end local v4    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_54
    goto :goto_14

    .line 2358
    .restart local v4    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_55
    if-eqz p1, :cond_60

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v3, :cond_5c

    goto :goto_60

    .line 2359
    :cond_5c
    const/4 v3, 0x0

    iput v3, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->access:I

    .line 2360
    goto :goto_62

    .line 2363
    :cond_60
    :goto_60
    return-object v7

    .line 2347
    .end local v6    # "i":I
    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_61
    nop

    .line 2366
    .end local v1    # "id":I
    .end local v4    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "n":I
    :cond_62
    :goto_62
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v1
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2919
    instance-of v0, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_8

    .line 2920
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    goto :goto_d

    .line 2921
    :cond_8
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .line 2919
    :goto_d
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2908
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2898
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2888
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ForkJoinPool;->poolSubmit(ZLjava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 18

    .line 3412
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    .line 3413
    .local v1, "st":J
    const-wide/16 v3, 0x0

    .local v3, "qt":J
    const-wide/16 v5, 0x0

    .local v5, "ss":J
    const/4 v7, 0x0

    .line 3415
    .local v7, "rc":I
    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool;->queues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v9, v8

    .local v9, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_39

    .line 3416
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    array-length v10, v9

    if-ge v8, v10, :cond_39

    .line 3417
    aget-object v10, v9, v8

    move-object v11, v10

    .local v11, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_36

    .line 3418
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v10

    .line 3419
    .local v10, "size":I
    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_22

    .line 3420
    int-to-long v12, v10

    add-long/2addr v5, v12

    goto :goto_36

    .line 3422
    :cond_22
    int-to-long v12, v10

    add-long/2addr v3, v12

    .line 3423
    iget v12, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v1, v12

    .line 3424
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v12

    if-eqz v12, :cond_36

    .line 3425
    add-int/lit8 v7, v7, 0x1

    .line 3416
    .end local v10    # "size":I
    :cond_36
    :goto_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 3431
    .end local v8    # "i":I
    .end local v11    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_39
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:I

    .line 3432
    .local v8, "pc":I
    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3433
    .local v10, "c":J
    const/16 v12, 0x20

    ushr-long v12, v10, v12

    long-to-int v12, v12

    int-to-short v12, v12

    .line 3434
    .local v12, "tc":I
    const/16 v13, 0x30

    ushr-long v13, v10, v13

    long-to-int v13, v13

    int-to-short v13, v13

    .line 3435
    .local v13, "ac":I
    if-gez v13, :cond_4c

    .line 3436
    const/4 v13, 0x0

    .line 3437
    :cond_4c
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 3438
    .local v14, "rs":I
    and-int/lit8 v15, v14, 0x2

    if-eqz v15, :cond_55

    const-string v15, "Terminated"

    goto :goto_66

    .line 3439
    :cond_55
    const/high16 v15, -0x80000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_5d

    const-string v15, "Terminating"

    goto :goto_66

    .line 3440
    :cond_5d
    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_64

    const-string v15, "Shutting down"

    goto :goto_66

    .line 3441
    :cond_64
    const-string v15, "Running"

    :goto_66
    nop

    .line 3442
    .local v15, "level":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    .end local v9    # "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .local v16, "qs":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", parallelism = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", size = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", active = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", running = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", steals = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", tasks = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", submissions = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final blacklist uncompensate()V
    .registers 3

    .line 2023
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->getAndAddCtl(J)J

    .line 2024
    return-void
.end method
