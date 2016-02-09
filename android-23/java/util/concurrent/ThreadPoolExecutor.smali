.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1fffffff

.field private static final COUNT_BITS:I = 0x1d

.field private static final ONLY_ONE:Z = true

.field private static final RUNNING:I = -0x20000000

.field private static final SHUTDOWN:I = 0x0

.field private static final STOP:I = 0x20000000

.field private static final TERMINATED:I = 0x60000000

.field private static final TIDYING:I = 0x40000000

.field private static final defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile allowCoreThreadTimeOut:Z

.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final ctl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 518
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    #@5
    .line 517
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@7
    .line 541
    new-instance v0, Ljava/lang/RuntimePermission;

    #@9
    const-string/jumbo v1, "modifyThread"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 540
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    #@11
    .line 290
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    #@3
    move-result-object v8

    #@4
    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@6
    move-object v1, p0

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move-wide v4, p3

    #@a
    move-object/from16 v6, p5

    #@c
    move-object/from16 v7, p6

    #@e
    .line 1166
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@11
    .line 1165
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1237
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    #@3
    move-result-object v8

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move-wide v4, p3

    #@8
    move-object/from16 v6, p5

    #@a
    move-object/from16 v7, p6

    #@c
    move-object/from16 v9, p7

    #@e
    .line 1236
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@11
    .line 1235
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1202
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move-wide v4, p3

    #@6
    move-object/from16 v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    .line 1201
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@f
    .line 1200
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v2, 0x0

    #@1
    .line 1267
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    #@4
    .line 348
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    const/high16 v1, -0x20000000

    #@8
    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@f
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    .line 430
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 436
    new-instance v0, Ljava/util/HashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@1f
    .line 441
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@27
    .line 1274
    if-ltz p1, :cond_0

    #@29
    .line 1275
    if-gtz p2, :cond_1

    #@2b
    .line 1278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@30
    throw v0

    #@31
    .line 1276
    :cond_1
    if-lt p2, p1, :cond_0

    #@33
    .line 1277
    const-wide/16 v0, 0x0

    #@35
    cmp-long v0, p3, v0

    #@37
    if-ltz v0, :cond_0

    #@39
    .line 1279
    if-eqz p6, :cond_2

    #@3b
    if-nez p7, :cond_3

    #@3d
    .line 1280
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    #@3f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@42
    throw v0

    #@43
    .line 1279
    :cond_3
    if-eqz p8, :cond_2

    #@45
    .line 1281
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@47
    .line 1282
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@49
    .line 1283
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@4b
    .line 1284
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4e
    move-result-wide v0

    #@4f
    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@51
    .line 1285
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@53
    .line 1286
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@55
    .line 1273
    return-void
.end method

.method private addWorker(Ljava/lang/Runnable;Z)Z
    .locals 12
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 868
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v0

    #@7
    .line 869
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@a
    move-result v2

    #@b
    .line 872
    .local v2, "rs":I
    if-ltz v2, :cond_2

    #@d
    .line 873
    if-nez v2, :cond_0

    #@f
    .line 874
    if-eqz p1, :cond_1

    #@11
    .line 876
    :cond_0
    return v11

    #@12
    .line 875
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@14
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@17
    move-result v10

    #@18
    .line 872
    if-nez v10, :cond_0

    #@1a
    .line 879
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@1d
    move-result v7

    #@1e
    .line 880
    .local v7, "wc":I
    const v10, 0x1fffffff

    #@21
    if-ge v7, v10, :cond_3

    #@23
    .line 881
    if-eqz p2, :cond_4

    #@25
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@27
    :goto_1
    if-lt v7, v10, :cond_5

    #@29
    .line 882
    :cond_3
    return v11

    #@2a
    .line 881
    :cond_4
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@2c
    goto :goto_1

    #@2d
    .line 883
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    #@30
    move-result v10

    #@31
    if-eqz v10, :cond_8

    #@33
    .line 892
    const/4 v9, 0x0

    #@34
    .line 893
    .local v9, "workerStarted":Z
    const/4 v8, 0x0

    #@35
    .line 894
    .local v8, "workerAdded":Z
    const/4 v5, 0x0

    #@36
    .line 896
    .local v5, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_0
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@38
    invoke-direct {v6, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3b
    .line 897
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_1
    iget-object v4, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@3d
    .line 898
    .end local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v4, "t":Ljava/lang/Thread;
    if-eqz v4, :cond_c

    #@3f
    .line 899
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@41
    .line 900
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    .line 905
    :try_start_2
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@46
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@49
    move-result v10

    #@4a
    invoke-static {v10}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@4d
    move-result v2

    #@4e
    .line 907
    if-ltz v2, :cond_6

    #@50
    .line 908
    if-nez v2, :cond_b

    #@52
    if-nez p1, :cond_b

    #@54
    .line 909
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_9

    #@5a
    .line 910
    new-instance v10, Ljava/lang/IllegalThreadStateException;

    #@5c
    invoke-direct {v10}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@5f
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    .line 917
    :catchall_0
    move-exception v10

    #@61
    .line 918
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@64
    .line 917
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@65
    .line 925
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_1
    move-exception v10

    #@66
    move-object v5, v6

    #@67
    .line 926
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :goto_2
    if-nez v9, :cond_7

    #@69
    .line 927
    invoke-direct {p0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    #@6c
    .line 925
    :cond_7
    throw v10

    #@6d
    .line 885
    .end local v8    # "workerAdded":Z
    .end local v9    # "workerStarted":Z
    :cond_8
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6f
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@72
    move-result v0

    #@73
    .line 886
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@76
    move-result v10

    #@77
    if-eq v10, v2, :cond_2

    #@79
    goto :goto_0

    #@7a
    .line 911
    .restart local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v8    # "workerAdded":Z
    .restart local v9    # "workerStarted":Z
    :cond_9
    :try_start_4
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@7c
    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@7f
    .line 912
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@81
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    #@84
    move-result v3

    #@85
    .line 913
    .local v3, "s":I
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    #@87
    if-le v3, v10, :cond_a

    #@89
    .line 914
    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8b
    .line 915
    :cond_a
    const/4 v8, 0x1

    #@8c
    .line 918
    .end local v3    # "s":I
    :cond_b
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@8f
    .line 920
    if-eqz v8, :cond_c

    #@91
    .line 921
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@94
    .line 922
    const/4 v9, 0x1

    #@95
    .line 926
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_c
    if-nez v9, :cond_d

    #@97
    .line 927
    invoke-direct {p0, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    #@9a
    .line 929
    :cond_d
    return v9

    #@9b
    .line 925
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_2
    move-exception v10

    #@9c
    goto :goto_2
.end method

.method private addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 2
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@0
    .prologue
    .line 940
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 941
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 943
    if-eqz p1, :cond_0

    #@7
    .line 944
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@c
    .line 945
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@f
    .line 946
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 948
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 939
    return-void

    #@16
    .line 947
    :catchall_0
    move-exception v1

    #@17
    .line 948
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 947
    throw v1
.end method

.method private advanceRunState(I)V
    .locals 3
    .param p1, "targetState"    # I

    #@0
    .prologue
    .line 643
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 644
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 645
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@11
    move-result v2

    #@12
    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@19
    move-result v1

    #@1a
    .line 644
    if-eqz v1, :cond_0

    #@1c
    .line 641
    :cond_1
    return-void
.end method

.method private checkShutdownAccess()V
    .locals 5

    #@0
    .prologue
    .line 704
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 705
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    #@6
    .line 706
    sget-object v4, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 707
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 708
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@10
    .line 710
    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@22
    .line 711
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@24
    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 712
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@29
    .line 713
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 712
    throw v4

    #@2d
    .line 713
    .restart local v3    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 703
    .end local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private compareAndDecrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    add-int/lit8 v1, p1, -0x1

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private compareAndIncrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static ctlOf(II)I
    .locals 1
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    #@0
    .prologue
    .line 362
    or-int v0, p0, p1

    #@2
    return v0
.end method

.method private decrementWorkerCount()V
    .locals 1

    #@0
    .prologue
    .line 401
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 400
    return-void
.end method

.method private drainQueue()Ljava/util/List;
    .locals 7
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
    const/4 v4, 0x0

    #@1
    .line 823
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@3
    .line 824
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 825
    .local v2, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    #@b
    .line 826
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    .line 827
    new-array v3, v4, [Ljava/lang/Runnable;

    #@13
    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, [Ljava/lang/Runnable;

    #@19
    array-length v5, v3

    #@1a
    :goto_0
    if-ge v4, v5, :cond_1

    #@1c
    aget-object v1, v3, v4

    #@1e
    .line 828
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 829
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 827
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 832
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    return-object v2
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1011
    const/4 v5, 0x0

    #@2
    .line 1014
    .local v5, "timedOut":Z
    :cond_0
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v0

    #@8
    .line 1015
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@b
    move-result v3

    #@c
    .line 1018
    .local v3, "rs":I
    if-ltz v3, :cond_2

    #@e
    const/high16 v7, 0x20000000

    #@10
    if-ge v3, v7, :cond_1

    #@12
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@14
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_2

    #@1a
    .line 1019
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@1d
    .line 1020
    return-object v11

    #@1e
    .line 1023
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@21
    move-result v6

    #@22
    .line 1026
    .local v6, "wc":I
    iget-boolean v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@24
    if-nez v7, :cond_3

    #@26
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@28
    if-le v6, v7, :cond_6

    #@2a
    :cond_3
    const/4 v4, 0x1

    #@2b
    .line 1028
    .local v4, "timed":Z
    :goto_1
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@2d
    if-gt v6, v7, :cond_4

    #@2f
    if-eqz v4, :cond_7

    #@31
    if-eqz v5, :cond_7

    #@33
    .line 1029
    :cond_4
    const/4 v7, 0x1

    #@34
    if-gt v6, v7, :cond_5

    #@36
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@38
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@3b
    move-result v7

    #@3c
    .line 1028
    if-eqz v7, :cond_7

    #@3e
    .line 1030
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_0

    #@44
    .line 1031
    return-object v11

    #@45
    .line 1026
    .end local v4    # "timed":Z
    :cond_6
    const/4 v4, 0x0

    #@46
    .restart local v4    # "timed":Z
    goto :goto_1

    #@47
    .line 1036
    :cond_7
    if-eqz v4, :cond_8

    #@49
    .line 1037
    :try_start_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@4b
    iget-wide v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@4d
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4f
    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Ljava/lang/Runnable;

    #@55
    .line 1039
    .local v1, "r":Ljava/lang/Runnable;
    :goto_2
    if-eqz v1, :cond_9

    #@57
    .line 1040
    return-object v1

    #@58
    .line 1038
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_8
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@5a
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .restart local v1    # "r":Ljava/lang/Runnable;
    goto :goto_2

    #@61
    .line 1041
    :cond_9
    const/4 v5, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1042
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    #@64
    .line 1043
    .local v2, "retry":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    #@65
    goto :goto_0
.end method

.method private interruptIdleWorkers()V
    .locals 1

    #@0
    .prologue
    .line 779
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    #@4
    .line 778
    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .locals 6
    .param p1, "onlyOne"    # Z

    #@0
    .prologue
    .line 753
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 754
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 756
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v4

    #@b
    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_2

    #@11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@17
    .line 757
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v2, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@19
    .line 758
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_1

    #@1f
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 760
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    .line 763
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 766
    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    #@2d
    .line 770
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 752
    return-void

    #@31
    .line 761
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_0
    move-exception v0

    #@32
    .line 763
    .local v0, "ignore":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 769
    .end local v0    # "ignore":Ljava/lang/SecurityException;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@37
    .line 770
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3a
    .line 769
    throw v5

    #@3b
    .line 762
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@3c
    .line 763
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@3f
    .line 762
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private interruptWorkers()V
    .locals 4

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 724
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 726
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@17
    .line 727
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 728
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v2    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1c
    .line 729
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 728
    throw v3

    #@20
    .line 729
    .restart local v2    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 722
    return-void
.end method

.method private static isRunning(I)Z
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 378
    if-gez p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method private processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .locals 9
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 966
    if-eqz p2, :cond_0

    #@3
    .line 967
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@6
    .line 969
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 970
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 972
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@d
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@f
    add-long/2addr v4, v6

    #@10
    iput-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@12
    .line 973
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@14
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 975
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 978
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@1d
    .line 980
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@22
    move-result v0

    #@23
    .line 981
    .local v0, "c":I
    const/high16 v3, 0x20000000

    #@25
    invoke-static {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_5

    #@2b
    .line 982
    if-nez p2, :cond_4

    #@2d
    .line 983
    iget-boolean v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    const/4 v2, 0x0

    #@32
    .line 984
    .local v2, "min":I
    :goto_0
    if-nez v2, :cond_1

    #@34
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@36
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3

    #@3c
    .line 986
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@3f
    move-result v3

    #@40
    if-lt v3, v2, :cond_4

    #@42
    .line 987
    return-void

    #@43
    .line 974
    .end local v0    # "c":I
    .end local v2    # "min":I
    :catchall_0
    move-exception v3

    #@44
    .line 975
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@47
    .line 974
    throw v3

    #@48
    .line 983
    .restart local v0    # "c":I
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@4a
    .restart local v2    # "min":I
    goto :goto_0

    #@4b
    .line 985
    :cond_3
    const/4 v2, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 989
    .end local v2    # "min":I
    :cond_4
    const/4 v3, 0x0

    #@4e
    invoke-direct {p0, v3, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@51
    .line 965
    :cond_5
    return-void
.end method

.method private static runStateAtLeast(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    #@0
    .prologue
    .line 374
    if-lt p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method private static runStateLessThan(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    #@0
    .prologue
    .line 370
    if-ge p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method private static runStateOf(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 360
    const/high16 v0, -0x20000000

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method private static workerCountOf(I)I
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 361
    const v0, 0x1fffffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1958
    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1610
    if-eqz p1, :cond_0

    #@2
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 1611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Core threads must have nonzero keep alive times"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1612
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@15
    if-eq p1, v0, :cond_1

    #@17
    .line 1613
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@19
    .line 1614
    if-eqz p1, :cond_1

    #@1b
    .line 1615
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1e
    .line 1609
    :cond_1
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    #@0
    .prologue
    .line 1589
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@2
    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1425
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 1426
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 1427
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 1430
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@e
    move-result v1

    #@f
    const/high16 v4, 0x60000000

    #@11
    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1431
    const/4 v1, 0x1

    #@18
    .line 1437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1b
    .line 1431
    return v1

    #@1c
    .line 1432
    :cond_0
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v1, v2, v4

    #@20
    if-gtz v1, :cond_1

    #@22
    .line 1433
    const/4 v1, 0x0

    #@23
    .line 1437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@26
    .line 1433
    return v1

    #@27
    .line 1434
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@29
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result-wide v2

    #@2d
    goto :goto_0

    #@2e
    .line 1436
    :catchall_0
    move-exception v1

    #@2f
    .line 1437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 1436
    throw v1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1910
    return-void
.end method

.method ensurePrestart()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1554
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@b
    move-result v0

    #@c
    .line 1555
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 1556
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@14
    .line 1553
    :cond_0
    :goto_0
    return-void

    #@15
    .line 1557
    :cond_1
    if-nez v0, :cond_0

    #@17
    .line 1558
    invoke-direct {p0, v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@1a
    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1304
    if-nez p1, :cond_0

    #@4
    .line 1305
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v2

    #@a
    .line 1326
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@f
    move-result v0

    #@10
    .line 1327
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@13
    move-result v2

    #@14
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@16
    if-ge v2, v3, :cond_2

    #@18
    .line 1328
    const/4 v2, 0x1

    #@19
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 1329
    return-void

    #@20
    .line 1330
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@25
    move-result v0

    #@26
    .line 1332
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_5

    #@2c
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2e
    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_5

    #@34
    .line 1333
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@36
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@39
    move-result v1

    #@3a
    .line 1334
    .local v1, "recheck":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_4

    #@40
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4

    #@46
    .line 1335
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@49
    .line 1303
    .end local v1    # "recheck":I
    :cond_3
    :goto_0
    return-void

    #@4a
    .line 1336
    .restart local v1    # "recheck":I
    :cond_4
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_3

    #@50
    .line 1337
    invoke-direct {p0, v5, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@53
    goto :goto_0

    #@54
    .line 1339
    .end local v1    # "recheck":I
    :cond_5
    invoke-direct {p0, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@57
    move-result v2

    #@58
    if-nez v2, :cond_3

    #@5a
    .line 1340
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@5d
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1446
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    #@3
    .line 1445
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    #@0
    .prologue
    .line 1782
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1783
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1785
    const/4 v1, 0x0

    #@6
    .line 1786
    .local v1, "n":I
    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v3

    #@c
    .local v3, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@18
    .line 1787
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1788
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1791
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 1789
    return v1

    #@25
    .line 1790
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@26
    .line 1791
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 1790
    throw v4
.end method

.method public getCompletedTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 1845
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1846
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1848
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1849
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v4

    #@d
    .local v4, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@19
    .line 1850
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    add-long/2addr v2, v6

    #@1c
    goto :goto_0

    #@1d
    .line 1853
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1851
    return-wide v2

    #@21
    .line 1852
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@22
    .line 1853
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 1852
    throw v5
.end method

.method public getCorePoolSize()I
    .locals 1

    #@0
    .prologue
    .line 1533
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@2
    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 1685
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 2

    #@0
    .prologue
    .line 1802
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1803
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1805
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 1807
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 1805
    return v1

    #@b
    .line 1806
    :catchall_0
    move-exception v1

    #@c
    .line 1807
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 1806
    throw v1
.end method

.method public getMaximumPoolSize()I
    .locals 1

    #@0
    .prologue
    .line 1646
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@2
    return v0
.end method

.method public getPoolSize()I
    .locals 3

    #@0
    .prologue
    .line 1763
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1764
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1768
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@a
    move-result v1

    #@b
    const/high16 v2, 0x40000000    # 2.0f

    #@d
    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v1, 0x0

    #@14
    .line 1771
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 1768
    return v1

    #@18
    .line 1769
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@1a
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v1

    #@1e
    goto :goto_0

    #@1f
    .line 1770
    :catchall_0
    move-exception v1

    #@20
    .line 1771
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 1770
    throw v1
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1699
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    #@0
    .prologue
    .line 1492
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@2
    return-object v0
.end method

.method public getTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1821
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1823
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1824
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v4

    #@d
    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@19
    .line 1825
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@1b
    add-long/2addr v2, v6

    #@1c
    .line 1826
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 1827
    const-wide/16 v6, 0x1

    #@24
    add-long/2addr v2, v6

    #@25
    goto :goto_0

    #@26
    .line 1829
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@28
    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v5

    #@2c
    int-to-long v6, v5

    #@2d
    add-long/2addr v6, v2

    #@2e
    .line 1831
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 1829
    return-wide v6

    #@32
    .line 1830
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@33
    .line 1831
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@36
    .line 1830
    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 1469
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@2
    return-object v0
.end method

.method final isRunningOrShutdown(Z)Z
    .locals 3
    .param p1, "shutdownOK"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 812
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@a
    move-result v0

    #@b
    .line 813
    .local v0, "rs":I
    const/high16 v2, -0x20000000

    #@d
    if-eq v0, v2, :cond_0

    #@f
    if-nez v0, :cond_1

    #@11
    .end local p1    # "shutdownOK":Z
    :goto_0
    return p1

    #@12
    .restart local p1    # "shutdownOK":Z
    :cond_0
    const/4 p1, 0x1

    #@13
    goto :goto_0

    #@14
    :cond_1
    move p1, v1

    #@15
    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 1400
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 2

    #@0
    .prologue
    .line 1420
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x60000000

    #@8
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isTerminating()Z
    .locals 2

    #@0
    .prologue
    .line 1415
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 1416
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const/high16 v1, 0x60000000

    #@e
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method onShutdown()V
    .locals 0

    #@0
    .prologue
    .line 802
    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    #@0
    .prologue
    .line 1569
    const/4 v0, 0x0

    #@1
    .line 1570
    .local v0, "n":I
    :goto_0
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1571
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1572
    :cond_0
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 2

    #@0
    .prologue
    .line 1545
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@9
    move-result v0

    #@a
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 1546
    const/4 v0, 0x0

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@13
    move-result v0

    #@14
    .line 1545
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public purge()V
    .locals 9

    #@0
    .prologue
    .line 1735
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    .line 1737
    .local v2, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1738
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 1739
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/lang/Runnable;

    #@12
    .line 1740
    .local v4, "r":Ljava/lang/Runnable;
    instance-of v5, v4, Ljava/util/concurrent/Future;

    #@14
    if-eqz v5, :cond_0

    #@16
    check-cast v4, Ljava/util/concurrent/Future;

    #@18
    .end local v4    # "r":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1741
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    goto :goto_0

    #@22
    .line 1743
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v0

    #@23
    .line 1747
    .local v0, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    const/4 v5, 0x0

    #@28
    array-length v8, v7

    #@29
    move v6, v5

    #@2a
    :goto_1
    if-ge v6, v8, :cond_2

    #@2c
    aget-object v3, v7, v6

    #@2e
    .line 1748
    .local v3, "r":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/concurrent/Future;

    #@30
    if-eqz v5, :cond_1

    #@32
    move-object v5, v3

    #@33
    check-cast v5, Ljava/util/concurrent/Future;

    #@35
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 1749
    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@3e
    .line 1747
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@40
    move v6, v5

    #@41
    goto :goto_1

    #@42
    .line 1752
    .end local v0    # "fallThrough":Ljava/util/ConcurrentModificationException;
    .end local v3    # "r":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@45
    .line 1734
    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@2
    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    #@5
    .line 793
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1719
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 1720
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@9
    .line 1721
    return v0
.end method

.method final runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 12
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@0
    .prologue
    const-wide/16 v10, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 1092
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v3

    #@7
    .line 1093
    .local v3, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    #@9
    .line 1094
    .local v1, "task":Ljava/lang/Runnable;
    iput-object v7, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    #@b
    .line 1095
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@e
    .line 1096
    const/4 v0, 0x1

    #@f
    .line 1098
    .end local v1    # "task":Ljava/lang/Runnable;
    .local v0, "completedAbruptly":Z
    :goto_0
    if-nez v1, :cond_0

    #@11
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    #@14
    move-result-object v1

    #@15
    .restart local v1    # "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_4

    #@17
    .line 1099
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    #@1a
    .line 1104
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1f
    move-result v7

    #@20
    const/high16 v8, 0x20000000

    #@22
    invoke-static {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@25
    move-result v7

    #@26
    if-nez v7, :cond_1

    #@28
    .line 1105
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 1106
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@30
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@33
    move-result v7

    #@34
    const/high16 v8, 0x20000000

    #@36
    invoke-static {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@39
    move-result v7

    #@3a
    .line 1104
    if-eqz v7, :cond_2

    #@3c
    .line 1107
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_3

    #@42
    .line 1110
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@45
    .line 1111
    const/4 v2, 0x0

    #@46
    .line 1113
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@49
    .line 1121
    :try_start_3
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@4c
    .line 1124
    const/4 v1, 0x0

    #@4d
    .line 1125
    .local v1, "task":Ljava/lang/Runnable;
    :try_start_4
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@4f
    add-long/2addr v8, v10

    #@50
    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@52
    .line 1126
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1130
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    #@57
    .line 1131
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    #@5a
    .line 1130
    throw v7

    #@5b
    .line 1108
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 1118
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    #@60
    .line 1119
    .local v6, "x":Ljava/lang/Throwable;
    move-object v2, v6

    #@61
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_6
    new-instance v7, Ljava/lang/Error;

    #@63
    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@66
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@67
    .line 1120
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v6    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    #@68
    .line 1121
    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    #@6b
    .line 1120
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@6c
    .line 1123
    :catchall_2
    move-exception v7

    #@6d
    .line 1124
    const/4 v1, 0x0

    #@6e
    .line 1125
    .restart local v1    # "task":Ljava/lang/Runnable;
    :try_start_8
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@70
    add-long/2addr v8, v10

    #@71
    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@73
    .line 1126
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@76
    .line 1123
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@77
    .line 1116
    .end local v1    # "task":Ljava/lang/Runnable;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    #@78
    .line 1117
    .local v4, "x":Ljava/lang/Error;
    move-object v2, v4

    #@79
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_9
    throw v4

    #@7a
    .line 1114
    .end local v4    # "x":Ljava/lang/Error;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    #@7b
    .line 1115
    .local v5, "x":Ljava/lang/RuntimeException;
    move-object v2, v5

    #@7c
    .local v2, "thrown":Ljava/lang/Throwable;
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@7d
    .line 1129
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v5    # "x":Ljava/lang/RuntimeException;
    .local v1, "task":Ljava/lang/Runnable;
    :cond_4
    const/4 v0, 0x0

    #@7e
    .line 1131
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    #@81
    .line 1091
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 5
    .param p1, "corePoolSize"    # I

    #@0
    .prologue
    .line 1507
    if-gez p1, :cond_0

    #@2
    .line 1508
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1509
    :cond_0
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@a
    sub-int v0, p1, v3

    #@c
    .line 1510
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@e
    .line 1511
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@13
    move-result v3

    #@14
    invoke-static {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@17
    move-result v3

    #@18
    if-le v3, p1, :cond_2

    #@1a
    .line 1512
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1d
    .line 1506
    :cond_1
    return-void

    #@1e
    .line 1513
    :cond_2
    if-lez v0, :cond_1

    #@20
    .line 1518
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@22
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    #@25
    move-result v3

    #@26
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v1

    #@2a
    .local v1, "k":I
    move v2, v1

    #@2b
    .line 1519
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@2d
    .end local v2    # "k":I
    .restart local v1    # "k":I
    if-lez v2, :cond_1

    #@2f
    const/4 v3, 0x0

    #@30
    const/4 v4, 0x1

    #@31
    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 1520
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@39
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@3c
    move-result v3

    #@3d
    if-nez v3, :cond_1

    #@3f
    move v2, v1

    #@40
    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 1664
    cmp-long v4, p1, v6

    #@4
    if-gez v4, :cond_0

    #@6
    .line 1665
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v4

    #@c
    .line 1666
    :cond_0
    cmp-long v4, p1, v6

    #@e
    if-nez v4, :cond_1

    #@10
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 1667
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v5, "Core threads must have nonzero keep alive times"

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v4

    #@1f
    .line 1668
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@22
    move-result-wide v2

    #@23
    .line 1669
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@25
    sub-long v0, v2, v4

    #@27
    .line 1670
    .local v0, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@29
    .line 1671
    cmp-long v4, v0, v6

    #@2b
    if-gez v4, :cond_2

    #@2d
    .line 1672
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@30
    .line 1663
    :cond_2
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    #@0
    .prologue
    .line 1632
    if-lez p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@4
    if-ge p1, v0, :cond_1

    #@6
    .line 1633
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1634
    :cond_1
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@e
    .line 1635
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@17
    move-result v0

    #@18
    if-le v0, p1, :cond_2

    #@1a
    .line 1636
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1d
    .line 1631
    :cond_2
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 1480
    if-nez p1, :cond_0

    #@2
    .line 1481
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1482
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@a
    .line 1479
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 1457
    if-nez p1, :cond_0

    #@2
    .line 1458
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1459
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@a
    .line 1456
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 1354
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1355
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1357
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    #@8
    .line 1358
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    #@c
    .line 1359
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@f
    .line 1360
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1362
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 1364
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@18
    .line 1353
    return-void

    #@19
    .line 1361
    :catchall_0
    move-exception v1

    #@1a
    .line 1362
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 1361
    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3
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
    .line 1385
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1386
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1388
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    #@8
    .line 1389
    const/high16 v2, 0x20000000

    #@a
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    #@d
    .line 1390
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    #@10
    .line 1391
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v1

    #@14
    .line 1393
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 1395
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@1a
    .line 1396
    return-object v1

    #@1b
    .line 1392
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v2

    #@1c
    .line 1393
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 1392
    throw v2
.end method

.method protected terminated()V
    .locals 0

    #@0
    .prologue
    .line 1966
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 1867
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1868
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1870
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1871
    .local v4, "ncompleted":J
    const/4 v2, 0x0

    #@8
    .line 1872
    .local v2, "nactive":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@a
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    #@d
    move-result v3

    #@e
    .line 1873
    .local v3, "nworkers":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@10
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v8

    #@14
    .local v8, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_1

    #@1a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@20
    .line 1874
    .local v7, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v10, v7, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@22
    add-long/2addr v4, v10

    #@23
    .line 1875
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v9

    #@27
    if-eqz v9, :cond_0

    #@29
    .line 1876
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1879
    .end local v7    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 1881
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@34
    move-result v0

    #@35
    .line 1882
    .local v0, "c":I
    const/4 v9, 0x0

    #@36
    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_2

    #@3c
    const-string/jumbo v6, "Running"

    #@3f
    .line 1885
    .local v6, "rs":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-super {p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    .line 1886
    const-string/jumbo v10, "["

    #@4f
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    .line 1887
    const-string/jumbo v10, ", pool size = "

    #@5a
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    .line 1888
    const-string/jumbo v10, ", active threads = "

    #@65
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    .line 1889
    const-string/jumbo v10, ", queued tasks = "

    #@70
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    .line 1889
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@76
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->size()I

    #@79
    move-result v10

    #@7a
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    .line 1890
    const-string/jumbo v10, ", completed tasks = "

    #@81
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 1891
    const-string/jumbo v10, "]"

    #@8c
    .line 1885
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    return-object v9

    #@95
    .line 1878
    .end local v0    # "c":I
    .end local v2    # "nactive":I
    .end local v3    # "nworkers":I
    .end local v4    # "ncompleted":J
    .end local v6    # "rs":Ljava/lang/String;
    .end local v8    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@96
    .line 1879
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@99
    .line 1878
    throw v9

    #@9a
    .line 1883
    .restart local v0    # "c":I
    .restart local v2    # "nactive":I
    .restart local v3    # "nworkers":I
    .restart local v4    # "ncompleted":J
    .restart local v8    # "w$iterator":Ljava/util/Iterator;
    :cond_2
    const/high16 v9, 0x60000000

    #@9c
    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@9f
    move-result v9

    #@a0
    if-eqz v9, :cond_3

    #@a2
    const-string/jumbo v6, "Terminated"

    #@a5
    .restart local v6    # "rs":Ljava/lang/String;
    goto :goto_1

    #@a6
    .line 1884
    .end local v6    # "rs":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "Shutting down"

    #@a9
    .restart local v6    # "rs":Ljava/lang/String;
    goto :goto_1
.end method

.method final tryTerminate()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 662
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v0

    #@8
    .line 663
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 664
    invoke-static {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@11
    move-result v2

    #@12
    .line 663
    if-nez v2, :cond_1

    #@14
    .line 665
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@1c
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 667
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 668
    const/4 v2, 0x1

    #@29
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    #@2c
    .line 669
    return-void

    #@2d
    .line 666
    :cond_1
    return-void

    #@2e
    .line 672
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@30
    .line 673
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@33
    .line 675
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@35
    const/high16 v3, 0x40000000    # 2.0f

    #@37
    const/4 v4, 0x0

    #@38
    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_3

    #@42
    .line 677
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 679
    :try_start_2
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@47
    const/high16 v3, 0x60000000

    #@49
    const/4 v4, 0x0

    #@4a
    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    #@4d
    move-result v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@51
    .line 680
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@53
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    .line 685
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@59
    .line 682
    return-void

    #@5a
    .line 678
    :catchall_0
    move-exception v2

    #@5b
    .line 679
    :try_start_3
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5d
    const/high16 v4, 0x60000000

    #@5f
    const/4 v5, 0x0

    #@60
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    #@63
    move-result v4

    #@64
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@67
    .line 680
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@69
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@6c
    .line 678
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6d
    .line 684
    :catchall_1
    move-exception v2

    #@6e
    .line 685
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@71
    .line 684
    throw v2

    #@72
    .line 685
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@75
    goto :goto_0
.end method
