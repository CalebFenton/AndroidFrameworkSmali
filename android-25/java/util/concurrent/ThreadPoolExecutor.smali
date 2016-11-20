.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
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
    .line 537
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    #@5
    .line 536
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@7
    .line 560
    new-instance v0, Ljava/lang/RuntimePermission;

    #@9
    const-string/jumbo v1, "modifyThread"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 559
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    #@11
    .line 309
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
    .line 1187
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
    .line 1186
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@11
    .line 1185
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
    .line 1257
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
    .line 1256
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@11
    .line 1255
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
    .line 1222
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
    .line 1221
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@f
    .line 1220
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
    .line 1287
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    #@4
    .line 367
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
    .line 449
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 455
    new-instance v0, Ljava/util/HashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@1f
    .line 460
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@27
    .line 1294
    if-ltz p1, :cond_0

    #@29
    .line 1295
    if-gtz p2, :cond_1

    #@2b
    .line 1298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@30
    throw v0

    #@31
    .line 1296
    :cond_1
    if-lt p2, p1, :cond_0

    #@33
    .line 1297
    const-wide/16 v0, 0x0

    #@35
    cmp-long v0, p3, v0

    #@37
    if-ltz v0, :cond_0

    #@39
    .line 1299
    if-eqz p6, :cond_2

    #@3b
    if-nez p7, :cond_3

    #@3d
    .line 1300
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    #@3f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@42
    throw v0

    #@43
    .line 1299
    :cond_3
    if-eqz p8, :cond_2

    #@45
    .line 1301
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@47
    .line 1302
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@49
    .line 1303
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@4b
    .line 1304
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4e
    move-result-wide v0

    #@4f
    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@51
    .line 1305
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@53
    .line 1306
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@55
    .line 1293
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
    .line 888
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6
    move-result v0

    #@7
    .line 889
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@a
    move-result v2

    #@b
    .line 892
    .local v2, "rs":I
    if-ltz v2, :cond_2

    #@d
    .line 893
    if-nez v2, :cond_0

    #@f
    .line 894
    if-eqz p1, :cond_1

    #@11
    .line 896
    :cond_0
    return v11

    #@12
    .line 895
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@14
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@17
    move-result v10

    #@18
    .line 892
    if-nez v10, :cond_0

    #@1a
    .line 899
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@1d
    move-result v7

    #@1e
    .line 900
    .local v7, "wc":I
    const v10, 0x1fffffff

    #@21
    if-ge v7, v10, :cond_3

    #@23
    .line 901
    if-eqz p2, :cond_4

    #@25
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@27
    :goto_1
    if-lt v7, v10, :cond_5

    #@29
    .line 902
    :cond_3
    return v11

    #@2a
    .line 901
    :cond_4
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@2c
    goto :goto_1

    #@2d
    .line 903
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    #@30
    move-result v10

    #@31
    if-eqz v10, :cond_8

    #@33
    .line 912
    const/4 v9, 0x0

    #@34
    .line 913
    .local v9, "workerStarted":Z
    const/4 v8, 0x0

    #@35
    .line 914
    .local v8, "workerAdded":Z
    const/4 v5, 0x0

    #@36
    .line 916
    .local v5, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_0
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    #@38
    invoke-direct {v6, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3b
    .line 917
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_1
    iget-object v4, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@3d
    .line 918
    .end local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v4, "t":Ljava/lang/Thread;
    if-eqz v4, :cond_c

    #@3f
    .line 919
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@41
    .line 920
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    .line 925
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
    .line 927
    if-ltz v2, :cond_6

    #@50
    .line 928
    if-nez v2, :cond_b

    #@52
    if-nez p1, :cond_b

    #@54
    .line 929
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_9

    #@5a
    .line 930
    new-instance v10, Ljava/lang/IllegalThreadStateException;

    #@5c
    invoke-direct {v10}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@5f
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    .line 937
    :catchall_0
    move-exception v10

    #@61
    .line 938
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@64
    .line 937
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@65
    .line 945
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_1
    move-exception v10

    #@66
    move-object v5, v6

    #@67
    .line 946
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :goto_2
    if-nez v9, :cond_7

    #@69
    .line 947
    invoke-direct {p0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    #@6c
    .line 945
    :cond_7
    throw v10

    #@6d
    .line 905
    .end local v8    # "workerAdded":Z
    .end local v9    # "workerStarted":Z
    :cond_8
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6f
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@72
    move-result v0

    #@73
    .line 906
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@76
    move-result v10

    #@77
    if-eq v10, v2, :cond_2

    #@79
    goto :goto_0

    #@7a
    .line 931
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
    .line 932
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@81
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    #@84
    move-result v3

    #@85
    .line 933
    .local v3, "s":I
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    #@87
    if-le v3, v10, :cond_a

    #@89
    .line 934
    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8b
    .line 935
    :cond_a
    const/4 v8, 0x1

    #@8c
    .line 938
    .end local v3    # "s":I
    :cond_b
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@8f
    .line 940
    if-eqz v8, :cond_c

    #@91
    .line 941
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@94
    .line 942
    const/4 v9, 0x1

    #@95
    .line 946
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_c
    if-nez v9, :cond_d

    #@97
    .line 947
    invoke-direct {p0, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    #@9a
    .line 949
    :cond_d
    return v9

    #@9b
    .line 945
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
    .line 960
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 961
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 963
    if-eqz p1, :cond_0

    #@7
    .line 964
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@c
    .line 965
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@f
    .line 966
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 968
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 959
    return-void

    #@16
    .line 967
    :catchall_0
    move-exception v1

    #@17
    .line 968
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 967
    throw v1
.end method

.method private advanceRunState(I)V
    .locals 3
    .param p1, "targetState"    # I

    #@0
    .prologue
    .line 663
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 664
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 665
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
    .line 664
    if-eqz v1, :cond_0

    #@1c
    .line 660
    :cond_1
    return-void
.end method

.method private checkShutdownAccess()V
    .locals 5

    #@0
    .prologue
    .line 724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 725
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    #@6
    .line 726
    sget-object v4, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 727
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    .line 728
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@10
    .line 730
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
    .line 731
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@24
    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 732
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@29
    .line 733
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 732
    throw v4

    #@2d
    .line 733
    .restart local v3    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 723
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
    .line 411
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
    .line 404
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
    .line 381
    or-int v0, p0, p1

    #@2
    return v0
.end method

.method private decrementWorkerCount()V
    .locals 1

    #@0
    .prologue
    .line 420
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
    .line 419
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
    .line 843
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@3
    .line 844
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 845
    .local v2, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    #@b
    .line 846
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    .line 847
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
    .line 848
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 849
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 847
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 852
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
    .line 1031
    const/4 v5, 0x0

    #@2
    .line 1034
    .local v5, "timedOut":Z
    :cond_0
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v0

    #@8
    .line 1035
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    #@b
    move-result v3

    #@c
    .line 1038
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
    .line 1039
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@1d
    .line 1040
    return-object v11

    #@1e
    .line 1043
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@21
    move-result v6

    #@22
    .line 1046
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
    .line 1048
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
    .line 1049
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
    .line 1048
    if-eqz v7, :cond_7

    #@3e
    .line 1050
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_0

    #@44
    .line 1051
    return-object v11

    #@45
    .line 1046
    .end local v4    # "timed":Z
    :cond_6
    const/4 v4, 0x0

    #@46
    .restart local v4    # "timed":Z
    goto :goto_1

    #@47
    .line 1056
    :cond_7
    if-eqz v4, :cond_8

    #@49
    .line 1057
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
    .line 1059
    .local v1, "r":Ljava/lang/Runnable;
    :goto_2
    if-eqz v1, :cond_9

    #@57
    .line 1060
    return-object v1

    #@58
    .line 1058
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
    .line 1061
    :cond_9
    const/4 v5, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1062
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    #@64
    .line 1063
    .local v2, "retry":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    #@65
    goto :goto_0
.end method

.method private interruptIdleWorkers()V
    .locals 1

    #@0
    .prologue
    .line 799
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    #@4
    .line 798
    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .locals 6
    .param p1, "onlyOne"    # Z

    #@0
    .prologue
    .line 773
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 774
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 776
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
    .line 777
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v2, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    #@19
    .line 778
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
    .line 780
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    .line 783
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 786
    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    #@2d
    .line 790
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 772
    return-void

    #@31
    .line 781
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_0
    move-exception v0

    #@32
    .line 783
    .local v0, "ignore":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 789
    .end local v0    # "ignore":Ljava/lang/SecurityException;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@37
    .line 790
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3a
    .line 789
    throw v5

    #@3b
    .line 782
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@3c
    .line 783
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@3f
    .line 782
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private interruptWorkers()V
    .locals 4

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 744
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 746
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
    .line 747
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 748
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v2    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1c
    .line 749
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 748
    throw v3

    #@20
    .line 749
    .restart local v2    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 742
    return-void
.end method

.method private static isRunning(I)Z
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 397
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
    .line 986
    if-eqz p2, :cond_0

    #@3
    .line 987
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    #@6
    .line 989
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 990
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 992
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@d
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@f
    add-long/2addr v4, v6

    #@10
    iput-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@12
    .line 993
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@14
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 995
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 998
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@1d
    .line 1000
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@22
    move-result v0

    #@23
    .line 1001
    .local v0, "c":I
    const/high16 v3, 0x20000000

    #@25
    invoke-static {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_5

    #@2b
    .line 1002
    if-nez p2, :cond_4

    #@2d
    .line 1003
    iget-boolean v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    const/4 v2, 0x0

    #@32
    .line 1004
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
    .line 1006
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@3f
    move-result v3

    #@40
    if-lt v3, v2, :cond_4

    #@42
    .line 1007
    return-void

    #@43
    .line 994
    .end local v0    # "c":I
    .end local v2    # "min":I
    :catchall_0
    move-exception v3

    #@44
    .line 995
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@47
    .line 994
    throw v3

    #@48
    .line 1003
    .restart local v0    # "c":I
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@4a
    .restart local v2    # "min":I
    goto :goto_0

    #@4b
    .line 1005
    :cond_3
    const/4 v2, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1009
    .end local v2    # "min":I
    :cond_4
    const/4 v3, 0x0

    #@4e
    invoke-direct {p0, v3, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@51
    .line 985
    :cond_5
    return-void
.end method

.method private static runStateAtLeast(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    #@0
    .prologue
    .line 393
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
    .line 389
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
    .line 379
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
    .line 380
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
    .line 1993
    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .locals 4
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1636
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
    .line 1637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Core threads must have nonzero keep alive times"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1638
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@15
    if-eq p1, v0, :cond_1

    #@17
    .line 1639
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    #@19
    .line 1640
    if-eqz p1, :cond_1

    #@1b
    .line 1641
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1e
    .line 1635
    :cond_1
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    #@0
    .prologue
    .line 1615
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
    .line 1445
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 1446
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 1447
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 1449
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
    if-nez v1, :cond_1

    #@17
    .line 1450
    const-wide/16 v4, 0x0

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-gtz v1, :cond_0

    #@1d
    .line 1451
    const/4 v1, 0x0

    #@1e
    .line 1456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@21
    .line 1451
    return v1

    #@22
    .line 1452
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@24
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-wide v2

    #@28
    goto :goto_0

    #@29
    .line 1454
    :cond_1
    const/4 v1, 0x1

    #@2a
    .line 1456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2d
    .line 1454
    return v1

    #@2e
    .line 1455
    :catchall_0
    move-exception v1

    #@2f
    .line 1456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 1455
    throw v1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1942
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
    .line 1580
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
    .line 1581
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 1582
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@14
    .line 1579
    :cond_0
    :goto_0
    return-void

    #@15
    .line 1583
    :cond_1
    if-nez v0, :cond_0

    #@17
    .line 1584
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
    .line 1324
    if-nez p1, :cond_0

    #@4
    .line 1325
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v2

    #@a
    .line 1346
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@f
    move-result v0

    #@10
    .line 1347
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@13
    move-result v2

    #@14
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@16
    if-ge v2, v3, :cond_2

    #@18
    .line 1348
    const/4 v2, 0x1

    #@19
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 1349
    return-void

    #@20
    .line 1350
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@25
    move-result v0

    #@26
    .line 1352
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
    .line 1353
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@36
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@39
    move-result v1

    #@3a
    .line 1354
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
    .line 1355
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@49
    .line 1323
    .end local v1    # "recheck":I
    :cond_3
    :goto_0
    return-void

    #@4a
    .line 1356
    .restart local v1    # "recheck":I
    :cond_4
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_3

    #@50
    .line 1357
    invoke-direct {p0, v5, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@53
    goto :goto_0

    #@54
    .line 1359
    .end local v1    # "recheck":I
    :cond_5
    invoke-direct {p0, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@57
    move-result v2

    #@58
    if-nez v2, :cond_3

    #@5a
    .line 1360
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@5d
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1465
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    #@3
    .line 1464
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1814
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1816
    const/4 v1, 0x0

    #@6
    .line 1817
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
    .line 1818
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1819
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1822
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 1820
    return v1

    #@25
    .line 1821
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@26
    .line 1822
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@29
    .line 1821
    throw v4
.end method

.method public getCompletedTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 1876
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1877
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1879
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1880
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
    .line 1881
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    add-long/2addr v2, v6

    #@1c
    goto :goto_0

    #@1d
    .line 1884
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1882
    return-wide v2

    #@21
    .line 1883
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@22
    .line 1884
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 1883
    throw v5
.end method

.method public getCorePoolSize()I
    .locals 1

    #@0
    .prologue
    .line 1559
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@2
    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 1716
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
    .line 1833
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1834
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1836
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 1838
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@a
    .line 1836
    return v1

    #@b
    .line 1837
    :catchall_0
    move-exception v1

    #@c
    .line 1838
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@f
    .line 1837
    throw v1
.end method

.method public getMaximumPoolSize()I
    .locals 1

    #@0
    .prologue
    .line 1672
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@2
    return v0
.end method

.method public getPoolSize()I
    .locals 3

    #@0
    .prologue
    .line 1794
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1795
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1799
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
    .line 1802
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 1799
    return v1

    #@18
    .line 1800
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
    .line 1801
    :catchall_0
    move-exception v1

    #@20
    .line 1802
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 1801
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
    .line 1730
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    #@0
    .prologue
    .line 1511
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@2
    return-object v0
.end method

.method public getTaskCount()J
    .locals 8

    #@0
    .prologue
    .line 1851
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1852
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1854
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1855
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
    .line 1856
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@1b
    add-long/2addr v2, v6

    #@1c
    .line 1857
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 1858
    const-wide/16 v6, 0x1

    #@24
    add-long/2addr v2, v6

    #@25
    goto :goto_0

    #@26
    .line 1860
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
    .line 1862
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@31
    .line 1860
    return-wide v6

    #@32
    .line 1861
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@33
    .line 1862
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@36
    .line 1861
    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 1488
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
    .line 832
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
    .line 833
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
    .line 1420
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
    .line 1440
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
    .line 1435
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 1436
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
    .line 822
    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    #@0
    .prologue
    .line 1595
    const/4 v0, 0x0

    #@1
    .line 1596
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
    .line 1597
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 1598
    :cond_0
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 2

    #@0
    .prologue
    .line 1571
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
    .line 1572
    const/4 v0, 0x0

    #@f
    const/4 v1, 0x1

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    #@13
    move-result v0

    #@14
    .line 1571
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
    .line 1766
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    .line 1768
    .local v2, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1769
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 1770
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/lang/Runnable;

    #@12
    .line 1771
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
    .line 1772
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    goto :goto_0

    #@22
    .line 1774
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v0

    #@23
    .line 1778
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
    .line 1779
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
    .line 1780
    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@3e
    .line 1778
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@40
    move v6, v5

    #@41
    goto :goto_1

    #@42
    .line 1783
    .end local v0    # "fallThrough":Ljava/util/ConcurrentModificationException;
    .end local v3    # "r":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@45
    .line 1765
    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@2
    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    #@5
    .line 813
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1750
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 1751
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@9
    .line 1752
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
    .line 1112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v3

    #@7
    .line 1113
    .local v3, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    #@9
    .line 1114
    .local v1, "task":Ljava/lang/Runnable;
    iput-object v7, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    #@b
    .line 1115
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@e
    .line 1116
    const/4 v0, 0x1

    #@f
    .line 1118
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
    .line 1119
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    #@1a
    .line 1124
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
    .line 1125
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 1126
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
    .line 1124
    if-eqz v7, :cond_2

    #@3c
    .line 1127
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_3

    #@42
    .line 1130
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@45
    .line 1131
    const/4 v2, 0x0

    #@46
    .line 1133
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@49
    .line 1141
    :try_start_3
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@4c
    .line 1144
    const/4 v1, 0x0

    #@4d
    .line 1145
    .local v1, "task":Ljava/lang/Runnable;
    :try_start_4
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@4f
    add-long/2addr v8, v10

    #@50
    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@52
    .line 1146
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1150
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    #@57
    .line 1151
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    #@5a
    .line 1150
    throw v7

    #@5b
    .line 1128
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 1138
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    #@60
    .line 1139
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
    .line 1140
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v6    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    #@68
    .line 1141
    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    #@6b
    .line 1140
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@6c
    .line 1143
    :catchall_2
    move-exception v7

    #@6d
    .line 1144
    const/4 v1, 0x0

    #@6e
    .line 1145
    .restart local v1    # "task":Ljava/lang/Runnable;
    :try_start_8
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@70
    add-long/2addr v8, v10

    #@71
    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@73
    .line 1146
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    #@76
    .line 1143
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@77
    .line 1136
    .end local v1    # "task":Ljava/lang/Runnable;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    #@78
    .line 1137
    .local v4, "x":Ljava/lang/Error;
    move-object v2, v4

    #@79
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_9
    throw v4

    #@7a
    .line 1134
    .end local v4    # "x":Ljava/lang/Error;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    #@7b
    .line 1135
    .local v5, "x":Ljava/lang/RuntimeException;
    move-object v2, v5

    #@7c
    .local v2, "thrown":Ljava/lang/Throwable;
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@7d
    .line 1149
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v5    # "x":Ljava/lang/RuntimeException;
    .local v1, "task":Ljava/lang/Runnable;
    :cond_4
    const/4 v0, 0x0

    #@7e
    .line 1151
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    #@81
    .line 1111
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 5
    .param p1, "corePoolSize"    # I

    #@0
    .prologue
    .line 1533
    if-gez p1, :cond_0

    #@2
    .line 1534
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1535
    :cond_0
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@a
    sub-int v0, p1, v3

    #@c
    .line 1536
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@e
    .line 1537
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
    .line 1538
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1d
    .line 1532
    :cond_1
    return-void

    #@1e
    .line 1539
    :cond_2
    if-lez v0, :cond_1

    #@20
    .line 1544
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
    .line 1545
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
    .line 1546
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
    .line 1692
    cmp-long v4, p1, v6

    #@4
    if-gez v4, :cond_0

    #@6
    .line 1693
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v4

    #@c
    .line 1694
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
    .line 1695
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v5, "Core threads must have nonzero keep alive times"

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v4

    #@1f
    .line 1696
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@22
    move-result-wide v2

    #@23
    .line 1697
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@25
    sub-long v0, v2, v4

    #@27
    .line 1698
    .local v0, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    #@29
    .line 1699
    cmp-long v4, v0, v6

    #@2b
    if-gez v4, :cond_2

    #@2d
    .line 1700
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@30
    .line 1691
    :cond_2
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    #@0
    .prologue
    .line 1658
    if-lez p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    #@4
    if-ge p1, v0, :cond_1

    #@6
    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1660
    :cond_1
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    #@e
    .line 1661
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
    .line 1662
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@1d
    .line 1657
    :cond_2
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 1499
    if-nez p1, :cond_0

    #@2
    .line 1500
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1501
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    #@a
    .line 1498
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 1476
    if-nez p1, :cond_0

    #@2
    .line 1477
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1478
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    #@a
    .line 1475
    return-void
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 1374
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1375
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1377
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    #@8
    .line 1378
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    #@c
    .line 1379
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    #@f
    .line 1380
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1382
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@15
    .line 1384
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@18
    .line 1373
    return-void

    #@19
    .line 1381
    :catchall_0
    move-exception v1

    #@1a
    .line 1382
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1d
    .line 1381
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
    .line 1405
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1406
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1408
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    #@8
    .line 1409
    const/high16 v2, 0x20000000

    #@a
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    #@d
    .line 1410
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    #@10
    .line 1411
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v1

    #@14
    .line 1413
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 1415
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    #@1a
    .line 1416
    return-object v1

    #@1b
    .line 1412
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v2

    #@1c
    .line 1413
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1f
    .line 1412
    throw v2
.end method

.method protected terminated()V
    .locals 0

    #@0
    .prologue
    .line 2001
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 1898
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 1899
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 1901
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    #@7
    .line 1902
    .local v4, "ncompleted":J
    const/4 v2, 0x0

    #@8
    .line 1903
    .local v2, "nactive":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    #@a
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    #@d
    move-result v3

    #@e
    .line 1904
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
    .line 1905
    .local v7, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v10, v7, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    #@22
    add-long/2addr v4, v10

    #@23
    .line 1906
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v9

    #@27
    if-eqz v9, :cond_0

    #@29
    .line 1907
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1910
    .end local v7    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 1912
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@34
    move-result v0

    #@35
    .line 1914
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
    .line 1917
    .local v6, "runState":Ljava/lang/String;
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
    .line 1918
    const-string/jumbo v10, "["

    #@4f
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    .line 1919
    const-string/jumbo v10, ", pool size = "

    #@5a
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    .line 1920
    const-string/jumbo v10, ", active threads = "

    #@65
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    .line 1921
    const-string/jumbo v10, ", queued tasks = "

    #@70
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    .line 1921
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    #@76
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->size()I

    #@79
    move-result v10

    #@7a
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    .line 1922
    const-string/jumbo v10, ", completed tasks = "

    #@81
    .line 1917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 1923
    const-string/jumbo v10, "]"

    #@8c
    .line 1917
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
    .line 1909
    .end local v0    # "c":I
    .end local v2    # "nactive":I
    .end local v3    # "nworkers":I
    .end local v4    # "ncompleted":J
    .end local v6    # "runState":Ljava/lang/String;
    .end local v8    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@96
    .line 1910
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@99
    .line 1909
    throw v9

    #@9a
    .line 1915
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
    .restart local v6    # "runState":Ljava/lang/String;
    goto :goto_1

    #@a6
    .line 1916
    .end local v6    # "runState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "Shutting down"

    #@a9
    .restart local v6    # "runState":Ljava/lang/String;
    goto :goto_1
.end method

.method final tryTerminate()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 682
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@7
    move-result v0

    #@8
    .line 683
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 684
    invoke-static {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    #@11
    move-result v2

    #@12
    .line 683
    if-nez v2, :cond_1

    #@14
    .line 685
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
    .line 687
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 688
    const/4 v2, 0x1

    #@29
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    #@2c
    .line 689
    return-void

    #@2d
    .line 686
    :cond_1
    return-void

    #@2e
    .line 692
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@30
    .line 693
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@33
    .line 695
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
    .line 697
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 699
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
    .line 700
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@53
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@56
    .line 705
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@59
    .line 702
    return-void

    #@5a
    .line 698
    :catchall_0
    move-exception v2

    #@5b
    .line 699
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
    .line 700
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    #@69
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@6c
    .line 698
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6d
    .line 704
    :catchall_1
    move-exception v2

    #@6e
    .line 705
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@71
    .line 704
    throw v2

    #@72
    .line 705
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@75
    goto :goto_0
.end method
