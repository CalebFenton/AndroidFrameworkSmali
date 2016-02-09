.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava/util/concurrent/ForkJoinPool$Submitter;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$1;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final common:Ljava/util/concurrent/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field final mode:S

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field final parallelism:S

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->makeCommonPool()Ljava/util/concurrent/ForkJoinPool;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    .line 3202
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v7

    #@4
    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@6
    .line 3203
    const-class v2, Ljava/util/concurrent/ForkJoinPool;

    #@8
    .line 3204
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a
    .line 3205
    const-string/jumbo v8, "ctl"

    #@d
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v8

    #@11
    .line 3204
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v8

    #@15
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@17
    .line 3206
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@19
    .line 3207
    const-string/jumbo v8, "stealCount"

    #@1c
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v8

    #@20
    .line 3206
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v8

    #@24
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    #@26
    .line 3208
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@28
    .line 3209
    const-string/jumbo v8, "plock"

    #@2b
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2e
    move-result-object v8

    #@2f
    .line 3208
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@32
    move-result-wide v8

    #@33
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@35
    .line 3210
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@37
    .line 3211
    const-string/jumbo v8, "indexSeed"

    #@3a
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3d
    move-result-object v8

    #@3e
    .line 3210
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@41
    move-result-wide v8

    #@42
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    #@44
    .line 3212
    const-class v5, Ljava/lang/Thread;

    #@46
    .line 3213
    .local v5, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@48
    .line 3214
    const-string/jumbo v8, "parkBlocker"

    #@4b
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@4e
    move-result-object v8

    #@4f
    .line 3213
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@52
    move-result-wide v8

    #@53
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    #@55
    .line 3215
    const-class v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@57
    .line 3216
    .local v6, "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@59
    .line 3217
    const-string/jumbo v8, "base"

    #@5c
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@5f
    move-result-object v8

    #@60
    .line 3216
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@63
    move-result-wide v8

    #@64
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    #@66
    .line 3218
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@68
    .line 3219
    const-string/jumbo v8, "qlock"

    #@6b
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6e
    move-result-object v8

    #@6f
    .line 3218
    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@72
    move-result-wide v8

    #@73
    sput-wide v8, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    #@75
    .line 3220
    const-class v0, [Ljava/util/concurrent/ForkJoinTask;

    #@77
    .line 3221
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@79
    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@7c
    move-result v7

    #@7d
    sput v7, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@7f
    .line 3222
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@81
    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@84
    move-result v4

    #@85
    .line 3223
    .local v4, "scale":I
    add-int/lit8 v7, v4, -0x1

    #@87
    and-int/2addr v7, v4

    #@88
    if-eqz v7, :cond_0

    #@8a
    .line 3224
    new-instance v7, Ljava/lang/Error;

    #@8c
    const-string/jumbo v8, "data type scale not a power of two"

    #@8f
    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@92
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 3226
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scale":I
    .end local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@94
    .line 3227
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Error;

    #@96
    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@99
    throw v7

    #@9a
    .line 3225
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "scale":I
    .restart local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@9d
    move-result v7

    #@9e
    rsub-int/lit8 v7, v7, 0x1f

    #@a0
    sput v7, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a2
    .line 3230
    new-instance v7, Ljava/lang/ThreadLocal;

    #@a4
    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    #@a7
    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@a9
    .line 3232
    new-instance v7, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    #@ab
    invoke-direct {v7}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    #@ae
    .line 3231
    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@b0
    .line 3233
    new-instance v7, Ljava/lang/RuntimePermission;

    #@b2
    const-string/jumbo v8, "modifyThread"

    #@b5
    invoke-direct {v7, v8}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@b8
    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@ba
    .line 3236
    new-instance v7, Ljava/util/concurrent/ForkJoinPool$1;

    #@bc
    invoke-direct {v7}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    #@bf
    .line 3235
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c2
    move-result-object v7

    #@c3
    check-cast v7, Ljava/util/concurrent/ForkJoinPool;

    #@c5
    sput-object v7, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@c7
    .line 3238
    sget-object v7, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@c9
    iget-short v3, v7, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@cb
    .line 3239
    .local v3, "par":I
    if-lez v3, :cond_1

    #@cd
    .end local v3    # "par":I
    :goto_0
    sput v3, Ljava/util/concurrent/ForkJoinPool;->commonParallelism:I

    #@cf
    .line 124
    return-void

    #@d0
    .line 3239
    .restart local v3    # "par":I
    :cond_1
    const/4 v3, 0x1

    #@d1
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 2359
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
    .line 2360
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x0

    #@12
    .line 2359
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@15
    .line 2358
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    #@0
    .prologue
    .line 2374
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@7
    .line 2373
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
    .line 2427
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    #@3
    .line 2432
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    #@5
    .line 2433
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@7
    .line 2434
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@9
    .line 2435
    int-to-short v2, p4

    #@a
    iput-short v2, p0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    #@c
    .line 2436
    int-to-short v2, p1

    #@d
    iput-short v2, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@f
    .line 2437
    neg-int v2, p1

    #@10
    int-to-long v0, v2

    #@11
    .line 2438
    .local v0, "np":J
    const/16 v2, 0x30

    #@13
    shl-long v2, v0, v2

    #@15
    const-wide/high16 v4, -0x1000000000000L

    #@17
    and-long/2addr v2, v4

    #@18
    const/16 v4, 0x20

    #@1a
    shl-long v4, v0, v4

    #@1c
    const-wide v6, 0xffff00000000L

    #@21
    and-long/2addr v4, v6

    #@22
    or-long/2addr v2, v4

    #@23
    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@25
    .line 2431
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
    .line 2401
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    #@3
    move-result v1

    #@4
    .line 2402
    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@7
    move-result-object v2

    #@8
    .line 2404
    if-eqz p4, :cond_0

    #@a
    const/4 v4, 0x1

    #@b
    .line 2405
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "ForkJoinPool-"

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v3, "-worker-"

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    move-object v0, p0

    #@2b
    move-object v3, p3

    #@2c
    .line 2401
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    #@2f
    .line 2406
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@32
    .line 2400
    return-void

    #@33
    .line 2404
    :cond_0
    const/4 v4, 0x0

    #@34
    goto :goto_0
.end method

.method private acquirePlock()I
    .locals 15

    #@0
    .prologue
    .line 1243
    const/16 v14, 0x100

    #@2
    .line 1245
    .local v14, "spins":I
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@4
    .local v4, "ps":I
    and-int/lit8 v0, v4, 0x2

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1246
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@c
    add-int/lit8 v5, v4, 0x2

    #@e
    .local v5, "nps":I
    move-object v1, p0

    #@f
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@12
    move-result v0

    #@13
    .line 1245
    if-eqz v0, :cond_1

    #@15
    .line 1247
    return v5

    #@16
    .line 1248
    .end local v5    # "nps":I
    :cond_1
    if-ltz v14, :cond_2

    #@18
    .line 1249
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    #@1f
    move-result v0

    #@20
    if-ltz v0, :cond_0

    #@22
    .line 1250
    add-int/lit8 v14, v14, -0x1

    #@24
    goto :goto_0

    #@25
    .line 1252
    :cond_2
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@27
    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@29
    or-int/lit8 v11, v4, 0x1

    #@2b
    move-object v7, p0

    #@2c
    move v10, v4

    #@2d
    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 1253
    monitor-enter p0

    #@34
    .line 1254
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    and-int/lit8 v0, v0, 0x1

    #@38
    if-eqz v0, :cond_3

    #@3a
    .line 1256
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :goto_1
    monitor-exit p0

    #@3e
    goto :goto_0

    #@3f
    .line 1257
    :catch_0
    move-exception v12

    #@40
    .line 1259
    .local v12, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_1

    #@48
    .line 1260
    :catch_1
    move-exception v13

    #@49
    .local v13, "ignore":Ljava/lang/SecurityException;
    goto :goto_1

    #@4a
    .line 1265
    .end local v12    # "ie":Ljava/lang/InterruptedException;
    .end local v13    # "ignore":Ljava/lang/SecurityException;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 1253
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit p0

    #@50
    throw v0
.end method

.method private final awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JI)I
    .locals 28
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J
    .param p4, "ec"    # I

    #@0
    .prologue
    .line 1712
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@4
    move/from16 v24, v0

    #@6
    .local v24, "stat":I
    if-ltz v24, :cond_0

    #@8
    move-object/from16 v0, p1

    #@a
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@c
    move/from16 v0, p4

    #@e
    if-ne v2, v0, :cond_0

    #@10
    move-object/from16 v0, p0

    #@12
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@14
    cmp-long v2, v2, p2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 1713
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1753
    :cond_0
    :goto_0
    return v24

    #@1f
    .line 1714
    :cond_1
    move-wide/from16 v0, p2

    #@21
    long-to-int v0, v0

    #@22
    move/from16 v20, v0

    #@24
    .line 1715
    .local v20, "e":I
    const/16 v2, 0x20

    #@26
    ushr-long v2, p2, v2

    #@28
    long-to-int v0, v2

    #@29
    move/from16 v25, v0

    #@2b
    .line 1716
    .local v25, "u":I
    shr-int/lit8 v2, v25, 0x10

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@31
    add-int v16, v2, v3

    #@33
    .line 1718
    .local v16, "d":I
    if-ltz v20, :cond_2

    #@35
    if-gtz v16, :cond_3

    #@37
    const/4 v2, 0x0

    #@38
    const/4 v3, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 1719
    :cond_2
    const/4 v2, -0x1

    #@42
    move-object/from16 v0, p1

    #@44
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@46
    const/16 v24, -0x1

    #@48
    goto :goto_0

    #@49
    .line 1720
    :cond_3
    move-object/from16 v0, p1

    #@4b
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@4d
    move/from16 v21, v0

    #@4f
    .local v21, "ns":I
    if-eqz v21, :cond_4

    #@51
    .line 1722
    const/4 v2, 0x0

    #@52
    move-object/from16 v0, p1

    #@54
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@56
    .line 1723
    :goto_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@58
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    #@5a
    .line 1724
    move-object/from16 v0, p0

    #@5c
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    #@5e
    .local v6, "sc":J
    move/from16 v0, v21

    #@60
    int-to-long v8, v0

    #@61
    add-long/2addr v8, v6

    #@62
    move-object/from16 v3, p0

    #@64
    .line 1723
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@67
    move-result v2

    #@68
    if-nez v2, :cond_0

    #@6a
    goto :goto_1

    #@6b
    .line 1727
    .end local v6    # "sc":J
    :cond_4
    if-gtz v16, :cond_5

    #@6d
    const/high16 v2, -0x80000000

    #@6f
    or-int v2, v2, v20

    #@71
    move/from16 v0, p4

    #@73
    if-eq v0, v2, :cond_7

    #@75
    :cond_5
    const-wide/16 v14, 0x0

    #@77
    .line 1730
    .local v14, "pc":J
    :goto_2
    const-wide/16 v2, 0x0

    #@79
    cmp-long v2, v14, v2

    #@7b
    if-eqz v2, :cond_9

    #@7d
    .line 1731
    const/16 v2, 0x20

    #@7f
    ushr-long v2, p2, v2

    #@81
    long-to-int v2, v2

    #@82
    int-to-short v2, v2

    #@83
    neg-int v0, v2

    #@84
    move/from16 v17, v0

    #@86
    .line 1732
    .local v17, "dc":I
    if-gez v17, :cond_8

    #@88
    const-wide/32 v22, 0xbebc200

    #@8b
    .line 1734
    .local v22, "parkTime":J
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8e
    move-result-wide v2

    #@8f
    add-long v2, v2, v22

    #@91
    const-wide/32 v4, 0x1e8480

    #@94
    sub-long v18, v2, v4

    #@96
    .line 1738
    .end local v17    # "dc":I
    .local v18, "deadline":J
    :goto_4
    move-object/from16 v0, p1

    #@98
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@9a
    move/from16 v0, p4

    #@9c
    if-ne v2, v0, :cond_0

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@a2
    cmp-long v2, v2, p2

    #@a4
    if-nez v2, :cond_0

    #@a6
    .line 1739
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a9
    move-result-object v26

    #@aa
    .line 1740
    .local v26, "wt":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@ac
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    #@ae
    move-object/from16 v0, v26

    #@b0
    move-object/from16 v1, p0

    #@b2
    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@b5
    .line 1741
    move-object/from16 v0, v26

    #@b7
    move-object/from16 v1, p1

    #@b9
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@bb
    .line 1742
    move-object/from16 v0, p1

    #@bd
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@bf
    move/from16 v0, p4

    #@c1
    if-ne v2, v0, :cond_6

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@c7
    cmp-long v2, v2, p2

    #@c9
    if-nez v2, :cond_6

    #@cb
    .line 1743
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@cd
    const/4 v3, 0x0

    #@ce
    move-wide/from16 v0, v22

    #@d0
    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    #@d3
    .line 1744
    :cond_6
    const/4 v2, 0x0

    #@d4
    move-object/from16 v0, p1

    #@d6
    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@d8
    .line 1745
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@da
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->PARKBLOCKER:J

    #@dc
    const/4 v3, 0x0

    #@dd
    move-object/from16 v0, v26

    #@df
    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@e2
    .line 1746
    const-wide/16 v2, 0x0

    #@e4
    cmp-long v2, v22, v2

    #@e6
    if-eqz v2, :cond_0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@ec
    cmp-long v2, v2, p2

    #@ee
    if-nez v2, :cond_0

    #@f0
    .line 1747
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@f3
    move-result-wide v2

    #@f4
    sub-long v2, v18, v2

    #@f6
    const-wide/16 v4, 0x0

    #@f8
    cmp-long v2, v2, v4

    #@fa
    if-gtz v2, :cond_0

    #@fc
    .line 1748
    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@fe
    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@100
    move-object/from16 v9, p0

    #@102
    move-wide/from16 v12, p2

    #@104
    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@107
    move-result v2

    #@108
    .line 1746
    if-eqz v2, :cond_0

    #@10a
    .line 1749
    const/4 v2, -0x1

    #@10b
    move-object/from16 v0, p1

    #@10d
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@10f
    const/16 v24, -0x1

    #@111
    goto/16 :goto_0

    #@113
    .line 1728
    .end local v14    # "pc":J
    .end local v18    # "deadline":J
    .end local v22    # "parkTime":J
    .end local v26    # "wt":Ljava/lang/Thread;
    :cond_7
    move-object/from16 v0, p1

    #@115
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@117
    const v3, 0x7fffffff

    #@11a
    and-int/2addr v2, v3

    #@11b
    int-to-long v2, v2

    #@11c
    .line 1729
    const/high16 v4, 0x10000

    #@11e
    add-int v4, v4, v25

    #@120
    int-to-long v4, v4

    #@121
    const/16 v8, 0x20

    #@123
    shl-long/2addr v4, v8

    #@124
    .line 1728
    or-long v14, v2, v4

    #@126
    .restart local v14    # "pc":J
    goto/16 :goto_2

    #@128
    .line 1733
    .restart local v17    # "dc":I
    :cond_8
    add-int/lit8 v2, v17, 0x1

    #@12a
    int-to-long v2, v2

    #@12b
    const-wide/32 v4, 0x77359400

    #@12e
    mul-long v22, v2, v4

    #@130
    .restart local v22    # "parkTime":J
    goto/16 :goto_3

    #@132
    .line 1737
    .end local v17    # "dc":I
    .end local v22    # "parkTime":J
    :cond_9
    const-wide/16 v18, 0x0

    #@134
    .restart local v18    # "deadline":J
    const-wide/16 v22, 0x0

    #@136
    .restart local v22    # "parkTime":J
    goto/16 :goto_4
.end method

.method private static checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1
    .param p0, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@0
    .prologue
    .line 2417
    if-nez p0, :cond_0

    #@2
    .line 2418
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2419
    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1
    .param p0, "parallelism"    # I

    #@0
    .prologue
    .line 2410
    if-lez p0, :cond_0

    #@2
    const/16 v0, 0x7fff

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 2411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 2412
    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    #@0
    .prologue
    .line 502
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 503
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 504
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 501
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    .prologue
    .line 2457
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2285
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@9
    .local v3, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    if-eqz v3, :cond_0

    #@b
    .line 2286
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@d
    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_0

    #@f
    .line 2287
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@11
    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@13
    .line 2288
    array-length v5, v2

    #@14
    add-int/lit8 v0, v5, -0x1

    #@16
    .local v0, "m":I
    if-ltz v0, :cond_0

    #@18
    .line 2289
    iget v4, v3, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@1a
    and-int/2addr v4, v0

    #@1b
    and-int/lit8 v4, v4, 0x7e

    #@1d
    aget-object v4, v2, v4

    #@1f
    .line 2285
    .end local v0    # "m":I
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v2    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    return-object v4
.end method

.method private findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2046
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@4
    move-result-object v6

    #@5
    invoke-virtual {v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    #@8
    move-result v4

    #@9
    .line 2048
    .local v4, "r":I
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@b
    .line 2049
    .local v2, "ps":I
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@d
    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2

    #@f
    array-length v6, v5

    #@10
    add-int/lit8 v1, v6, -0x1

    #@12
    .local v1, "m":I
    if-ltz v1, :cond_2

    #@14
    .line 2050
    add-int/lit8 v6, v1, 0x1

    #@16
    shl-int/lit8 v0, v6, 0x2

    #@18
    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    #@1a
    .line 2051
    sub-int v6, v4, v0

    #@1c
    shl-int/lit8 v6, v6, 0x1

    #@1e
    or-int/lit8 v6, v6, 0x1

    #@20
    and-int/2addr v6, v1

    #@21
    aget-object v3, v5, v6

    #@23
    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@25
    .line 2052
    iget v6, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@27
    iget v7, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@29
    sub-int/2addr v6, v7

    #@2a
    if-gez v6, :cond_1

    #@2c
    .line 2053
    return-object v3

    #@2d
    .line 2050
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 2056
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@32
    if-ne v6, v2, :cond_0

    #@34
    .line 2057
    return-object v8
.end method

.method private fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1503
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v8, 0x0

    #@1
    .line 1504
    .local v8, "r":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v38

    #@7
    check-cast v38, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@9
    .line 1506
    .local v38, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    :cond_0
    :goto_0
    if-nez v38, :cond_3

    #@b
    .line 1507
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@d
    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    #@f
    move-object/from16 v0, p0

    #@11
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    #@13
    .line 1508
    const v5, 0x61c88647

    #@16
    add-int v9, v8, v5

    #@18
    .end local v8    # "r":I
    .local v9, "r":I
    move-object/from16 v5, p0

    #@1a
    .line 1507
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 1508
    if-eqz v9, :cond_1

    #@22
    .line 1509
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@24
    new-instance v38, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@26
    .end local v38    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    #@28
    invoke-direct {v0, v9}, Ljava/util/concurrent/ForkJoinPool$Submitter;-><init>(I)V

    #@2b
    .restart local v38    # "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    #@2d
    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@30
    :cond_1
    move v8, v9

    #@31
    .line 1517
    .end local v9    # "r":I
    .restart local v8    # "r":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@33
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@35
    .local v14, "ps":I
    if-gez v14, :cond_4

    #@37
    .line 1518
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    #@39
    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    #@3c
    throw v4

    #@3d
    .line 1511
    .end local v14    # "ps":I
    :cond_3
    if-nez v8, :cond_2

    #@3f
    .line 1512
    move-object/from16 v0, v38

    #@41
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@43
    .line 1513
    shl-int/lit8 v4, v8, 0xd

    #@45
    xor-int/2addr v8, v4

    #@46
    .line 1514
    ushr-int/lit8 v4, v8, 0x11

    #@48
    xor-int/2addr v8, v4

    #@49
    .line 1515
    shl-int/lit8 v4, v8, 0x5

    #@4b
    xor-int/2addr v8, v4

    #@4c
    move-object/from16 v0, v38

    #@4e
    iput v8, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@50
    goto :goto_1

    #@51
    .line 1519
    .restart local v14    # "ps":I
    :cond_4
    if-eqz v14, :cond_5

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@57
    move-object/from16 v37, v0

    #@59
    .local v37, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v37, :cond_9

    #@5b
    .line 1521
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move-object/from16 v0, p0

    #@5d
    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@5f
    move/from16 v34, v0

    #@61
    .line 1522
    .local v34, "p":I
    const/4 v4, 0x1

    #@62
    move/from16 v0, v34

    #@64
    if-le v0, v4, :cond_b

    #@66
    add-int/lit8 v32, v34, -0x1

    #@68
    .line 1523
    .local v32, "n":I
    :goto_2
    ushr-int/lit8 v4, v32, 0x1

    #@6a
    or-int v32, v32, v4

    #@6c
    ushr-int/lit8 v4, v32, 0x2

    #@6e
    or-int v32, v32, v4

    #@70
    ushr-int/lit8 v4, v32, 0x4

    #@72
    or-int v32, v32, v4

    #@74
    .line 1524
    ushr-int/lit8 v4, v32, 0x8

    #@76
    or-int v32, v32, v4

    #@78
    ushr-int/lit8 v4, v32, 0x10

    #@7a
    or-int v32, v32, v4

    #@7c
    add-int/lit8 v4, v32, 0x1

    #@7e
    shl-int/lit8 v32, v4, 0x1

    #@80
    .line 1525
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@84
    move-object/from16 v37, v0

    #@86
    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_6

    #@88
    move-object/from16 v0, v37

    #@8a
    array-length v4, v0

    #@8b
    if-nez v4, :cond_c

    #@8d
    .line 1526
    :cond_6
    move/from16 v0, v32

    #@8f
    new-array v0, v0, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@91
    move-object/from16 v33, v0

    #@93
    .line 1527
    :goto_3
    move-object/from16 v0, p0

    #@95
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@97
    and-int/lit8 v4, v14, 0x2

    #@99
    if-nez v4, :cond_e

    #@9b
    .line 1528
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@9d
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@9f
    add-int/lit8 v15, v14, 0x2

    #@a1
    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    #@a3
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_d

    #@a9
    move v14, v15

    #@aa
    .line 1530
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :goto_4
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@ae
    move-object/from16 v37, v0

    #@b0
    if-eqz v37, :cond_7

    #@b2
    move-object/from16 v0, v37

    #@b4
    array-length v4, v0

    #@b5
    if-nez v4, :cond_8

    #@b7
    :cond_7
    if-eqz v33, :cond_8

    #@b9
    .line 1531
    move-object/from16 v0, v33

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@bf
    .line 1532
    :cond_8
    const/high16 v4, -0x80000000

    #@c1
    and-int/2addr v4, v14

    #@c2
    add-int/lit8 v5, v14, 0x2

    #@c4
    const v6, 0x7fffffff

    #@c7
    and-int/2addr v5, v6

    #@c8
    or-int v21, v4, v5

    #@ca
    .line 1533
    .local v21, "nps":I
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@cc
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@ce
    move-object/from16 v17, p0

    #@d0
    move/from16 v20, v14

    #@d2
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@d5
    move-result v4

    #@d6
    if-nez v4, :cond_0

    #@d8
    .line 1534
    move-object/from16 v0, p0

    #@da
    move/from16 v1, v21

    #@dc
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@df
    goto/16 :goto_0

    #@e1
    .line 1520
    .end local v21    # "nps":I
    .end local v32    # "n":I
    .end local v34    # "p":I
    :cond_9
    move-object/from16 v0, v37

    #@e3
    array-length v4, v0

    #@e4
    add-int/lit8 v31, v4, -0x1

    #@e6
    .local v31, "m":I
    if-ltz v31, :cond_5

    #@e8
    .line 1536
    and-int v4, v8, v31

    #@ea
    and-int/lit8 v30, v4, 0x7e

    #@ec
    .local v30, "k":I
    aget-object v23, v37, v30

    #@ee
    .local v23, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_11

    #@f0
    .line 1537
    move-object/from16 v0, v23

    #@f2
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@f4
    if-nez v4, :cond_10

    #@f6
    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@f8
    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    #@fa
    const/16 v26, 0x0

    #@fc
    const/16 v27, 0x1

    #@fe
    invoke-virtual/range {v22 .. v27}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@101
    move-result v4

    #@102
    if-eqz v4, :cond_10

    #@104
    .line 1538
    move-object/from16 v0, v23

    #@106
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@108
    move-object/from16 v28, v0

    #@10a
    .line 1539
    .local v28, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v23

    #@10c
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@10e
    move/from16 v35, v0

    #@110
    .line 1540
    .local v35, "s":I
    const/16 v36, 0x0

    #@112
    .line 1542
    .local v36, "submitted":Z
    if-eqz v28, :cond_f

    #@114
    :try_start_0
    move-object/from16 v0, v28

    #@116
    array-length v4, v0

    #@117
    add-int/lit8 v5, v35, 0x1

    #@119
    move-object/from16 v0, v23

    #@11b
    iget v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@11d
    sub-int/2addr v5, v6

    #@11e
    if-le v4, v5, :cond_f

    #@120
    .line 1544
    :goto_5
    move-object/from16 v0, v28

    #@122
    array-length v4, v0

    #@123
    add-int/lit8 v4, v4, -0x1

    #@125
    and-int v4, v4, v35

    #@127
    sget v5, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@129
    shl-int/2addr v4, v5

    #@12a
    sget v5, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@12c
    add-int v29, v4, v5

    #@12e
    .line 1545
    .local v29, "j":I
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@130
    move/from16 v0, v29

    #@132
    int-to-long v6, v0

    #@133
    move-object/from16 v0, v28

    #@135
    move-object/from16 v1, p1

    #@137
    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@13a
    .line 1546
    add-int/lit8 v4, v35, 0x1

    #@13c
    move-object/from16 v0, v23

    #@13e
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@140
    .line 1547
    const/16 v36, 0x1

    #@142
    .line 1550
    .end local v29    # "j":I
    :cond_a
    const/4 v4, 0x0

    #@143
    move-object/from16 v0, v23

    #@145
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@147
    .line 1552
    if-eqz v36, :cond_10

    #@149
    .line 1553
    move-object/from16 v0, p0

    #@14b
    move-object/from16 v1, v37

    #@14d
    move-object/from16 v2, v23

    #@14f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@152
    .line 1554
    return-void

    #@153
    .line 1522
    .end local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v28    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v30    # "k":I
    .end local v31    # "m":I
    .end local v35    # "s":I
    .end local v36    # "submitted":Z
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v34    # "p":I
    :cond_b
    const/16 v32, 0x1

    #@155
    .restart local v32    # "n":I
    goto/16 :goto_2

    #@157
    .line 1526
    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    const/16 v33, 0x0

    #@159
    .local v33, "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto/16 :goto_3

    #@15b
    .end local v14    # "ps":I
    .end local v33    # "nws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "ps":I
    :cond_d
    move v14, v15

    #@15c
    .line 1529
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    #@15f
    move-result v14

    #@160
    goto/16 :goto_4

    #@162
    .line 1543
    .end local v32    # "n":I
    .end local v34    # "p":I
    .restart local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v28    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v30    # "k":I
    .restart local v31    # "m":I
    .restart local v35    # "s":I
    .restart local v36    # "submitted":Z
    :cond_f
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@165
    move-result-object v28

    #@166
    if-eqz v28, :cond_a

    #@168
    goto :goto_5

    #@169
    .line 1549
    :catchall_0
    move-exception v4

    #@16a
    .line 1550
    const/4 v5, 0x0

    #@16b
    move-object/from16 v0, v23

    #@16d
    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@16f
    .line 1549
    throw v4

    #@170
    .line 1557
    .end local v28    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v35    # "s":I
    .end local v36    # "submitted":Z
    :cond_10
    const/4 v8, 0x0

    #@171
    goto/16 :goto_0

    #@173
    .line 1559
    :cond_11
    move-object/from16 v0, p0

    #@175
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@177
    and-int/lit8 v4, v14, 0x2

    #@179
    if-nez v4, :cond_15

    #@17b
    .line 1560
    new-instance v23, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@17d
    .end local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    #@17e
    const/4 v5, -0x1

    #@17f
    move-object/from16 v0, v23

    #@181
    move-object/from16 v1, p0

    #@183
    invoke-direct {v0, v1, v4, v5, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    #@186
    .line 1561
    .restart local v23    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move/from16 v0, v30

    #@188
    int-to-short v4, v0

    #@189
    move-object/from16 v0, v23

    #@18b
    iput-short v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@18d
    .line 1562
    move-object/from16 v0, p0

    #@18f
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@191
    and-int/lit8 v4, v14, 0x2

    #@193
    if-nez v4, :cond_14

    #@195
    .line 1563
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@197
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@199
    add-int/lit8 v15, v14, 0x2

    #@19b
    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    move-object/from16 v11, p0

    #@19d
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@1a0
    move-result v4

    #@1a1
    if-eqz v4, :cond_13

    #@1a3
    move v14, v15

    #@1a4
    .line 1565
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :goto_6
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@1a8
    move-object/from16 v37, v0

    #@1aa
    if-eqz v37, :cond_12

    #@1ac
    move-object/from16 v0, v37

    #@1ae
    array-length v4, v0

    #@1af
    move/from16 v0, v30

    #@1b1
    if-ge v0, v4, :cond_12

    #@1b3
    aget-object v4, v37, v30

    #@1b5
    if-nez v4, :cond_12

    #@1b7
    .line 1566
    aput-object v23, v37, v30

    #@1b9
    .line 1567
    :cond_12
    const/high16 v4, -0x80000000

    #@1bb
    and-int/2addr v4, v14

    #@1bc
    add-int/lit8 v5, v14, 0x2

    #@1be
    const v6, 0x7fffffff

    #@1c1
    and-int/2addr v5, v6

    #@1c2
    or-int v21, v4, v5

    #@1c4
    .line 1568
    .restart local v21    # "nps":I
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@1c6
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@1c8
    move-object/from16 v17, p0

    #@1ca
    move/from16 v20, v14

    #@1cc
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@1cf
    move-result v4

    #@1d0
    if-nez v4, :cond_0

    #@1d2
    .line 1569
    move-object/from16 v0, p0

    #@1d4
    move/from16 v1, v21

    #@1d6
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@1d9
    goto/16 :goto_0

    #@1db
    .end local v14    # "ps":I
    .end local v21    # "nps":I
    .restart local v15    # "ps":I
    :cond_13
    move v14, v15

    #@1dc
    .line 1564
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_14
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    #@1df
    move-result v14

    #@1e0
    goto :goto_6

    #@1e1
    .line 1572
    :cond_15
    const/4 v8, 0x0

    #@1e2
    goto/16 :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    #@0
    .prologue
    .line 2637
    sget v0, Ljava/util/concurrent/ForkJoinPool;->commonParallelism:I

    #@2
    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2166
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
    .line 2167
    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@c
    .local v6, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@e
    .local v3, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget-short v2, v3, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@10
    .line 2168
    .local v2, "p":I
    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@12
    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@14
    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@16
    sub-int v1, v8, v9

    #@18
    .line 2169
    .local v1, "n":I
    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@1a
    const/16 v10, 0x30

    #@1c
    shr-long/2addr v8, v10

    #@1d
    long-to-int v8, v8

    #@1e
    add-int v0, v8, v2

    #@20
    .line 2170
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    #@22
    if-le v0, v2, :cond_0

    #@24
    :goto_0
    sub-int v7, v1, v7

    #@26
    return v7

    #@27
    .line 2171
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    #@29
    if-le v0, v2, :cond_1

    #@2b
    const/4 v7, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2172
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    #@2f
    if-le v0, v2, :cond_2

    #@31
    const/4 v7, 0x2

    #@32
    goto :goto_0

    #@33
    .line 2173
    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    #@35
    if-le v0, v2, :cond_3

    #@37
    const/4 v7, 0x4

    #@38
    goto :goto_0

    #@39
    .line 2174
    :cond_3
    const/16 v7, 0x8

    #@3b
    goto :goto_0

    #@3c
    .line 2176
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    return v7
.end method

.method private helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I
    .locals 12
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1886
    .local p2, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v8, 0x0

    #@1
    .line 1887
    .local v8, "s":I
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v10, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_0

    #@5
    array-length v11, v10

    #@6
    add-int/lit8 v6, v11, -0x1

    #@8
    .local v6, "m":I
    if-ltz v6, :cond_0

    #@a
    .line 1888
    if-eqz p1, :cond_0

    #@c
    if-eqz p2, :cond_0

    #@e
    .line 1889
    iget-short v4, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@10
    .line 1890
    .local v4, "j":I
    add-int v11, v6, v6

    #@12
    add-int/lit8 v9, v11, 0x1

    #@14
    .line 1891
    .local v9, "scans":I
    const-wide/16 v0, 0x0

    #@16
    .line 1892
    .local v0, "c":J
    move v5, v9

    #@17
    .line 1894
    .local v5, "k":I
    :goto_0
    iget v8, p2, Ljava/util/concurrent/CountedCompleter;->status:I

    #@19
    if-gez v8, :cond_1

    #@1b
    .line 1909
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    .end local v9    # "scans":I
    :cond_0
    return v8

    #@1c
    .line 1896
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "m":I
    .restart local v9    # "scans":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->internalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    #@1f
    move-result v11

    #@20
    if-eqz v11, :cond_3

    #@22
    .line 1897
    move v5, v9

    #@23
    .line 1892
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    #@25
    goto :goto_0

    #@26
    .line 1898
    :cond_3
    iget v8, p2, Ljava/util/concurrent/CountedCompleter;->status:I

    #@28
    if-ltz v8, :cond_0

    #@2a
    .line 1900
    and-int v11, v4, v6

    #@2c
    aget-object v7, v10, v11

    #@2e
    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_4

    #@30
    invoke-virtual {v7, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    #@33
    move-result v11

    #@34
    if-eqz v11, :cond_4

    #@36
    .line 1901
    move v5, v9

    #@37
    goto :goto_1

    #@38
    .line 1902
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@3a
    if-gez v5, :cond_2

    #@3c
    .line 1903
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@3e
    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v11, v0, v2

    #@40
    if-eqz v11, :cond_0

    #@42
    .line 1905
    move v5, v9

    #@43
    move-wide v0, v2

    #@44
    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method private final helpRelease(J[Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 15
    .param p1, "c"    # J
    .param p3, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p4, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p5, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p6, "b"    # I

    #@0
    .prologue
    .line 1765
    if-eqz p4, :cond_0

    #@2
    move-object/from16 v0, p4

    #@4
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@6
    if-gez v2, :cond_0

    #@8
    move-wide/from16 v0, p1

    #@a
    long-to-int v10, v0

    #@b
    .local v10, "e":I
    if-lez v10, :cond_0

    #@d
    .line 1766
    if-eqz p3, :cond_0

    #@f
    move-object/from16 v0, p3

    #@11
    array-length v2, v0

    #@12
    const v3, 0xffff

    #@15
    and-int v11, v10, v3

    #@17
    .local v11, "i":I
    if-le v2, v11, :cond_0

    #@19
    .line 1767
    aget-object v14, p3, v11

    #@1b
    .local v14, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v14, :cond_0

    #@1d
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@1f
    cmp-long v2, v2, p1

    #@21
    if-nez v2, :cond_0

    #@23
    .line 1768
    iget v2, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@25
    const v3, 0x7fffffff

    #@28
    and-int/2addr v2, v3

    #@29
    int-to-long v2, v2

    #@2a
    .line 1769
    const/16 v4, 0x20

    #@2c
    ushr-long v4, p1, v4

    #@2e
    long-to-int v4, v4

    #@2f
    const/high16 v5, 0x10000

    #@31
    add-int/2addr v4, v5

    #@32
    int-to-long v4, v4

    #@33
    const/16 v6, 0x20

    #@35
    shl-long/2addr v4, v6

    #@36
    .line 1768
    or-long v8, v2, v4

    #@38
    .line 1770
    .local v8, "nc":J
    const/high16 v2, 0x10000

    #@3a
    add-int/2addr v2, v10

    #@3b
    const v3, 0x7fffffff

    #@3e
    and-int v12, v2, v3

    #@40
    .line 1771
    .local v12, "ne":I
    if-eqz p5, :cond_0

    #@42
    move-object/from16 v0, p5

    #@44
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@46
    move/from16 v0, p6

    #@48
    if-ne v2, v0, :cond_0

    #@4a
    move-object/from16 v0, p4

    #@4c
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@4e
    if-gez v2, :cond_0

    #@50
    .line 1772
    iget v2, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@52
    const/high16 v3, -0x80000000

    #@54
    or-int/2addr v3, v10

    #@55
    if-ne v2, v3, :cond_0

    #@57
    .line 1773
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@59
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@5b
    move-object v3, p0

    #@5c
    move-wide/from16 v6, p1

    #@5e
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@61
    move-result v2

    #@62
    .line 1771
    if-eqz v2, :cond_0

    #@64
    .line 1774
    iput v12, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@66
    .line 1775
    iget-object v13, v14, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@68
    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_0

    #@6a
    .line 1776
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@6c
    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@6f
    .line 1763
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v11    # "i":I
    .end local v12    # "ne":I
    .end local v13    # "p":Ljava/lang/Thread;
    .end local v14    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    return-void
.end method

.method private static makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3247
    const/4 v2, -0x1

    #@2
    .line 3248
    .local v2, "parallelism":I
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@4
    .line 3250
    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v4, 0x0

    #@5
    .line 3253
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    #@8
    .line 3252
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v10

    #@c
    .line 3255
    .local v10, "pp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    #@f
    .line 3254
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    .line 3257
    .local v7, "fp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    #@16
    .line 3256
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 3258
    .local v8, "hp":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@1c
    .line 3259
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    .line 3260
    :cond_0
    if-eqz v7, :cond_1

    #@22
    .line 3261
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
    .line 3263
    :cond_1
    if-eqz v8, :cond_2

    #@34
    .line 3264
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
    .line 3269
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v7    # "fp":Ljava/lang/String;
    .end local v8    # "hp":Ljava/lang/String;
    .end local v10    # "pp":Ljava/lang/String;
    :cond_2
    :goto_0
    if-gez v2, :cond_3

    #@46
    .line 3270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@4d
    move-result v1

    #@4e
    add-int/lit8 v2, v1, -0x1

    #@50
    if-gez v2, :cond_3

    #@52
    .line 3271
    const/4 v2, 0x0

    #@53
    .line 3272
    :cond_3
    const/16 v1, 0x7fff

    #@55
    if-le v2, v1, :cond_4

    #@57
    .line 3273
    const/16 v2, 0x7fff

    #@59
    .line 3274
    :cond_4
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    #@5b
    .line 3275
    const-string/jumbo v6, "ForkJoinPool.commonPool-worker-"

    #@5e
    .line 3274
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    #@61
    return-object v1

    #@62
    .line 3266
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catch_0
    move-exception v9

    #@63
    .local v9, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 4
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 3154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .line 3155
    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@6
    if-eqz v2, :cond_4

    #@8
    .line 3156
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@a
    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@c
    .line 3157
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_3

    #@12
    .line 3158
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@14
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 3160
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 3161
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 3163
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    #@29
    .line 3153
    .end local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_3
    :goto_0
    return-void

    #@2a
    .line 3162
    .restart local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    :catchall_0
    move-exception v2

    #@2b
    .line 3163
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->incrementActiveCount()V

    #@2e
    .line 3162
    throw v2

    #@2f
    .line 3170
    .end local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_3

    #@35
    .line 3171
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_4

    #@3b
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
    .line 1091
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
    .line 3055
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    const-wide v2, 0x7fffffffffffffffL

    #@9
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    #@c
    .line 3054
    return-void
.end method

.method private releasePlock(I)V
    .locals 1
    .param p1, "ps"    # I

    #@0
    .prologue
    .line 1276
    iput p1, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@2
    .line 1277
    monitor-enter p0

    #@3
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 1275
    return-void

    #@8
    .line 1277
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method private final scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)I
    .locals 29
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "r"    # I

    #@0
    .prologue
    .line 1658
    move-object/from16 v0, p0

    #@2
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .line 1659
    .local v6, "c":J
    move-object/from16 v0, p0

    #@6
    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    .local v8, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_1

    #@a
    array-length v5, v8

    #@b
    add-int/lit8 v28, v5, -0x1

    #@d
    .local v28, "m":I
    if-ltz v28, :cond_1

    #@f
    if-eqz p1, :cond_1

    #@11
    .line 1660
    add-int v5, v28, v28

    #@13
    add-int/lit8 v27, v5, 0x1

    #@15
    .local v27, "j":I
    move-object/from16 v0, p1

    #@17
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@19
    move/from16 v26, v0

    #@1b
    .line 1662
    .local v26, "ec":I
    :cond_0
    sub-int v5, p2, v27

    #@1d
    and-int v5, v5, v28

    #@1f
    aget-object v10, v8, v5

    #@21
    .local v10, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    #@23
    .line 1663
    iget v11, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@25
    .local v11, "b":I
    iget v5, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@27
    sub-int v5, v11, v5

    #@29
    if-gez v5, :cond_4

    #@2b
    iget-object v13, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@2d
    .local v13, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_4

    #@2f
    .line 1664
    array-length v5, v13

    #@30
    add-int/lit8 v5, v5, -0x1

    #@32
    and-int/2addr v5, v11

    #@33
    sget v9, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@35
    shl-int/2addr v5, v9

    #@36
    sget v9, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@38
    add-int/2addr v5, v9

    #@39
    int-to-long v14, v5

    #@3a
    .line 1666
    .local v14, "i":J
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@3c
    invoke-virtual {v5, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@3f
    move-result-object v16

    #@40
    .line 1665
    check-cast v16, Ljava/util/concurrent/ForkJoinTask;

    #@42
    .local v16, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v16, :cond_1

    #@44
    .line 1667
    if-gez v26, :cond_2

    #@46
    move-object/from16 v5, p0

    #@48
    move-object/from16 v9, p1

    #@4a
    .line 1668
    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ForkJoinPool;->helpRelease(J[Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    #@4d
    .line 1693
    .end local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v11    # "b":I
    .end local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v26    # "ec":I
    .end local v27    # "j":I
    .end local v28    # "m":I
    :cond_1
    :goto_0
    const/4 v5, 0x0

    #@4e
    return v5

    #@4f
    .line 1669
    .restart local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "b":I
    .restart local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "i":J
    .restart local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v26    # "ec":I
    .restart local v27    # "j":I
    .restart local v28    # "m":I
    :cond_2
    iget v5, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@51
    if-ne v5, v11, :cond_1

    #@53
    .line 1670
    sget-object v12, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@55
    const/16 v17, 0x0

    #@57
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@5a
    move-result v5

    #@5b
    .line 1669
    if-eqz v5, :cond_1

    #@5d
    .line 1671
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@5f
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    #@61
    add-int/lit8 v9, v11, 0x1

    #@63
    move-wide/from16 v0, v18

    #@65
    invoke-virtual {v5, v10, v0, v1, v9}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@68
    .line 1672
    add-int/lit8 v5, v11, 0x1

    #@6a
    iget v9, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6c
    sub-int/2addr v5, v9

    #@6d
    if-gez v5, :cond_3

    #@6f
    .line 1673
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v8, v10}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@74
    .line 1674
    :cond_3
    move-object/from16 v0, p1

    #@76
    move-object/from16 v1, v16

    #@78
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    #@7b
    goto :goto_0

    #@7c
    .line 1679
    .end local v11    # "b":I
    .end local v13    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v27, v27, -0x1

    #@7e
    if-gez v27, :cond_0

    #@80
    .line 1680
    long-to-int v4, v6

    #@81
    .local v4, "e":I
    or-int v5, v26, v4

    #@83
    if-gez v5, :cond_5

    #@85
    .line 1681
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, p1

    #@89
    move/from16 v2, v26

    #@8b
    invoke-direct {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;JI)I

    #@8e
    move-result v5

    #@8f
    return v5

    #@90
    .line 1682
    :cond_5
    move-object/from16 v0, p0

    #@92
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@94
    move-wide/from16 v18, v0

    #@96
    cmp-long v5, v18, v6

    #@98
    if-nez v5, :cond_1

    #@9a
    .line 1683
    move/from16 v0, v26

    #@9c
    int-to-long v0, v0

    #@9d
    move-wide/from16 v18, v0

    #@9f
    const-wide/high16 v20, 0x1000000000000L

    #@a1
    sub-long v20, v6, v20

    #@a3
    const-wide v22, -0x100000000L

    #@a8
    and-long v20, v20, v22

    #@aa
    or-long v24, v18, v20

    #@ac
    .line 1684
    .local v24, "nc":J
    move-object/from16 v0, p1

    #@ae
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@b0
    .line 1685
    const/high16 v5, -0x80000000

    #@b2
    or-int v5, v5, v26

    #@b4
    move-object/from16 v0, p1

    #@b6
    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@b8
    .line 1686
    sget-object v18, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@ba
    sget-wide v20, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@bc
    move-object/from16 v19, p0

    #@be
    move-wide/from16 v22, v6

    #@c0
    invoke-virtual/range {v18 .. v25}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@c3
    move-result v5

    #@c4
    if-nez v5, :cond_1

    #@c6
    .line 1687
    move/from16 v0, v26

    #@c8
    move-object/from16 v1, p1

    #@ca
    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@cc
    goto :goto_0
.end method

.method private tryAddWorker()V
    .locals 15

    #@0
    .prologue
    const/16 v14, 0x20

    #@2
    .line 1286
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .local v4, "c":J
    ushr-long v0, v4, v14

    #@6
    long-to-int v12, v0

    #@7
    .local v12, "u":I
    if-gez v12, :cond_1

    #@9
    .line 1287
    const v0, 0x8000

    #@c
    and-int/2addr v0, v12

    #@d
    if-eqz v0, :cond_1

    #@f
    long-to-int v8, v4

    #@10
    .local v8, "e":I
    if-ltz v8, :cond_1

    #@12
    .line 1288
    add-int/lit8 v0, v12, 0x1

    #@14
    const v1, 0xffff

    #@17
    and-int/2addr v0, v1

    #@18
    .line 1289
    const/high16 v1, 0x10000

    #@1a
    add-int/2addr v1, v12

    #@1b
    const/high16 v2, -0x10000

    #@1d
    and-int/2addr v1, v2

    #@1e
    .line 1288
    or-int/2addr v0, v1

    #@1f
    int-to-long v0, v0

    #@20
    shl-long/2addr v0, v14

    #@21
    .line 1289
    int-to-long v2, v8

    #@22
    .line 1288
    or-long v6, v0, v2

    #@24
    .line 1290
    .local v6, "nc":J
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
    .line 1292
    const/4 v9, 0x0

    #@30
    .line 1293
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v13, 0x0

    #@31
    .line 1295
    .local v13, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@33
    .local v10, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v10, :cond_2

    #@35
    .line 1296
    invoke-interface {v10, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    #@38
    move-result-object v13

    #@39
    .local v13, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v13, :cond_2

    #@3b
    .line 1297
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 1284
    .end local v6    # "nc":J
    .end local v8    # "e":I
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v13    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    #@3f
    .line 1300
    .restart local v6    # "nc":J
    .restart local v8    # "e":I
    .restart local v9    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v11

    #@40
    .line 1301
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v9, v11

    #@41
    .line 1303
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v11    # "rex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v13, v9}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@44
    goto :goto_0
.end method

.method private tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 23
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1800
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v18, 0x0

    #@2
    .local v18, "stat":I
    const/16 v19, 0x0

    #@4
    .line 1801
    .local v19, "steps":I
    if-eqz p2, :cond_1

    #@6
    if-eqz p1, :cond_1

    #@8
    .line 1802
    move-object/from16 v0, p1

    #@a
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@c
    move-object/from16 v0, p1

    #@e
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@10
    sub-int/2addr v2, v4

    #@11
    if-ltz v2, :cond_1

    #@13
    .line 1804
    :cond_0
    move-object/from16 v20, p2

    #@15
    .line 1805
    .local v20, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v11, p1

    #@17
    .line 1807
    .local v11, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    move-object/from16 v0, p2

    #@19
    iget v0, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@1b
    move/from16 v17, v0

    #@1d
    .local v17, "s":I
    if-gez v17, :cond_2

    #@1f
    .line 1808
    move/from16 v18, v17

    #@21
    .line 1875
    .end local v11    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v17    # "s":I
    .end local v20    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    :goto_1
    return v18

    #@22
    .line 1811
    .restart local v11    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v17    # "s":I
    .restart local v20    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@26
    move-object/from16 v22, v0

    #@28
    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    #@2a
    move-object/from16 v0, v22

    #@2c
    array-length v2, v0

    #@2d
    add-int/lit8 v13, v2, -0x1

    #@2f
    .local v13, "m":I
    if-lez v13, :cond_1

    #@31
    .line 1813
    iget v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@33
    or-int/lit8 v2, v2, 0x1

    #@35
    and-int v9, v2, v13

    #@37
    .local v9, "h":I
    aget-object v21, v22, v9

    #@39
    .local v21, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_3

    #@3b
    .line 1814
    move-object/from16 v0, v21

    #@3d
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@3f
    move-object/from16 v0, v20

    #@41
    if-eq v2, v0, :cond_6

    #@43
    .line 1815
    :cond_3
    move v15, v9

    #@44
    .line 1816
    .local v15, "origin":I
    :cond_4
    add-int/lit8 v2, v9, 0x2

    #@46
    and-int v9, v2, v13

    #@48
    and-int/lit8 v2, v9, 0xf

    #@4a
    const/4 v4, 0x1

    #@4b
    if-ne v2, v4, :cond_5

    #@4d
    .line 1817
    move-object/from16 v0, v20

    #@4f
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@51
    if-ltz v2, :cond_0

    #@53
    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@55
    move-object/from16 v0, v20

    #@57
    if-ne v2, v0, :cond_0

    #@59
    .line 1819
    :cond_5
    aget-object v21, v22, v9

    #@5b
    if-eqz v21, :cond_9

    #@5d
    .line 1820
    move-object/from16 v0, v21

    #@5f
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@61
    move-object/from16 v0, v20

    #@63
    if-ne v2, v0, :cond_9

    #@65
    .line 1821
    iput v9, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@67
    .line 1830
    .end local v15    # "origin":I
    :cond_6
    move-object/from16 v0, v20

    #@69
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@6b
    if-ltz v2, :cond_0

    #@6d
    .line 1832
    move-object/from16 v0, v21

    #@6f
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@71
    .local v8, "b":I
    move-object/from16 v0, v21

    #@73
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@75
    sub-int v2, v8, v2

    #@77
    if-gez v2, :cond_a

    #@79
    move-object/from16 v0, v21

    #@7b
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@7d
    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;
    if-eqz v3, :cond_a

    #@7f
    .line 1833
    array-length v2, v3

    #@80
    add-int/lit8 v2, v2, -0x1

    #@82
    and-int/2addr v2, v8

    #@83
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@85
    shl-int/2addr v2, v4

    #@86
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@88
    add-int v10, v2, v4

    #@8a
    .line 1835
    .local v10, "i":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@8c
    int-to-long v4, v10

    #@8d
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@90
    move-result-object v6

    #@91
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    #@93
    .line 1836
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    #@95
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@97
    if-ltz v2, :cond_0

    #@99
    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@9b
    move-object/from16 v0, v20

    #@9d
    if-ne v2, v0, :cond_0

    #@9f
    .line 1837
    move-object/from16 v0, v21

    #@a1
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@a3
    move-object/from16 v0, v20

    #@a5
    if-ne v2, v0, :cond_0

    #@a7
    .line 1839
    const/16 v18, 0x1

    #@a9
    .line 1840
    move-object/from16 v0, v21

    #@ab
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@ad
    if-ne v2, v8, :cond_6

    #@af
    .line 1841
    if-eqz v6, :cond_1

    #@b1
    .line 1843
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@b3
    int-to-long v4, v10

    #@b4
    const/4 v7, 0x0

    #@b5
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@b8
    move-result v2

    #@b9
    if-eqz v2, :cond_6

    #@bb
    .line 1844
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@bd
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QBASE:J

    #@bf
    add-int/lit8 v7, v8, 0x1

    #@c1
    move-object/from16 v0, v21

    #@c3
    invoke-virtual {v2, v0, v4, v5, v7}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@c6
    .line 1845
    move-object/from16 v0, p1

    #@c8
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@ca
    move-object/from16 v16, v0

    #@cc
    .line 1846
    .local v16, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    #@ce
    iget v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@d0
    .line 1848
    .local v12, "jt":I
    :cond_7
    move-object/from16 v0, p1

    #@d2
    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@d4
    .line 1849
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@d7
    .line 1850
    move-object/from16 v0, p2

    #@d9
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@db
    if-ltz v2, :cond_8

    #@dd
    .line 1851
    move-object/from16 v0, p1

    #@df
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@e1
    if-eq v2, v12, :cond_8

    #@e3
    .line 1852
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    #@e6
    move-result-object v6

    #@e7
    if-nez v6, :cond_7

    #@e9
    .line 1853
    :cond_8
    move-object/from16 v0, v16

    #@eb
    move-object/from16 v1, p1

    #@ed
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@ef
    goto/16 :goto_1

    #@f1
    .line 1824
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "i":I
    .end local v12    # "jt":I
    .end local v16    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v15    # "origin":I
    :cond_9
    if-ne v9, v15, :cond_4

    #@f3
    goto/16 :goto_1

    #@f5
    .line 1859
    .end local v15    # "origin":I
    .restart local v8    # "b":I
    :cond_a
    move-object/from16 v0, v21

    #@f7
    iget-object v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@f9
    .line 1860
    .local v14, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    #@fb
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@fd
    if-ltz v2, :cond_0

    #@ff
    iget-object v2, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@101
    move-object/from16 v0, v20

    #@103
    if-ne v2, v0, :cond_0

    #@105
    .line 1861
    move-object/from16 v0, v21

    #@107
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@109
    move-object/from16 v0, v20

    #@10b
    if-ne v2, v0, :cond_0

    #@10d
    .line 1863
    if-eqz v14, :cond_1

    #@10f
    add-int/lit8 v19, v19, 0x1

    #@111
    const/16 v2, 0x40

    #@113
    move/from16 v0, v19

    #@115
    if-eq v0, v2, :cond_1

    #@117
    .line 1866
    move-object/from16 v20, v14

    #@119
    .line 1867
    move-object/from16 v11, v21

    #@11b
    .line 1868
    goto/16 :goto_0
.end method

.method private tryTerminate(ZZ)Z
    .locals 39
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 2197
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@2
    move-object/from16 v0, p0

    #@4
    if-ne v0, v4, :cond_0

    #@6
    .line 2198
    const/4 v4, 0x0

    #@7
    return v4

    #@8
    .line 2199
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@c
    .local v8, "ps":I
    if-ltz v8, :cond_2

    #@e
    .line 2200
    if-nez p2, :cond_1

    #@10
    .line 2201
    const/4 v4, 0x0

    #@11
    return v4

    #@12
    .line 2202
    :cond_1
    and-int/lit8 v4, v8, 0x2

    #@14
    if-nez v4, :cond_5

    #@16
    .line 2203
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@18
    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@1a
    add-int/lit8 v9, v8, 0x2

    #@1c
    .end local v8    # "ps":I
    .local v9, "ps":I
    move-object/from16 v5, p0

    #@1e
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_4

    #@24
    move v8, v9

    #@25
    .line 2205
    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    :goto_0
    add-int/lit8 v4, v8, 0x2

    #@27
    const v5, 0x7fffffff

    #@2a
    and-int/2addr v4, v5

    #@2b
    const/high16 v5, -0x80000000

    #@2d
    or-int v15, v4, v5

    #@2f
    .line 2206
    .local v15, "nps":I
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@31
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@33
    move-object/from16 v11, p0

    #@35
    move v14, v8

    #@36
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_2

    #@3c
    .line 2207
    move-object/from16 v0, p0

    #@3e
    invoke-direct {v0, v15}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@41
    .line 2210
    .end local v15    # "nps":I
    :cond_2
    move-object/from16 v0, p0

    #@43
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@45
    move-wide/from16 v20, v0

    #@47
    .local v20, "c":J
    const-wide v4, 0x80000000L

    #@4c
    and-long v4, v4, v20

    #@4e
    const-wide/16 v6, 0x0

    #@50
    cmp-long v4, v4, v6

    #@52
    if-eqz v4, :cond_6

    #@54
    .line 2211
    const/16 v4, 0x20

    #@56
    ushr-long v4, v20, v4

    #@58
    long-to-int v4, v4

    #@59
    int-to-short v4, v4

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@5e
    add-int/2addr v4, v5

    #@5f
    if-gtz v4, :cond_3

    #@61
    .line 2212
    monitor-enter p0

    #@62
    .line 2213
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 2216
    :cond_3
    const/4 v4, 0x1

    #@67
    return v4

    #@68
    .end local v8    # "ps":I
    .end local v20    # "c":J
    .restart local v9    # "ps":I
    :cond_4
    move v8, v9

    #@69
    .line 2204
    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    #@6c
    move-result v8

    #@6d
    goto :goto_0

    #@6e
    .line 2212
    .restart local v20    # "c":J
    :catchall_0
    move-exception v4

    #@6f
    monitor-exit p0

    #@70
    throw v4

    #@71
    .line 2218
    :cond_6
    if-nez p1, :cond_a

    #@73
    .line 2220
    const/16 v4, 0x30

    #@75
    shr-long v4, v20, v4

    #@77
    long-to-int v4, v4

    #@78
    move-object/from16 v0, p0

    #@7a
    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@7c
    add-int/2addr v4, v5

    #@7d
    if-lez v4, :cond_7

    #@7f
    .line 2221
    const/4 v4, 0x0

    #@80
    return v4

    #@81
    .line 2222
    :cond_7
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@85
    move-object/from16 v37, v0

    #@87
    .local v37, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_a

    #@89
    .line 2223
    const/16 v31, 0x0

    #@8b
    .local v31, "i":I
    :goto_1
    move-object/from16 v0, v37

    #@8d
    array-length v4, v0

    #@8e
    move/from16 v0, v31

    #@90
    if-ge v0, v4, :cond_a

    #@92
    .line 2224
    aget-object v36, v37, v31

    #@94
    .local v36, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_9

    #@96
    .line 2225
    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    #@99
    move-result v4

    #@9a
    if-eqz v4, :cond_8

    #@9c
    .line 2226
    and-int/lit8 v4, v31, 0x1

    #@9e
    if-eqz v4, :cond_9

    #@a0
    move-object/from16 v0, v36

    #@a2
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@a4
    if-ltz v4, :cond_9

    #@a6
    .line 2227
    :cond_8
    move-object/from16 v0, p0

    #@a8
    move-object/from16 v1, v37

    #@aa
    move-object/from16 v2, v36

    #@ac
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@af
    .line 2228
    const/4 v4, 0x0

    #@b0
    return v4

    #@b1
    .line 2223
    :cond_9
    add-int/lit8 v31, v31, 0x1

    #@b3
    goto :goto_1

    #@b4
    .line 2233
    .end local v31    # "i":I
    .end local v36    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_a
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@b6
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@b8
    const-wide v4, 0x80000000L

    #@bd
    or-long v22, v20, v4

    #@bf
    move-object/from16 v17, p0

    #@c1
    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@c4
    move-result v4

    #@c5
    if-eqz v4, :cond_2

    #@c7
    .line 2234
    const/16 v35, 0x0

    #@c9
    .local v35, "pass":I
    :goto_2
    const/4 v4, 0x3

    #@ca
    move/from16 v0, v35

    #@cc
    if-ge v0, v4, :cond_2

    #@ce
    .line 2236
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@d2
    move-object/from16 v37, v0

    #@d4
    .restart local v37    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_e

    #@d6
    .line 2237
    move-object/from16 v0, v37

    #@d8
    array-length v0, v0

    #@d9
    move/from16 v33, v0

    #@db
    .line 2238
    .local v33, "n":I
    const/16 v31, 0x0

    #@dd
    .restart local v31    # "i":I
    :goto_3
    move/from16 v0, v31

    #@df
    move/from16 v1, v33

    #@e1
    if-ge v0, v1, :cond_d

    #@e3
    .line 2239
    aget-object v36, v37, v31

    #@e5
    .restart local v36    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_c

    #@e7
    .line 2240
    const/4 v4, -0x1

    #@e8
    move-object/from16 v0, v36

    #@ea
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@ec
    .line 2241
    if-lez v35, :cond_c

    #@ee
    .line 2242
    invoke-virtual/range {v36 .. v36}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    #@f1
    .line 2243
    const/4 v4, 0x1

    #@f2
    move/from16 v0, v35

    #@f4
    if-le v0, v4, :cond_c

    #@f6
    move-object/from16 v0, v36

    #@f8
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    #@fa
    move-object/from16 v38, v0

    #@fc
    .local v38, "wt":Ljava/lang/Thread;
    if-eqz v38, :cond_c

    #@fe
    .line 2244
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Thread;->isInterrupted()Z

    #@101
    move-result v4

    #@102
    if-nez v4, :cond_b

    #@104
    .line 2246
    :try_start_1
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@107
    .line 2250
    :cond_b
    :goto_4
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@109
    move-object/from16 v0, v38

    #@10b
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@10e
    .line 2238
    .end local v38    # "wt":Ljava/lang/Thread;
    :cond_c
    add-int/lit8 v31, v31, 0x1

    #@110
    goto :goto_3

    #@111
    .line 2247
    .restart local v38    # "wt":Ljava/lang/Thread;
    :catch_0
    move-exception v32

    #@112
    .local v32, "ignore":Ljava/lang/Throwable;
    goto :goto_4

    #@113
    .line 2257
    .end local v32    # "ignore":Ljava/lang/Throwable;
    .end local v36    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v38    # "wt":Ljava/lang/Thread;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    #@115
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@117
    move-wide/from16 v26, v0

    #@119
    .local v26, "cc":J
    move-wide/from16 v0, v26

    #@11b
    long-to-int v4, v0

    #@11c
    const v5, 0x7fffffff

    #@11f
    and-int v30, v4, v5

    #@121
    .local v30, "e":I
    if-eqz v30, :cond_e

    #@123
    .line 2258
    const v4, 0xffff

    #@126
    and-int v31, v30, v4

    #@128
    move/from16 v0, v31

    #@12a
    move/from16 v1, v33

    #@12c
    if-ge v0, v1, :cond_e

    #@12e
    if-ltz v31, :cond_e

    #@130
    .line 2259
    aget-object v36, v37, v31

    #@132
    .restart local v36    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_e

    #@134
    .line 2260
    move-object/from16 v0, v36

    #@136
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@138
    const v5, 0x7fffffff

    #@13b
    and-int/2addr v4, v5

    #@13c
    int-to-long v4, v4

    #@13d
    .line 2261
    const-wide/high16 v6, 0x1000000000000L

    #@13f
    add-long v6, v6, v26

    #@141
    const-wide/high16 v10, -0x1000000000000L

    #@143
    and-long/2addr v6, v10

    #@144
    .line 2260
    or-long/2addr v4, v6

    #@145
    .line 2262
    const-wide v6, 0xffff80000000L

    #@14a
    and-long v6, v6, v26

    #@14c
    .line 2260
    or-long v28, v4, v6

    #@14e
    .line 2263
    .local v28, "nc":J
    move-object/from16 v0, v36

    #@150
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@152
    const/high16 v5, -0x80000000

    #@154
    or-int v5, v5, v30

    #@156
    if-ne v4, v5, :cond_d

    #@158
    .line 2264
    sget-object v22, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@15a
    sget-wide v24, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@15c
    move-object/from16 v23, p0

    #@15e
    invoke-virtual/range {v22 .. v29}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@161
    move-result v4

    #@162
    .line 2263
    if-eqz v4, :cond_d

    #@164
    .line 2265
    const/high16 v4, 0x10000

    #@166
    add-int v4, v4, v30

    #@168
    const v5, 0x7fffffff

    #@16b
    and-int/2addr v4, v5

    #@16c
    move-object/from16 v0, v36

    #@16e
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@170
    .line 2266
    const/4 v4, -0x1

    #@171
    move-object/from16 v0, v36

    #@173
    iput v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@175
    .line 2267
    move-object/from16 v0, v36

    #@177
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@179
    move-object/from16 v34, v0

    #@17b
    .local v34, "p":Ljava/lang/Thread;
    if-eqz v34, :cond_d

    #@17d
    .line 2268
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@17f
    move-object/from16 v0, v34

    #@181
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@184
    goto :goto_5

    #@185
    .line 2234
    .end local v26    # "cc":J
    .end local v28    # "nc":J
    .end local v30    # "e":I
    .end local v31    # "i":I
    .end local v33    # "n":I
    .end local v34    # "p":Ljava/lang/Thread;
    .end local v36    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_e
    add-int/lit8 v35, v35, 0x1

    #@187
    goto/16 :goto_2
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I
    .locals 20
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1975
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v14, 0x0

    #@1
    .line 1976
    .local v14, "s":I
    if-eqz p2, :cond_8

    #@3
    move-object/from16 v0, p2

    #@5
    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@7
    if-ltz v14, :cond_8

    #@9
    if-eqz p1, :cond_8

    #@b
    .line 1977
    move-object/from16 v0, p1

    #@d
    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@f
    .line 1978
    .local v13, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p2

    #@11
    move-object/from16 v1, p1

    #@13
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@15
    .line 1979
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1980
    move-object/from16 v0, p2

    #@1d
    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@1f
    if-gez v14, :cond_0

    #@21
    .line 1981
    :cond_1
    if-ltz v14, :cond_2

    #@23
    move-object/from16 v0, p2

    #@25
    instance-of v2, v0, Ljava/util/concurrent/CountedCompleter;

    #@27
    if-eqz v2, :cond_2

    #@29
    move-object/from16 v2, p2

    #@2b
    .line 1982
    check-cast v2, Ljava/util/concurrent/CountedCompleter;

    #@2d
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, p1

    #@31
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I

    #@34
    move-result v14

    #@35
    .line 1983
    :cond_2
    const-wide/16 v10, 0x0

    #@37
    .line 1984
    .local v10, "cc":J
    :cond_3
    :goto_0
    if-ltz v14, :cond_7

    #@39
    move-object/from16 v0, p2

    #@3b
    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@3d
    if-ltz v14, :cond_7

    #@3f
    .line 1985
    invoke-direct/range {p0 .. p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    #@42
    move-result v14

    #@43
    if-nez v14, :cond_3

    #@45
    .line 1986
    move-object/from16 v0, p2

    #@47
    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@49
    if-ltz v14, :cond_3

    #@4b
    .line 1987
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(J)Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_4

    #@53
    .line 1988
    move-object/from16 v0, p0

    #@55
    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@57
    goto :goto_0

    #@58
    .line 1990
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->trySetSignal()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_5

    #@5e
    move-object/from16 v0, p2

    #@60
    iget v14, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@62
    if-ltz v14, :cond_5

    #@64
    .line 1991
    monitor-enter p2

    #@65
    .line 1992
    :try_start_0
    move-object/from16 v0, p2

    #@67
    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    if-ltz v2, :cond_6

    #@6b
    .line 1994
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    :goto_1
    monitor-exit p2

    #@6f
    .line 2003
    :cond_5
    :goto_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@71
    .line 2004
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@73
    move-object/from16 v0, p0

    #@75
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@77
    .line 2005
    .local v6, "c":J
    const-wide v8, 0xffffffffffffL

    #@7c
    and-long/2addr v8, v6

    #@7d
    .line 2006
    const-wide/high16 v16, -0x1000000000000L

    #@7f
    and-long v16, v16, v6

    #@81
    const-wide/high16 v18, 0x1000000000000L

    #@83
    add-long v16, v16, v18

    #@85
    .line 2005
    or-long v8, v8, v16

    #@87
    move-object/from16 v3, p0

    #@89
    .line 2003
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@8c
    move-result v2

    #@8d
    if-nez v2, :cond_3

    #@8f
    goto :goto_2

    #@90
    .line 1995
    .end local v6    # "c":J
    :catch_0
    move-exception v12

    #@91
    .local v12, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    #@92
    .line 1999
    .end local v12    # "ie":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@95
    goto :goto_1

    #@96
    .line 1991
    :catchall_0
    move-exception v2

    #@97
    monitor-exit p2

    #@98
    throw v2

    #@99
    .line 2010
    :cond_7
    move-object/from16 v0, p1

    #@9b
    iput-object v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@9d
    .line 2012
    .end local v10    # "cc":J
    .end local v13    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_8
    return v14
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 3017
    move-object/from16 v0, p3

    #@2
    move-wide/from16 v1, p1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@7
    move-result-wide v8

    #@8
    .line 3019
    .local v8, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v16

    #@c
    .line 3020
    .local v16, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v16

    #@e
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@10
    move/from16 v19, v0

    #@12
    if-eqz v19, :cond_0

    #@14
    move-object/from16 v18, v16

    #@16
    .line 3021
    check-cast v18, Ljava/util/concurrent/ForkJoinWorkerThread;

    #@18
    .local v18, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v18

    #@1a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@1c
    move-object/from16 v19, v0

    #@1e
    move-object/from16 v0, v19

    #@20
    move-object/from16 v1, p0

    #@22
    if-ne v0, v1, :cond_0

    #@24
    .line 3022
    move-object/from16 v0, v18

    #@26
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@28
    move-object/from16 v19, v0

    #@2a
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v19

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@31
    .line 3023
    const/16 v19, 0x1

    #@33
    return v19

    #@34
    .line 3025
    .end local v18    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@37
    move-result-wide v14

    #@38
    .line 3027
    .local v14, "startTime":J
    const/4 v11, 0x0

    #@39
    .line 3028
    .local v11, "r":I
    const/4 v5, 0x1

    #@3a
    .line 3029
    .local v5, "found":Z
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    #@3d
    move-result v19

    #@3e
    if-nez v19, :cond_5

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@44
    move-object/from16 v17, v0

    #@46
    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_5

    #@48
    .line 3030
    move-object/from16 v0, v17

    #@4a
    array-length v0, v0

    #@4b
    move/from16 v19, v0

    #@4d
    add-int/lit8 v7, v19, -0x1

    #@4f
    .local v7, "m":I
    if-ltz v7, :cond_5

    #@51
    .line 3031
    if-nez v5, :cond_3

    #@53
    .line 3032
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@56
    move-result-wide v20

    #@57
    sub-long v20, v20, v14

    #@59
    cmp-long v19, v20, v8

    #@5b
    if-lez v19, :cond_2

    #@5d
    .line 3033
    const/16 v19, 0x0

    #@5f
    return v19

    #@60
    .line 3034
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    #@63
    .line 3036
    :cond_3
    const/4 v5, 0x0

    #@64
    .line 3037
    add-int/lit8 v19, v7, 0x1

    #@66
    shl-int/lit8 v6, v19, 0x2

    #@68
    .local v6, "j":I
    move v12, v11

    #@69
    .end local v11    # "r":I
    .local v12, "r":I
    :goto_1
    if-ltz v6, :cond_6

    #@6b
    .line 3039
    add-int/lit8 v11, v12, 0x1

    #@6d
    .end local v12    # "r":I
    .restart local v11    # "r":I
    and-int v19, v12, v7

    #@6f
    aget-object v10, v17, v19

    #@71
    .local v10, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    #@73
    iget v4, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@75
    .local v4, "b":I
    iget v0, v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@77
    move/from16 v19, v0

    #@79
    sub-int v19, v4, v19

    #@7b
    if-gez v19, :cond_4

    #@7d
    .line 3040
    const/4 v5, 0x1

    #@7e
    .line 3041
    invoke-virtual {v10, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@81
    move-result-object v13

    #@82
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_1

    #@84
    .line 3042
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@87
    goto :goto_0

    #@88
    .line 3037
    .end local v4    # "b":I
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@8a
    move v12, v11

    #@8b
    .end local v11    # "r":I
    .restart local v12    # "r":I
    goto :goto_1

    #@8c
    .line 3047
    .end local v6    # "j":I
    .end local v7    # "m":I
    .end local v10    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v12    # "r":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "r":I
    :cond_5
    const/16 v19, 0x1

    #@8e
    return v19

    #@8f
    .end local v11    # "r":I
    .restart local v6    # "j":I
    .restart local v7    # "m":I
    .restart local v12    # "r":I
    .restart local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move v11, v12

    #@90
    .end local v12    # "r":I
    .restart local v11    # "r":I
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
    .line 2980
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@7
    move-result v10

    #@8
    if-eqz v10, :cond_0

    #@a
    .line 2981
    new-instance v10, Ljava/lang/InterruptedException;

    #@c
    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    #@f
    throw v10

    #@10
    .line 2982
    :cond_0
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    #@12
    move-object/from16 v0, p0

    #@14
    if-ne v0, v10, :cond_1

    #@16
    .line 2983
    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    #@19
    .line 2984
    return v12

    #@1a
    .line 2986
    :cond_1
    move-object/from16 v0, p3

    #@1c
    move-wide/from16 v1, p1

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@21
    move-result-wide v8

    #@22
    .line 2987
    .local v8, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    #@25
    move-result v10

    #@26
    if-eqz v10, :cond_2

    #@28
    .line 2988
    return v13

    #@29
    .line 2989
    :cond_2
    cmp-long v10, v8, v14

    #@2b
    if-gtz v10, :cond_3

    #@2d
    .line 2990
    return v12

    #@2e
    .line 2991
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v10

    #@32
    add-long v4, v10, v8

    #@34
    .line 2992
    .local v4, "deadline":J
    monitor-enter p0

    #@35
    .line 2994
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
    .line 2995
    return v13

    #@3d
    .line 2996
    :cond_4
    cmp-long v10, v8, v14

    #@3f
    if-gtz v10, :cond_5

    #@41
    monitor-exit p0

    #@42
    .line 2997
    return v12

    #@43
    .line 2998
    :cond_5
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@45
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@48
    move-result-wide v6

    #@49
    .line 2999
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
    .line 3000
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
    .line 2999
    .restart local v6    # "millis":J
    :cond_6
    const-wide/16 v6, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 2992
    .end local v6    # "millis":J
    :catchall_0
    move-exception v10

    #@5d
    monitor-exit p0

    #@5e
    throw v10
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 36
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1371
    const/16 v34, 0x0

    #@2
    .line 1372
    .local v34, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_2

    #@4
    move-object/from16 v0, p1

    #@6
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    move-object/from16 v34, v0

    #@a
    .local v34, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v34, :cond_2

    #@c
    .line 1374
    const/4 v2, -0x1

    #@d
    move-object/from16 v0, v34

    #@f
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@11
    .line 1375
    :cond_0
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@13
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->STEALCOUNT:J

    #@15
    .line 1376
    move-object/from16 v0, p0

    #@17
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    #@19
    .line 1377
    .local v6, "sc":J
    move-object/from16 v0, v34

    #@1b
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@1d
    int-to-long v8, v3

    #@1e
    add-long/2addr v8, v6

    #@1f
    move-object/from16 v3, p0

    #@21
    .line 1375
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 1378
    move-object/from16 v0, p0

    #@29
    iget v12, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@2b
    .local v12, "ps":I
    and-int/lit8 v2, v12, 0x2

    #@2d
    if-nez v2, :cond_6

    #@2f
    .line 1379
    sget-object v8, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@31
    sget-wide v10, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@33
    add-int/lit8 v13, v12, 0x2

    #@35
    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    #@37
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_5

    #@3d
    move v12, v13

    #@3e
    .line 1381
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :goto_0
    const/high16 v2, -0x80000000

    #@40
    and-int/2addr v2, v12

    #@41
    add-int/lit8 v3, v12, 0x2

    #@43
    const v4, 0x7fffffff

    #@46
    and-int/2addr v3, v4

    #@47
    or-int v19, v2, v3

    #@49
    .line 1383
    .local v19, "nps":I
    :try_start_0
    move-object/from16 v0, v34

    #@4b
    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@4d
    move/from16 v30, v0

    #@4f
    .line 1384
    .local v30, "idx":I
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@53
    move-object/from16 v35, v0

    #@55
    .line 1385
    .local v35, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_1

    #@57
    if-ltz v30, :cond_1

    #@59
    move-object/from16 v0, v35

    #@5b
    array-length v2, v0

    #@5c
    move/from16 v0, v30

    #@5e
    if-ge v0, v2, :cond_1

    #@60
    aget-object v2, v35, v30

    #@62
    move-object/from16 v0, v34

    #@64
    if-ne v2, v0, :cond_1

    #@66
    .line 1386
    const/4 v2, 0x0

    #@67
    aput-object v2, v35, v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    .line 1388
    :cond_1
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@6b
    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@6d
    move-object/from16 v15, p0

    #@6f
    move/from16 v18, v12

    #@71
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@74
    move-result v2

    #@75
    if-nez v2, :cond_2

    #@77
    .line 1389
    move-object/from16 v0, p0

    #@79
    move/from16 v1, v19

    #@7b
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@7e
    .line 1394
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v30    # "idx":I
    .end local v34    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    sget-object v20, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@80
    .line 1395
    sget-wide v22, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@82
    move-object/from16 v0, p0

    #@84
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@86
    move-wide/from16 v24, v0

    #@88
    .local v24, "c":J
    const-wide/high16 v2, 0x1000000000000L

    #@8a
    sub-long v2, v24, v2

    #@8c
    const-wide/high16 v4, -0x1000000000000L

    #@8e
    and-long/2addr v2, v4

    #@8f
    .line 1396
    const-wide v4, 0x100000000L

    #@94
    sub-long v4, v24, v4

    #@96
    const-wide v8, 0xffff00000000L

    #@9b
    and-long/2addr v4, v8

    #@9c
    .line 1395
    or-long/2addr v2, v4

    #@9d
    .line 1397
    const-wide v4, 0xffffffffL

    #@a2
    and-long v4, v4, v24

    #@a4
    .line 1395
    or-long v26, v2, v4

    #@a6
    move-object/from16 v21, p0

    #@a8
    .line 1394
    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@ab
    move-result v2

    #@ac
    if-eqz v2, :cond_2

    #@ae
    .line 1399
    const/4 v2, 0x0

    #@af
    const/4 v3, 0x0

    #@b0
    move-object/from16 v0, p0

    #@b2
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    #@b5
    move-result v2

    #@b6
    if-nez v2, :cond_4

    #@b8
    if-eqz v34, :cond_4

    #@ba
    move-object/from16 v0, v34

    #@bc
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@be
    if-eqz v2, :cond_4

    #@c0
    .line 1400
    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    #@c3
    .line 1402
    :cond_3
    move-object/from16 v0, p0

    #@c5
    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@c7
    move-wide/from16 v24, v0

    #@c9
    const/16 v2, 0x20

    #@cb
    ushr-long v2, v24, v2

    #@cd
    long-to-int v0, v2

    #@ce
    move/from16 v32, v0

    #@d0
    .local v32, "u":I
    if-gez v32, :cond_4

    #@d2
    move-wide/from16 v0, v24

    #@d4
    long-to-int v0, v0

    #@d5
    move/from16 v28, v0

    #@d7
    .local v28, "e":I
    if-ltz v28, :cond_4

    #@d9
    .line 1403
    if-lez v28, :cond_9

    #@db
    .line 1404
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@df
    move-object/from16 v35, v0

    #@e1
    .restart local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_4

    #@e3
    .line 1405
    const v2, 0xffff

    #@e6
    and-int v29, v28, v2

    #@e8
    .local v29, "i":I
    move-object/from16 v0, v35

    #@ea
    array-length v2, v0

    #@eb
    move/from16 v0, v29

    #@ed
    if-lt v0, v2, :cond_8

    #@ef
    .line 1426
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v32    # "u":I
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    :goto_1
    if-nez p2, :cond_a

    #@f1
    .line 1427
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    #@f4
    .line 1370
    :goto_2
    return-void

    #@f5
    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v13    # "ps":I
    .restart local v34    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move v12, v13

    #@f6
    .line 1380
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    #@f9
    move-result v12

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1387
    .restart local v19    # "nps":I
    :catchall_0
    move-exception v2

    #@fd
    .line 1388
    sget-object v14, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@ff
    sget-wide v16, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@101
    move-object/from16 v15, p0

    #@103
    move/from16 v18, v12

    #@105
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@108
    move-result v3

    #@109
    if-nez v3, :cond_7

    #@10b
    .line 1389
    move-object/from16 v0, p0

    #@10d
    move/from16 v1, v19

    #@10f
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@112
    .line 1387
    :cond_7
    throw v2

    #@113
    .line 1406
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v34    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "c":J
    .restart local v28    # "e":I
    .restart local v29    # "i":I
    .restart local v32    # "u":I
    .restart local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    aget-object v33, v35, v29

    #@115
    .local v33, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v33, :cond_4

    #@117
    .line 1408
    move-object/from16 v0, v33

    #@119
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@11b
    const v3, 0x7fffffff

    #@11e
    and-int/2addr v2, v3

    #@11f
    int-to-long v2, v2

    #@120
    .line 1409
    const/high16 v4, 0x10000

    #@122
    add-int v4, v4, v32

    #@124
    int-to-long v4, v4

    #@125
    const/16 v8, 0x20

    #@127
    shl-long/2addr v4, v8

    #@128
    .line 1408
    or-long v26, v2, v4

    #@12a
    .line 1410
    .local v26, "nc":J
    move-object/from16 v0, v33

    #@12c
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@12e
    const/high16 v3, -0x80000000

    #@130
    or-int v3, v3, v28

    #@132
    if-ne v2, v3, :cond_4

    #@134
    .line 1412
    sget-object v20, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@136
    sget-wide v22, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@138
    move-object/from16 v21, p0

    #@13a
    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@13d
    move-result v2

    #@13e
    if-eqz v2, :cond_3

    #@140
    .line 1413
    const/high16 v2, 0x10000

    #@142
    add-int v2, v2, v28

    #@144
    const v3, 0x7fffffff

    #@147
    and-int/2addr v2, v3

    #@148
    move-object/from16 v0, v33

    #@14a
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@14c
    .line 1414
    move-object/from16 v0, v33

    #@14e
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@150
    move-object/from16 v31, v0

    #@152
    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_4

    #@154
    .line 1415
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@156
    move-object/from16 v0, v31

    #@158
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@15b
    goto :goto_1

    #@15c
    .line 1420
    .end local v26    # "nc":J
    .end local v29    # "i":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v33    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    move/from16 v0, v32

    #@15e
    int-to-short v2, v0

    #@15f
    if-gez v2, :cond_4

    #@161
    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    #@164
    goto :goto_1

    #@165
    .line 1429
    .end local v28    # "e":I
    .end local v32    # "u":I
    :cond_a
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    #@168
    goto :goto_2
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
    .line 2826
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    #@1
    .line 2828
    .local v0, "count":I
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    #@5
    .line 2829
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v5, v4

    #@7
    if-ge v1, v5, :cond_1

    #@9
    .line 2830
    aget-object v3, v4, v1

    #@b
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@d
    .line 2831
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@10
    move-result-object v2

    #@11
    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    #@13
    .line 2832
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@16
    .line 2833
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 2829
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2838
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
    .line 2507
    if-nez p1, :cond_0

    #@2
    .line 2508
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2510
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v0, p1

    #@d
    .line 2511
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    #@f
    .line 2514
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@12
    .line 2506
    return-void

    #@13
    .line 2513
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2494
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    #@2
    .line 2495
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2496
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@b
    .line 2493
    return-void
.end method

.method final externalHelpComplete(Ljava/util/concurrent/CountedCompleter;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 2320
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    sget-object v13, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v12

    #@6
    check-cast v12, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@8
    .line 2321
    .local v12, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    iget-object v11, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@a
    .line 2322
    .local v11, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v9, 0x0

    #@b
    .line 2323
    .local v9, "s":I
    if-eqz v12, :cond_0

    #@d
    if-eqz v11, :cond_0

    #@f
    array-length v13, v11

    #@10
    add-int/lit8 v7, v13, -0x1

    #@12
    .local v7, "m":I
    if-ltz v7, :cond_0

    #@14
    .line 2324
    iget v4, v12, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@16
    .local v4, "j":I
    and-int v13, v4, v7

    #@18
    and-int/lit8 v13, v13, 0x7e

    #@1a
    aget-object v5, v11, v13

    #@1c
    .local v5, "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_0

    #@1e
    if-eqz p1, :cond_0

    #@20
    .line 2325
    add-int v13, v7, v7

    #@22
    add-int/lit8 v10, v13, 0x1

    #@24
    .line 2326
    .local v10, "scans":I
    const-wide/16 v0, 0x0

    #@26
    .line 2327
    .local v0, "c":J
    or-int/lit8 v4, v4, 0x1

    #@28
    .line 2328
    move v6, v10

    #@29
    .line 2330
    .local v6, "k":I
    :goto_0
    iget v9, p1, Ljava/util/concurrent/CountedCompleter;->status:I

    #@2b
    if-gez v9, :cond_1

    #@2d
    .line 2345
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "k":I
    .end local v7    # "m":I
    .end local v10    # "scans":I
    :cond_0
    return v9

    #@2e
    .line 2332
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "k":I
    .restart local v7    # "m":I
    .restart local v10    # "scans":I
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->externalPopAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    #@31
    move-result v13

    #@32
    if-eqz v13, :cond_3

    #@34
    .line 2333
    move v6, v10

    #@35
    .line 2328
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    #@37
    goto :goto_0

    #@38
    .line 2334
    :cond_3
    iget v9, p1, Ljava/util/concurrent/CountedCompleter;->status:I

    #@3a
    if-ltz v9, :cond_0

    #@3c
    .line 2336
    and-int v13, v4, v7

    #@3e
    aget-object v8, v11, v13

    #@40
    .local v8, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_4

    #@42
    invoke-virtual {v8, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)Z

    #@45
    move-result v13

    #@46
    if-eqz v13, :cond_4

    #@48
    .line 2337
    move v6, v10

    #@49
    goto :goto_1

    #@4a
    .line 2338
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@4c
    if-gez v6, :cond_2

    #@4e
    .line 2339
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@50
    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v13, v0, v2

    #@52
    if-eqz v13, :cond_0

    #@54
    .line 2341
    move v6, v10

    #@55
    move-wide v0, v2

    #@56
    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1463
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v17

    #@6
    check-cast v17, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@8
    .line 1465
    .local v17, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    #@a
    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@c
    .line 1466
    .local v13, "ps":I
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@10
    move-object/from16 v16, v0

    #@12
    .line 1467
    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_2

    #@14
    if-lez v13, :cond_2

    #@16
    if-eqz v16, :cond_2

    #@18
    move-object/from16 v0, v16

    #@1a
    array-length v2, v0

    #@1b
    add-int/lit8 v11, v2, -0x1

    #@1d
    .local v11, "m":I
    if-ltz v11, :cond_2

    #@1f
    .line 1468
    move-object/from16 v0, v17

    #@21
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@23
    .local v14, "r":I
    and-int v2, v11, v14

    #@25
    and-int/lit8 v2, v2, 0x7e

    #@27
    aget-object v3, v16, v2

    #@29
    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_2

    #@2b
    if-eqz v14, :cond_2

    #@2d
    .line 1469
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@2f
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    #@31
    const/4 v6, 0x0

    #@32
    const/4 v7, 0x1

    #@33
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@36
    move-result v2

    #@37
    .line 1467
    if-eqz v2, :cond_2

    #@39
    .line 1470
    iget-object v8, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@3b
    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_1

    #@3d
    .line 1471
    array-length v2, v8

    #@3e
    add-int/lit8 v9, v2, -0x1

    #@40
    .local v9, "am":I
    iget v15, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@42
    .local v15, "s":I
    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@44
    sub-int v12, v15, v2

    #@46
    .local v12, "n":I
    if-le v9, v12, :cond_1

    #@48
    .line 1472
    and-int v2, v9, v15

    #@4a
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@4c
    shl-int/2addr v2, v4

    #@4d
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@4f
    add-int v10, v2, v4

    #@51
    .line 1473
    .local v10, "j":I
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@53
    int-to-long v4, v10

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-virtual {v2, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@59
    .line 1474
    add-int/lit8 v2, v15, 0x1

    #@5b
    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@5d
    .line 1475
    const/4 v2, 0x0

    #@5e
    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@60
    .line 1476
    const/4 v2, 0x1

    #@61
    if-gt v12, v2, :cond_0

    #@63
    .line 1477
    move-object/from16 v0, p0

    #@65
    move-object/from16 v1, v16

    #@67
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    #@6a
    .line 1478
    :cond_0
    return-void

    #@6b
    .line 1480
    .end local v9    # "am":I
    .end local v10    # "j":I
    .end local v12    # "n":I
    .end local v15    # "s":I
    :cond_1
    const/4 v2, 0x0

    #@6c
    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@6e
    .line 1482
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v14    # "r":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/ForkJoinPool;->fullExternalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@71
    .line 1462
    return-void
.end method

.method public getActiveThreadCount()I
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2690
    iget-short v2, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@3
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@5
    const/16 v3, 0x30

    #@7
    shr-long/2addr v4, v3

    #@8
    long-to-int v3, v4

    #@9
    add-int v0, v2, v3

    #@b
    .line 2691
    .local v0, "r":I
    if-gtz v0, :cond_0

    #@d
    move v0, v1

    #@e
    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2659
    iget-short v1, p0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 2606
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@2
    return-object v0
.end method

.method public getParallelism()I
    .locals 1

    #@0
    .prologue
    .line 2626
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@2
    .local v0, "par":I
    if-lez v0, :cond_0

    #@4
    .end local v0    # "par":I
    :goto_0
    return v0

    #@5
    .restart local v0    # "par":I
    :cond_0
    const/4 v0, 0x1

    #@6
    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    #@0
    .prologue
    .line 2649
    iget-short v0, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@2
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    const/16 v1, 0x20

    #@6
    ushr-long/2addr v2, v1

    #@7
    long-to-int v1, v2

    #@8
    int-to-short v1, v1

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    #@0
    .prologue
    .line 2762
    const/4 v0, 0x0

    #@1
    .line 2764
    .local v0, "count":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@5
    .line 2765
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@7
    if-ge v1, v4, :cond_1

    #@9
    .line 2766
    aget-object v2, v3, v1

    #@b
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@d
    .line 2767
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@10
    move-result v4

    #@11
    add-int/2addr v0, v4

    #@12
    .line 2765
    :cond_0
    add-int/lit8 v1, v1, 0x2

    #@14
    goto :goto_0

    #@15
    .line 2770
    .end local v1    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 2743
    const-wide/16 v0, 0x0

    #@2
    .line 2745
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@4
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    #@6
    .line 2746
    const/4 v2, 0x1

    #@7
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@8
    if-ge v2, v5, :cond_1

    #@a
    .line 2747
    aget-object v3, v4, v2

    #@c
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@e
    .line 2748
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@11
    move-result v5

    #@12
    int-to-long v6, v5

    #@13
    add-long/2addr v0, v6

    #@14
    .line 2746
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@16
    goto :goto_0

    #@17
    .line 2751
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    #@0
    .prologue
    .line 2671
    const/4 v1, 0x0

    #@1
    .line 2673
    .local v1, "rc":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@5
    .line 2674
    const/4 v0, 0x1

    #@6
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@7
    if-ge v0, v4, :cond_1

    #@9
    .line 2675
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
    .line 2676
    add-int/lit8 v1, v1, 0x1

    #@15
    .line 2674
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@17
    goto :goto_0

    #@18
    .line 2679
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    #@0
    .prologue
    .line 2721
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    #@2
    .line 2723
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@4
    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    #@6
    .line 2724
    const/4 v2, 0x1

    #@7
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@8
    if-ge v2, v5, :cond_1

    #@a
    .line 2725
    aget-object v3, v4, v2

    #@c
    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    #@e
    .line 2726
    iget v5, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@10
    int-to-long v6, v5

    #@11
    add-long/2addr v0, v6

    #@12
    .line 2724
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@14
    goto :goto_0

    #@15
    .line 2729
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    #@0
    .prologue
    .line 2616
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@2
    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    #@0
    .prologue
    .line 2781
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2
    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_2

    #@4
    .line 2782
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@6
    if-ge v0, v3, :cond_2

    #@8
    .line 2783
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
    .line 2782
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@14
    goto :goto_0

    #@15
    .line 2784
    :cond_1
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 2787
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    const/4 v3, 0x0

    #@18
    return v3
.end method

.method final helpJoinOnce(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 3
    .param p1, "joiner"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
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
    .line 2025
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_4

    #@2
    if-eqz p2, :cond_4

    #@4
    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@6
    .local v1, "s":I
    if-ltz v1, :cond_4

    #@8
    .line 2026
    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@a
    .line 2027
    .local v0, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@c
    .line 2028
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 2029
    iget v1, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@14
    if-gez v1, :cond_0

    #@16
    .line 2030
    :cond_1
    if-ltz v1, :cond_3

    #@18
    .line 2031
    instance-of v2, p2, Ljava/util/concurrent/CountedCompleter;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    move-object v2, p2

    #@1d
    .line 2032
    check-cast v2, Ljava/util/concurrent/CountedCompleter;

    #@1f
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;)I

    #@22
    .line 2033
    :cond_2
    iget v2, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    #@24
    if-ltz v2, :cond_3

    #@26
    .line 2034
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->tryHelpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)I

    #@29
    move-result v2

    #@2a
    if-gtz v2, :cond_2

    #@2c
    .line 2036
    :cond_3
    iput-object v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    #@2e
    .line 2023
    .end local v0    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "s":I
    :cond_4
    return-void
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 2068
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@4
    move-object/from16 v20, v0

    #@6
    .line 2069
    .local v20, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v18, 0x1

    #@8
    .line 2071
    .local v18, "active":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    #@b
    move-result-object v22

    #@c
    .local v22, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v22, :cond_1

    #@e
    .line 2072
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@11
    goto :goto_0

    #@12
    .line 2073
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@15
    move-result-object v21

    #@16
    .local v21, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_4

    #@18
    .line 2074
    if-nez v18, :cond_3

    #@1a
    .line 2075
    const/16 v18, 0x1

    #@1c
    .line 2076
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@1e
    .line 2077
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@20
    move-object/from16 v0, p0

    #@22
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@24
    .line 2078
    .local v6, "c":J
    const-wide v10, 0xffffffffffffL

    #@29
    and-long/2addr v10, v6

    #@2a
    .line 2079
    const-wide/high16 v12, -0x1000000000000L

    #@2c
    and-long/2addr v12, v6

    #@2d
    const-wide/high16 v14, 0x1000000000000L

    #@2f
    add-long/2addr v12, v14

    #@30
    .line 2078
    or-long v8, v10, v12

    #@32
    move-object/from16 v3, p0

    #@34
    .line 2076
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 2081
    .end local v6    # "c":J
    :cond_3
    move-object/from16 v0, v21

    #@3c
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@3e
    move/from16 v19, v0

    #@40
    .local v19, "b":I
    move-object/from16 v0, v21

    #@42
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@44
    sub-int v2, v19, v2

    #@46
    if-gez v2, :cond_0

    #@48
    move-object/from16 v0, v21

    #@4a
    move/from16 v1, v19

    #@4c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@4f
    move-result-object v22

    #@50
    if-eqz v22, :cond_0

    #@52
    .line 2082
    move-object/from16 v0, v22

    #@54
    move-object/from16 v1, p1

    #@56
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@58
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    #@5b
    .line 2083
    move-object/from16 v0, v20

    #@5d
    move-object/from16 v1, p1

    #@5f
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    #@61
    goto :goto_0

    #@62
    .line 2086
    .end local v19    # "b":I
    :cond_4
    if-eqz v18, :cond_6

    #@64
    .line 2087
    move-object/from16 v0, p0

    #@66
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@68
    .restart local v6    # "c":J
    const-wide v2, 0xffffffffffffL

    #@6d
    and-long/2addr v2, v6

    #@6e
    const-wide/high16 v4, -0x1000000000000L

    #@70
    and-long/2addr v4, v6

    #@71
    const-wide/high16 v10, 0x1000000000000L

    #@73
    sub-long/2addr v4, v10

    #@74
    or-long v8, v2, v4

    #@76
    .line 2088
    .local v8, "nc":J
    const/16 v2, 0x30

    #@78
    shr-long v2, v8, v2

    #@7a
    long-to-int v2, v2

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@7f
    add-int/2addr v2, v3

    #@80
    if-nez v2, :cond_5

    #@82
    .line 2067
    .end local v8    # "nc":J
    :goto_1
    return-void

    #@83
    .line 2090
    .restart local v8    # "nc":J
    :cond_5
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@85
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@87
    move-object/from16 v3, p0

    #@89
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@8c
    move-result v2

    #@8d
    if-eqz v2, :cond_0

    #@8f
    .line 2091
    const/16 v18, 0x0

    #@91
    goto/16 :goto_0

    #@93
    .line 2093
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_6
    move-object/from16 v0, p0

    #@95
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@97
    .restart local v6    # "c":J
    const/16 v2, 0x30

    #@99
    shr-long v2, v6, v2

    #@9b
    long-to-int v2, v2

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-short v3, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@a0
    add-int/2addr v2, v3

    #@a1
    if-gtz v2, :cond_0

    #@a3
    .line 2094
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@a5
    .line 2095
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@a7
    const-wide v2, 0xffffffffffffL

    #@ac
    and-long/2addr v2, v6

    #@ad
    .line 2096
    const-wide/high16 v4, -0x1000000000000L

    #@af
    and-long/2addr v4, v6

    #@b0
    const-wide/high16 v14, 0x1000000000000L

    #@b2
    add-long/2addr v4, v14

    #@b3
    .line 2095
    or-long v16, v2, v4

    #@b5
    move-object/from16 v11, p0

    #@b7
    move-wide v14, v6

    #@b8
    .line 2094
    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@bb
    move-result v2

    #@bc
    .line 2093
    if-eqz v2, :cond_0

    #@be
    goto :goto_1
.end method

.method final incrementActiveCount()V
    .locals 12

    #@0
    .prologue
    .line 1583
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@2
    .line 1584
    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@4
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@6
    .local v4, "c":J
    const-wide v6, 0xffffffffffffL

    #@b
    and-long/2addr v6, v4

    #@c
    .line 1585
    const-wide/high16 v8, -0x1000000000000L

    #@e
    and-long/2addr v8, v4

    #@f
    const-wide/high16 v10, 0x1000000000000L

    #@11
    add-long/2addr v8, v10

    #@12
    .line 1584
    or-long/2addr v6, v8

    #@13
    move-object v1, p0

    #@14
    .line 1583
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1581
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
    .line 2479
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 2480
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2481
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@b
    .line 2482
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
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
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v9, 0x0

    #@1
    .line 2580
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v7

    #@7
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 2582
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    #@b
    .line 2584
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v6

    #@f
    .local v6, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_0

    #@15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Ljava/util/concurrent/Callable;

    #@1b
    .line 2585
    .local v5, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@1d
    invoke-direct {v1, v5}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@20
    .line 2586
    .local v1, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 2587
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 2593
    .end local v1    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    .end local v5    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@28
    move-object v8, v7

    #@29
    .line 2594
    if-nez v0, :cond_3

    #@2b
    .line 2595
    const/4 v3, 0x0

    #@2c
    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v4

    #@30
    .local v4, "size":I
    :goto_1
    if-ge v3, v4, :cond_3

    #@32
    .line 2596
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Ljava/util/concurrent/Future;

    #@38
    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@3b
    .line 2595
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2589
    .end local v3    # "i":I
    .end local v4    # "size":I
    .restart local v6    # "t$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    #@3f
    .restart local v3    # "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v4

    #@43
    .restart local v4    # "size":I
    :goto_2
    if-ge v3, v4, :cond_1

    #@45
    .line 2590
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v7

    #@49
    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    #@4b
    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 2589
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_2

    #@51
    .line 2591
    :cond_1
    const/4 v0, 0x1

    #@52
    .line 2594
    if-nez v0, :cond_2

    #@54
    .line 2595
    const/4 v3, 0x0

    #@55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v4

    #@59
    :goto_3
    if-ge v3, v4, :cond_2

    #@5b
    .line 2596
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v7

    #@5f
    check-cast v7, Ljava/util/concurrent/Future;

    #@61
    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@64
    .line 2595
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_3

    #@67
    .line 2592
    :cond_2
    return-object v2

    #@68
    .line 2593
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    :cond_3
    throw v8
.end method

.method public isQuiescent()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2706
    iget-short v1, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@3
    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@5
    const/16 v4, 0x30

    #@7
    shr-long/2addr v2, v4

    #@8
    long-to-int v2, v2

    #@9
    add-int/2addr v1, v2

    #@a
    if-gtz v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public isShutdown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2961
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isTerminated()Z
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2931
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@3
    .line 2932
    .local v0, "c":J
    const-wide v4, 0x80000000L

    #@8
    and-long/2addr v4, v0

    #@9
    const-wide/16 v6, 0x0

    #@b
    cmp-long v3, v4, v6

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 2933
    const/16 v3, 0x20

    #@11
    ushr-long v4, v0, v3

    #@13
    long-to-int v3, v4

    #@14
    int-to-short v3, v3

    #@15
    iget-short v4, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@17
    add-int/2addr v3, v4

    #@18
    if-gtz v3, :cond_0

    #@1a
    const/4 v2, 0x1

    #@1b
    .line 2932
    :cond_0
    return v2
.end method

.method public isTerminating()Z
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2950
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@3
    .line 2951
    .local v0, "c":J
    const-wide v4, 0x80000000L

    #@8
    and-long/2addr v4, v0

    #@9
    const-wide/16 v6, 0x0

    #@b
    cmp-long v3, v4, v6

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 2952
    const/16 v3, 0x20

    #@11
    ushr-long v4, v0, v3

    #@13
    long-to-int v3, v4

    #@14
    int-to-short v3, v3

    #@15
    iget-short v4, p0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@17
    add-int/2addr v3, v4

    #@18
    if-lez v3, :cond_0

    #@1a
    const/4 v2, 0x1

    #@1b
    .line 2951
    :cond_0
    return v2
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
    .line 3180
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
    .line 3184
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 2109
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    #@4
    move-result-object v2

    #@5
    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    #@7
    .line 2110
    return-object v2

    #@8
    .line 2111
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b
    move-result-object v1

    #@c
    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_2

    #@e
    .line 2112
    return-object v4

    #@f
    .line 2113
    :cond_2
    iget v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@11
    .local v0, "b":I
    iget v3, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@13
    sub-int v3, v0, v3

    #@15
    if-gez v3, :cond_0

    #@17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    #@1a
    move-result-object v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2114
    return-object v2
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2799
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@3
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@5
    .line 2800
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@7
    if-ge v0, v4, :cond_1

    #@9
    .line 2801
    aget-object v2, v3, v0

    #@b
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    #@10
    move-result-object v1

    #@11
    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    #@13
    .line 2802
    return-object v1

    #@14
    .line 2800
    .end local v1    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@16
    goto :goto_0

    #@17
    .line 2805
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-object v5
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 30
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    #@0
    .prologue
    .line 1323
    const/4 v4, 0x1

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    #@6
    .line 1324
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    #@a
    move-object/from16 v22, v0

    #@c
    .local v22, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v22, :cond_0

    #@e
    .line 1325
    move-object/from16 v0, p1

    #@10
    move-object/from16 v1, v22

    #@12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    #@15
    .line 1326
    :cond_0
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@17
    sget-wide v6, Ljava/util/concurrent/ForkJoinPool;->INDEXSEED:J

    #@19
    move-object/from16 v0, p0

    #@1b
    iget v8, v0, Ljava/util/concurrent/ForkJoinPool;->indexSeed:I

    #@1d
    .line 1327
    .local v8, "s":I
    const v5, 0x61c88647

    #@20
    add-int v9, v8, v5

    #@22
    .end local v8    # "s":I
    .local v9, "s":I
    move-object/from16 v5, p0

    #@24
    .line 1326
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 1328
    if-eqz v9, :cond_0

    #@2c
    .line 1329
    new-instance v28, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-short v4, v0, Ljava/util/concurrent/ForkJoinPool;->mode:S

    #@32
    move-object/from16 v0, v28

    #@34
    move-object/from16 v1, p0

    #@36
    move-object/from16 v2, p1

    #@38
    invoke-direct {v0, v1, v2, v4, v9}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;II)V

    #@3b
    .line 1330
    .local v28, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    #@3d
    iget v14, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@3f
    .local v14, "ps":I
    and-int/lit8 v4, v14, 0x2

    #@41
    if-nez v4, :cond_3

    #@43
    .line 1331
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@45
    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@47
    add-int/lit8 v15, v14, 0x2

    #@49
    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    #@4b
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    move v14, v15

    #@52
    .line 1333
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :goto_0
    const/high16 v4, -0x80000000

    #@54
    and-int/2addr v4, v14

    #@55
    add-int/lit8 v5, v14, 0x2

    #@57
    const v6, 0x7fffffff

    #@5a
    and-int/2addr v5, v6

    #@5b
    or-int v21, v4, v5

    #@5d
    .line 1335
    .local v21, "nps":I
    :try_start_0
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@61
    move-object/from16 v29, v0

    #@63
    .local v29, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v29, :cond_6

    #@65
    .line 1336
    move-object/from16 v0, v29

    #@67
    array-length v0, v0

    #@68
    move/from16 v24, v0

    #@6a
    .local v24, "n":I
    add-int/lit8 v23, v24, -0x1

    #@6c
    .line 1337
    .local v23, "m":I
    shl-int/lit8 v4, v9, 0x1

    #@6e
    or-int/lit8 v26, v4, 0x1

    #@70
    .line 1338
    .local v26, "r":I
    and-int v26, v26, v23

    #@72
    aget-object v4, v29, v26

    #@74
    if-eqz v4, :cond_5

    #@76
    .line 1339
    const/16 v25, 0x0

    #@78
    .line 1340
    .local v25, "probes":I
    const/4 v4, 0x4

    #@79
    move/from16 v0, v24

    #@7b
    if-gt v0, v4, :cond_4

    #@7d
    const/16 v27, 0x2

    #@7f
    .line 1341
    .local v27, "step":I
    :cond_1
    :goto_1
    add-int v4, v26, v27

    #@81
    and-int v26, v4, v23

    #@83
    aget-object v4, v29, v26

    #@85
    if-eqz v4, :cond_5

    #@87
    .line 1342
    add-int/lit8 v25, v25, 0x1

    #@89
    move/from16 v0, v25

    #@8b
    move/from16 v1, v24

    #@8d
    if-lt v0, v1, :cond_1

    #@8f
    .line 1343
    shl-int/lit8 v24, v24, 0x1

    #@91
    move-object/from16 v0, v29

    #@93
    move/from16 v1, v24

    #@95
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@98
    move-result-object v29

    #@99
    .end local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    check-cast v29, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@9b
    .restart local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v29

    #@9d
    move-object/from16 v1, p0

    #@9f
    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a1
    .line 1344
    add-int/lit8 v23, v24, -0x1

    #@a3
    .line 1345
    const/16 v25, 0x0

    #@a5
    goto :goto_1

    #@a6
    .end local v14    # "ps":I
    .end local v21    # "nps":I
    .end local v23    # "m":I
    .end local v24    # "n":I
    .end local v25    # "probes":I
    .end local v26    # "r":I
    .end local v27    # "step":I
    .end local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "ps":I
    :cond_2
    move v14, v15

    #@a7
    .line 1332
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->acquirePlock()I

    #@aa
    move-result v14

    #@ab
    goto :goto_0

    #@ac
    .line 1340
    .restart local v21    # "nps":I
    .restart local v23    # "m":I
    .restart local v24    # "n":I
    .restart local v25    # "probes":I
    .restart local v26    # "r":I
    .restart local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    ushr-int/lit8 v4, v24, 0x1

    #@ae
    const v5, 0xfffe

    #@b1
    and-int/2addr v4, v5

    #@b2
    add-int/lit8 v27, v4, 0x2

    #@b4
    .restart local v27    # "step":I
    goto :goto_1

    #@b5
    .line 1349
    .end local v25    # "probes":I
    .end local v27    # "step":I
    :cond_5
    move/from16 v0, v26

    #@b7
    int-to-short v4, v0

    #@b8
    :try_start_1
    move-object/from16 v0, v28

    #@ba
    iput-short v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@bc
    .line 1350
    move/from16 v0, v26

    #@be
    move-object/from16 v1, v28

    #@c0
    iput v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@c2
    .line 1351
    aput-object v28, v29, v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c4
    .line 1354
    .end local v23    # "m":I
    .end local v24    # "n":I
    .end local v26    # "r":I
    :cond_6
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@c6
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@c8
    move-object/from16 v17, p0

    #@ca
    move/from16 v20, v14

    #@cc
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@cf
    move-result v4

    #@d0
    if-nez v4, :cond_7

    #@d2
    .line 1355
    move-object/from16 v0, p0

    #@d4
    move/from16 v1, v21

    #@d6
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@d9
    .line 1357
    :cond_7
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    #@dd
    move-object/from16 v0, v28

    #@df
    iget-short v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@e1
    ushr-int/lit8 v5, v5, 0x1

    #@e3
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v4

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    #@f0
    .line 1358
    return-object v28

    #@f1
    .line 1353
    .end local v29    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    #@f2
    .line 1354
    sget-object v16, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@f4
    sget-wide v18, Ljava/util/concurrent/ForkJoinPool;->PLOCK:J

    #@f6
    move-object/from16 v17, p0

    #@f8
    move/from16 v20, v14

    #@fa
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@fd
    move-result v5

    #@fe
    if-nez v5, :cond_8

    #@100
    .line 1355
    move-object/from16 v0, p0

    #@102
    move/from16 v1, v21

    #@104
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->releasePlock(I)V

    #@107
    .line 1353
    :cond_8
    throw v4
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 2
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 1628
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    #@3
    .line 1629
    iget v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    #@5
    .local v0, "r":I
    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1630
    shl-int/lit8 v1, v0, 0xd

    #@d
    xor-int/2addr v0, v1

    #@e
    ushr-int/lit8 v1, v0, 0x11

    #@10
    xor-int/2addr v0, v1

    #@11
    shl-int/lit8 v1, v0, 0x5

    #@13
    xor-int/2addr v0, v1

    #@14
    goto :goto_0

    #@15
    .line 1627
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 2901
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@3
    .line 2902
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    #@8
    .line 2900
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
    .line 2920
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    #@4
    .line 2921
    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    #@7
    .line 2922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method final signalWork([Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 17
    .param p1, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "q"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@0
    .prologue
    .line 1597
    :cond_0
    move-object/from16 v0, p0

    #@2
    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@4
    .local v6, "c":J
    const/16 v2, 0x20

    #@6
    ushr-long v2, v6, v2

    #@8
    long-to-int v14, v2

    #@9
    .local v14, "u":I
    if-ltz v14, :cond_2

    #@b
    .line 1594
    :cond_1
    :goto_0
    return-void

    #@c
    .line 1599
    :cond_2
    long-to-int v10, v6

    #@d
    .local v10, "e":I
    if-gtz v10, :cond_3

    #@f
    .line 1600
    int-to-short v2, v14

    #@10
    if-gez v2, :cond_1

    #@12
    .line 1601
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker()V

    #@15
    goto :goto_0

    #@16
    .line 1604
    :cond_3
    if-eqz p1, :cond_1

    #@18
    move-object/from16 v0, p1

    #@1a
    array-length v2, v0

    #@1b
    const v3, 0xffff

    #@1e
    and-int v11, v10, v3

    #@20
    .local v11, "i":I
    if-le v2, v11, :cond_1

    #@22
    .line 1605
    aget-object v15, p1, v11

    #@24
    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    #@26
    .line 1607
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@28
    const v3, 0x7fffffff

    #@2b
    and-int/2addr v2, v3

    #@2c
    int-to-long v2, v2

    #@2d
    .line 1608
    const/high16 v4, 0x10000

    #@2f
    add-int/2addr v4, v14

    #@30
    int-to-long v4, v4

    #@31
    const/16 v16, 0x20

    #@33
    shl-long v4, v4, v16

    #@35
    .line 1607
    or-long v8, v2, v4

    #@37
    .line 1609
    .local v8, "nc":J
    const/high16 v2, 0x10000

    #@39
    add-int/2addr v2, v10

    #@3a
    const v3, 0x7fffffff

    #@3d
    and-int v12, v2, v3

    #@3f
    .line 1610
    .local v12, "ne":I
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@41
    const/high16 v3, -0x80000000

    #@43
    or-int/2addr v3, v10

    #@44
    if-ne v2, v3, :cond_4

    #@46
    .line 1611
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@48
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@4a
    move-object/from16 v3, p0

    #@4c
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@4f
    move-result v2

    #@50
    .line 1610
    if-eqz v2, :cond_4

    #@52
    .line 1612
    iput v12, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@54
    .line 1613
    iget-object v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@56
    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_1

    #@58
    .line 1614
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@5a
    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@5d
    goto :goto_0

    #@5e
    .line 1617
    .end local v13    # "p":Ljava/lang/Thread;
    :cond_4
    if-eqz p2, :cond_0

    #@60
    move-object/from16 v0, p2

    #@62
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@64
    move-object/from16 v0, p2

    #@66
    iget v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@68
    if-lt v2, v3, :cond_0

    #@6a
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
    .line 2561
    if-nez p1, :cond_0

    #@2
    .line 2562
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2564
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v0, p1

    #@d
    .line 2565
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    #@f
    .line 2568
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@12
    .line 2569
    return-object v0

    #@13
    .line 2567
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    #@15
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    #@18
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
    .line 2550
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    .line 2551
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@8
    .line 2552
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
    .line 2539
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    .line 2540
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@8
    .line 2541
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
    .line 2527
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 2528
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2529
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    #@b
    .line 2530
    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2560
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
    .line 2549
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
    .line 2538
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    #@0
    .prologue
    .line 2850
    const-wide/16 v10, 0x0

    #@2
    .local v10, "qt":J
    const-wide/16 v8, 0x0

    #@4
    .local v8, "qs":J
    const/4 v12, 0x0

    #@5
    .line 2851
    .local v12, "rc":I
    move-object/from16 v0, p0

    #@7
    iget-wide v14, v0, Ljava/util/concurrent/ForkJoinPool;->stealCount:J

    #@9
    .line 2852
    .local v14, "st":J
    move-object/from16 v0, p0

    #@b
    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@d
    .line 2854
    .local v4, "c":J
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@11
    move-object/from16 v18, v0

    #@13
    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    #@15
    .line 2855
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_0
    move-object/from16 v0, v18

    #@18
    array-length v0, v0

    #@19
    move/from16 v19, v0

    #@1b
    move/from16 v0, v19

    #@1d
    if-ge v3, v0, :cond_2

    #@1f
    .line 2856
    aget-object v17, v18, v3

    #@21
    .local v17, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    #@23
    .line 2857
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    #@26
    move-result v13

    #@27
    .line 2858
    .local v13, "size":I
    and-int/lit8 v19, v3, 0x1

    #@29
    if-nez v19, :cond_1

    #@2b
    .line 2859
    int-to-long v0, v13

    #@2c
    move-wide/from16 v20, v0

    #@2e
    add-long v8, v8, v20

    #@30
    .line 2855
    .end local v13    # "size":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 2861
    .restart local v13    # "size":I
    :cond_1
    int-to-long v0, v13

    #@34
    move-wide/from16 v20, v0

    #@36
    add-long v10, v10, v20

    #@38
    .line 2862
    move-object/from16 v0, v17

    #@3a
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    #@3c
    move/from16 v19, v0

    #@3e
    move/from16 v0, v19

    #@40
    int-to-long v0, v0

    #@41
    move-wide/from16 v20, v0

    #@43
    add-long v14, v14, v20

    #@45
    .line 2863
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    #@48
    move-result v19

    #@49
    if-eqz v19, :cond_0

    #@4b
    .line 2864
    add-int/lit8 v12, v12, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 2869
    .end local v3    # "i":I
    .end local v13    # "size":I
    .end local v17    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p0

    #@50
    iget-short v7, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@52
    .line 2870
    .local v7, "pc":I
    const/16 v19, 0x20

    #@54
    ushr-long v20, v4, v19

    #@56
    move-wide/from16 v0, v20

    #@58
    long-to-int v0, v0

    #@59
    move/from16 v19, v0

    #@5b
    move/from16 v0, v19

    #@5d
    int-to-short v0, v0

    #@5e
    move/from16 v19, v0

    #@60
    add-int v16, v7, v19

    #@62
    .line 2871
    .local v16, "tc":I
    const/16 v19, 0x30

    #@64
    shr-long v20, v4, v19

    #@66
    move-wide/from16 v0, v20

    #@68
    long-to-int v0, v0

    #@69
    move/from16 v19, v0

    #@6b
    add-int v2, v7, v19

    #@6d
    .line 2872
    .local v2, "ac":I
    if-gez v2, :cond_3

    #@6f
    .line 2873
    const/4 v2, 0x0

    #@70
    .line 2875
    :cond_3
    const-wide v20, 0x80000000L

    #@75
    and-long v20, v20, v4

    #@77
    const-wide/16 v22, 0x0

    #@79
    cmp-long v19, v20, v22

    #@7b
    if-eqz v19, :cond_5

    #@7d
    .line 2876
    if-nez v16, :cond_4

    #@7f
    const-string/jumbo v6, "Terminated"

    #@82
    .line 2879
    .local v6, "level":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    #@84
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    invoke-super/range {p0 .. p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    #@8a
    move-result-object v20

    #@8b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v19

    #@8f
    .line 2880
    const-string/jumbo v20, "["

    #@92
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v19

    #@96
    move-object/from16 v0, v19

    #@98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v19

    #@9c
    .line 2881
    const-string/jumbo v20, ", parallelism = "

    #@9f
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v19

    #@a3
    move-object/from16 v0, v19

    #@a5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v19

    #@a9
    .line 2882
    const-string/jumbo v20, ", size = "

    #@ac
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v19

    #@b0
    move-object/from16 v0, v19

    #@b2
    move/from16 v1, v16

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v19

    #@b8
    .line 2883
    const-string/jumbo v20, ", active = "

    #@bb
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v19

    #@bf
    move-object/from16 v0, v19

    #@c1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v19

    #@c5
    .line 2884
    const-string/jumbo v20, ", running = "

    #@c8
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v19

    #@cc
    move-object/from16 v0, v19

    #@ce
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v19

    #@d2
    .line 2885
    const-string/jumbo v20, ", steals = "

    #@d5
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v19

    #@d9
    move-object/from16 v0, v19

    #@db
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@de
    move-result-object v19

    #@df
    .line 2886
    const-string/jumbo v20, ", tasks = "

    #@e2
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v19

    #@e6
    move-object/from16 v0, v19

    #@e8
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v19

    #@ec
    .line 2887
    const-string/jumbo v20, ", submissions = "

    #@ef
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v19

    #@f3
    move-object/from16 v0, v19

    #@f5
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v19

    #@f9
    .line 2888
    const-string/jumbo v20, "]"

    #@fc
    .line 2879
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v19

    #@100
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v19

    #@104
    return-object v19

    #@105
    .line 2876
    .end local v6    # "level":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "Terminating"

    #@108
    .restart local v6    # "level":Ljava/lang/String;
    goto/16 :goto_2

    #@10a
    .line 2878
    .end local v6    # "level":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->plock:I

    #@10e
    move/from16 v19, v0

    #@110
    if-gez v19, :cond_6

    #@112
    const-string/jumbo v6, "Shutting down"

    #@115
    .restart local v6    # "level":Ljava/lang/String;
    goto/16 :goto_2

    #@117
    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "Running"

    #@11a
    .restart local v6    # "level":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method final tryCompensate(J)Z
    .locals 23
    .param p1, "c"    # J

    #@0
    .prologue
    .line 1922
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@4
    move-object/from16 v20, v0

    #@6
    .line 1923
    .local v20, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    #@8
    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool;->parallelism:S

    #@a
    move/from16 v16, v0

    #@c
    .local v16, "pc":I
    move-wide/from16 v0, p1

    #@e
    long-to-int v10, v0

    #@f
    .line 1924
    .local v10, "e":I
    if-eqz v20, :cond_4

    #@11
    move-object/from16 v0, v20

    #@13
    array-length v2, v0

    #@14
    add-int/lit8 v13, v2, -0x1

    #@16
    .local v13, "m":I
    if-ltz v13, :cond_4

    #@18
    if-ltz v10, :cond_4

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    #@1e
    cmp-long v2, v2, p1

    #@20
    if-nez v2, :cond_4

    #@22
    .line 1925
    and-int v2, v10, v13

    #@24
    aget-object v19, v20, v2

    #@26
    .line 1926
    .local v19, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_1

    #@28
    if-eqz v19, :cond_1

    #@2a
    .line 1928
    move-object/from16 v0, v19

    #@2c
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextWait:I

    #@2e
    const v3, 0x7fffffff

    #@31
    and-int/2addr v2, v3

    #@32
    int-to-long v2, v2

    #@33
    .line 1929
    const-wide v4, -0x100000000L

    #@38
    and-long v4, v4, p1

    #@3a
    .line 1928
    or-long v8, v2, v4

    #@3c
    .line 1930
    .local v8, "nc":J
    const/high16 v2, 0x10000

    #@3e
    add-int/2addr v2, v10

    #@3f
    const v3, 0x7fffffff

    #@42
    and-int v14, v2, v3

    #@44
    .line 1931
    .local v14, "ne":I
    move-object/from16 v0, v19

    #@46
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@48
    const/high16 v3, -0x80000000

    #@4a
    or-int/2addr v3, v10

    #@4b
    if-ne v2, v3, :cond_4

    #@4d
    .line 1932
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@4f
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@51
    move-object/from16 v3, p0

    #@53
    move-wide/from16 v6, p1

    #@55
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@58
    move-result v2

    #@59
    .line 1931
    if-eqz v2, :cond_4

    #@5b
    .line 1933
    move-object/from16 v0, v19

    #@5d
    iput v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->eventCount:I

    #@5f
    .line 1934
    move-object/from16 v0, v19

    #@61
    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    #@63
    .local v15, "p":Ljava/lang/Thread;
    if-eqz v15, :cond_0

    #@65
    .line 1935
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@67
    invoke-virtual {v2, v15}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    #@6a
    .line 1936
    :cond_0
    const/4 v2, 0x1

    #@6b
    return v2

    #@6c
    .line 1939
    .end local v8    # "nc":J
    .end local v14    # "ne":I
    .end local v15    # "p":Ljava/lang/Thread;
    :cond_1
    const/16 v2, 0x20

    #@6e
    ushr-long v2, p1, v2

    #@70
    long-to-int v2, v2

    #@71
    int-to-short v0, v2

    #@72
    move/from16 v18, v0

    #@74
    .local v18, "tc":I
    if-ltz v18, :cond_2

    #@76
    .line 1940
    const/16 v2, 0x30

    #@78
    shr-long v2, p1, v2

    #@7a
    long-to-int v2, v2

    #@7b
    add-int v2, v2, v16

    #@7d
    const/4 v3, 0x1

    #@7e
    if-le v2, v3, :cond_2

    #@80
    .line 1941
    const-wide/high16 v2, 0x1000000000000L

    #@82
    sub-long v2, p1, v2

    #@84
    const-wide/high16 v4, -0x1000000000000L

    #@86
    and-long/2addr v2, v4

    #@87
    const-wide v4, 0xffffffffffffL

    #@8c
    and-long v4, v4, p1

    #@8e
    or-long v8, v2, v4

    #@90
    .line 1942
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@92
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@94
    move-object/from16 v3, p0

    #@96
    move-wide/from16 v6, p1

    #@98
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_4

    #@9e
    .line 1943
    const/4 v2, 0x1

    #@9f
    return v2

    #@a0
    .line 1945
    .end local v8    # "nc":J
    :cond_2
    add-int v2, v18, v16

    #@a2
    const/16 v3, 0x7fff

    #@a4
    if-ge v2, v3, :cond_4

    #@a6
    .line 1946
    const-wide v2, 0x100000000L

    #@ab
    add-long v2, v2, p1

    #@ad
    const-wide v4, 0xffff00000000L

    #@b2
    and-long/2addr v2, v4

    #@b3
    const-wide v4, -0xffff00000001L

    #@b8
    and-long v4, v4, p1

    #@ba
    or-long v8, v2, v4

    #@bc
    .line 1947
    .restart local v8    # "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@be
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    #@c0
    move-object/from16 v3, p0

    #@c2
    move-wide/from16 v6, p1

    #@c4
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_4

    #@ca
    .line 1949
    const/4 v11, 0x0

    #@cb
    .line 1950
    .local v11, "ex":Ljava/lang/Throwable;
    const/16 v21, 0x0

    #@cd
    .line 1952
    .local v21, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :try_start_0
    move-object/from16 v0, p0

    #@cf
    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@d1
    .local v12, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v12, :cond_3

    #@d3
    .line 1953
    move-object/from16 v0, p0

    #@d5
    invoke-interface {v12, v0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    #@d8
    move-result-object v21

    #@d9
    .local v21, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v21, :cond_3

    #@db
    .line 1954
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@de
    .line 1955
    const/4 v2, 0x1

    #@df
    return v2

    #@e0
    .line 1957
    .end local v12    # "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v21    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v17

    #@e1
    .line 1958
    .local v17, "rex":Ljava/lang/Throwable;
    move-object/from16 v11, v17

    #@e3
    .line 1960
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v17    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v21

    #@e7
    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@ea
    .line 1964
    .end local v8    # "nc":J
    .end local v13    # "m":I
    .end local v18    # "tc":I
    .end local v19    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    const/4 v2, 0x0

    #@eb
    return v2
.end method

.method final tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2297
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v17

    #@6
    check-cast v17, Ljava/util/concurrent/ForkJoinPool$Submitter;

    #@8
    .line 2298
    .local v17, "z":Ljava/util/concurrent/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@c
    move-object/from16 v16, v0

    #@e
    .line 2299
    .local v16, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v14, 0x0

    #@f
    .line 2300
    .local v14, "popped":Z
    if-eqz v17, :cond_1

    #@11
    if-eqz v16, :cond_1

    #@13
    move-object/from16 v0, v16

    #@15
    array-length v2, v0

    #@16
    add-int/lit8 v11, v2, -0x1

    #@18
    .local v11, "m":I
    if-ltz v11, :cond_1

    #@1a
    .line 2301
    move-object/from16 v0, v17

    #@1c
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$Submitter;->seed:I

    #@1e
    and-int/2addr v2, v11

    #@1f
    and-int/lit8 v2, v2, 0x7e

    #@21
    aget-object v3, v16, v2

    #@23
    .local v3, "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    #@25
    .line 2302
    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    #@27
    iget v15, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@29
    .local v15, "s":I
    if-eq v2, v15, :cond_1

    #@2b
    .line 2303
    iget-object v10, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@2d
    .local v10, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v10, :cond_1

    #@2f
    .line 2304
    array-length v2, v10

    #@30
    add-int/lit8 v2, v2, -0x1

    #@32
    add-int/lit8 v4, v15, -0x1

    #@34
    and-int/2addr v2, v4

    #@35
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    #@37
    shl-int/2addr v2, v4

    #@38
    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    #@3a
    add-int/2addr v2, v4

    #@3b
    int-to-long v12, v2

    #@3c
    .line 2305
    .local v12, "j":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@3e
    invoke-virtual {v2, v10, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    move-object/from16 v0, p1

    #@44
    if-ne v2, v0, :cond_1

    #@46
    .line 2306
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@48
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->QLOCK:J

    #@4a
    const/4 v6, 0x0

    #@4b
    const/4 v7, 0x1

    #@4c
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@4f
    move-result v2

    #@50
    .line 2305
    if-eqz v2, :cond_1

    #@52
    .line 2307
    iget v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@54
    if-ne v2, v15, :cond_0

    #@56
    iget-object v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    #@58
    if-ne v2, v10, :cond_0

    #@5a
    .line 2308
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    #@5c
    const/4 v9, 0x0

    #@5d
    move-object v5, v10

    #@5e
    move-wide v6, v12

    #@5f
    move-object/from16 v8, p1

    #@61
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    .line 2307
    if-eqz v2, :cond_0

    #@67
    .line 2309
    add-int/lit8 v2, v15, -0x1

    #@69
    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    #@6b
    .line 2310
    const/4 v14, 0x1

    #@6c
    .line 2312
    :cond_0
    const/4 v2, 0x0

    #@6d
    iput v2, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    #@6f
    .line 2315
    .end local v3    # "joiner":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v12    # "j":J
    .end local v15    # "s":I
    :cond_1
    return v14
.end method
