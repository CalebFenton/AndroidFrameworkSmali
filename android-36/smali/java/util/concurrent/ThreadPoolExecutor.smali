.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;
    }
.end annotation


# static fields
.field private static final greylist-max-o COUNT_BITS:I = 0x1d

.field private static final blacklist COUNT_MASK:I = 0x1fffffff

.field private static final greylist-max-o ONLY_ONE:Z = true

.field private static final greylist-max-o RUNNING:I = -0x20000000

.field private static final greylist-max-o SHUTDOWN:I = 0x0

.field private static final greylist-max-o STOP:I = 0x20000000

.field private static final greylist-max-o TERMINATED:I = 0x60000000

.field private static final greylist-max-o TIDYING:I = 0x40000000

.field private static final greylist-max-r defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final greylist-max-o shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile greylist-max-r allowCoreThreadTimeOut:Z

.field private greylist-max-o completedTaskCount:J

.field private volatile greylist-max-o corePoolSize:I

.field private final greylist ctl:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private volatile greylist-max-o handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile greylist-max-o keepAliveTime:J

.field private greylist-max-o largestPoolSize:I

.field private final greylist-max-r mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile greylist-max-o maximumPoolSize:I

.field private final greylist-max-o termination:Ljava/util/concurrent/locks/Condition;

.field private volatile greylist-max-o threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final greylist-max-o workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 575
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 598
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor whitelist test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 16
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1209
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    nop

    .line 1210
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1209
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "corePoolSize":I
    .end local p2    # "maximumPoolSize":I
    .end local p3    # "keepAliveTime":J
    .end local p5    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .local v1, "corePoolSize":I
    .local v2, "maximumPoolSize":I
    .local v3, "keepAliveTime":J
    .local v5, "unit":Ljava/util/concurrent/TimeUnit;
    .local v6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1211
    return-void
.end method

.method public constructor whitelist test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 17
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 1281
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    nop

    .line 1282
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    .line 1281
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1283
    return-void
.end method

.method public constructor whitelist test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 17
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 1245
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1247
    return-void
.end method

.method public constructor whitelist test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 12
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
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 1318
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 392
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 393
    const/high16 v1, -0x20000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 475
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 488
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    .line 1319
    if-ltz p1, :cond_50

    if-lez p2, :cond_50

    if-lt p2, p1, :cond_50

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_50

    .line 1324
    if-eqz p6, :cond_4a

    if-eqz p7, :cond_4a

    if-eqz p8, :cond_4a

    .line 1326
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1327
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1328
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1329
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1330
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1331
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1336
    return-void

    .line 1325
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1323
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o addWorker(Ljava/lang/Runnable;Z)Z
    .registers 11
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    .line 913
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 915
    .local v0, "c":I
    :goto_6
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    const/high16 v3, 0x20000000

    if-eqz v2, :cond_20

    .line 916
    invoke-static {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_1f

    if-nez p1, :cond_1f

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 918
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 919
    :cond_1f
    return v1

    .line 922
    :cond_20
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    .line 923
    if-eqz p2, :cond_29

    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    goto :goto_2b

    :cond_29
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    :goto_2b
    const v5, 0x1fffffff

    and-int/2addr v4, v5

    if-lt v2, v4, :cond_32

    .line 924
    return v1

    .line 925
    :cond_32
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 926
    nop

    .line 934
    .end local v0    # "c":I
    const/4 v0, 0x0

    .line 935
    .local v0, "workerStarted":Z
    const/4 v1, 0x0

    .line 936
    .local v1, "workerAdded":Z
    const/4 v2, 0x0

    .line 938
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_3c
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v4, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V

    move-object v2, v4

    .line 939
    iget-object v4, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 940
    .local v4, "t":Ljava/lang/Thread;
    if-eqz v4, :cond_90

    .line 941
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 942
    .local v5, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_96

    .line 947
    :try_start_4b
    iget-object v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 949
    .local v6, "c":I
    invoke-static {v6}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 950
    invoke-static {v6, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v3

    if-eqz v3, :cond_79

    if-nez p1, :cond_79

    .line 951
    :cond_5f
    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v7, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v7, :cond_84

    .line 953
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 954
    const/4 v1, 0x1

    .line 955
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 956
    .local v3, "s":I
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v7, :cond_79

    .line 957
    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_79
    .catchall {:try_start_4b .. :try_end_79} :catchall_8a

    .line 960
    .end local v3    # "s":I
    .end local v6    # "c":I
    :cond_79
    :try_start_79
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 961
    nop

    .line 962
    if-eqz v1, :cond_90

    .line 965
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_96

    .line 966
    const/4 v0, 0x1

    goto :goto_90

    .line 952
    .restart local v6    # "c":I
    :cond_84
    :try_start_84
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v3}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local v0    # "workerStarted":Z
    .end local v1    # "workerAdded":Z
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v5    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "firstTask":Ljava/lang/Runnable;
    .end local p2    # "core":Z
    throw v3
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_8a

    .line 960
    .end local v6    # "c":I
    .restart local v0    # "workerStarted":Z
    .restart local v1    # "workerAdded":Z
    .restart local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v5    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "firstTask":Ljava/lang/Runnable;
    .restart local p2    # "core":Z
    :catchall_8a
    move-exception v3

    :try_start_8b
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 961
    nop

    .end local v0    # "workerStarted":Z
    .end local v1    # "workerAdded":Z
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "firstTask":Ljava/lang/Runnable;
    .end local p2    # "core":Z
    throw v3
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_96

    .line 970
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v5    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v0    # "workerStarted":Z
    .restart local v1    # "workerAdded":Z
    .restart local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "firstTask":Ljava/lang/Runnable;
    .restart local p2    # "core":Z
    :cond_90
    :goto_90
    if-nez v0, :cond_95

    .line 971
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 973
    :cond_95
    return v0

    .line 970
    :catchall_96
    move-exception v3

    if-nez v0, :cond_9c

    .line 971
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 972
    :cond_9c
    throw v3

    .line 927
    .end local v1    # "workerAdded":Z
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v0, "c":I
    :cond_9d
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 928
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 929
    goto/16 :goto_6
.end method

.method private greylist-max-o addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 4
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 984
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 985
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 987
    if-eqz p1, :cond_c

    .line 988
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 989
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 990
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    .line 992
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 993
    nop

    .line 994
    return-void

    .line 992
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 993
    throw v1
.end method

.method private greylist-max-o advanceRunState(I)V
    .registers 5
    .param p1, "targetState"    # I

    .line 707
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 708
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 709
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 710
    goto :goto_1f

    .line 711
    .end local v0    # "c":I
    :cond_1e
    goto :goto_1

    .line 712
    :cond_1f
    :goto_1f
    return-void
.end method

.method private greylist-max-o checkShutdownAccess()V
    .registers 5

    .line 772
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 773
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_23

    .line 774
    sget-object v1, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 775
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 776
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v3, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V

    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_11

    .line 778
    :cond_23
    return-void
.end method

.method private greylist-max-o compareAndDecrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .line 437
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o compareAndIncrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .line 430
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o ctlOf(II)I
    .registers 3
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    .line 407
    or-int v0, p0, p1

    return v0
.end method

.method private greylist-max-o decrementWorkerCount()V
    .registers 3

    .line 446
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 447
    return-void
.end method

.method private greylist-max-o drainQueue()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 870
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v1, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 872
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 873
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Runnable;

    array-length v4, v3

    :goto_1a
    if-ge v2, v4, :cond_2a

    aget-object v5, v3, v2

    .line 874
    .local v5, "r":Ljava/lang/Runnable;
    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 875
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v5    # "r":Ljava/lang/Runnable;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 878
    :cond_2a
    return-object v1
.end method

.method private greylist-max-o getTask()Ljava/lang/Runnable;
    .registers 9

    .line 1055
    const/4 v0, 0x0

    .line 1058
    .local v0, "timedOut":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1061
    .local v1, "c":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    .line 1062
    const/high16 v3, 0x20000000

    invoke-static {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1063
    :cond_1f
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1064
    return-object v4

    .line 1067
    :cond_23
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    .line 1070
    .local v3, "wc":I
    iget-boolean v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    const/4 v6, 0x1

    if-nez v5, :cond_30

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v3, v5, :cond_31

    :cond_30
    move v2, v6

    .line 1072
    .local v2, "timed":Z
    :cond_31
    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v3, v5, :cond_39

    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    :cond_39
    if-gt v3, v6, :cond_64

    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1073
    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_64

    .line 1080
    :cond_44
    if-eqz v2, :cond_53

    .line 1081
    :try_start_46
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_5b

    .line 1082
    :cond_53
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_5b} :catch_61

    :goto_5b
    nop

    .line 1083
    .local v4, "r":Ljava/lang/Runnable;
    if-eqz v4, :cond_5f

    .line 1084
    return-object v4

    .line 1085
    :cond_5f
    const/4 v0, 0x1

    .line 1088
    .end local v4    # "r":Ljava/lang/Runnable;
    goto :goto_63

    .line 1086
    :catch_61
    move-exception v4

    .line 1087
    .local v4, "retry":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 1089
    .end local v1    # "c":I
    .end local v2    # "timed":Z
    .end local v3    # "wc":I
    .end local v4    # "retry":Ljava/lang/InterruptedException;
    :goto_63
    goto :goto_1

    .line 1074
    .restart local v1    # "c":I
    .restart local v2    # "timed":Z
    .restart local v3    # "wc":I
    :cond_64
    :goto_64
    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1075
    return-object v4
.end method

.method private greylist-max-o interruptIdleWorkers()V
    .registers 2

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 837
    return-void
.end method

.method private greylist-max-o interruptIdleWorkers(Z)V
    .registers 7
    .param p1, "onlyOne"    # Z

    .line 810
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 811
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 813
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 814
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v3, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 815
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_3d

    if-eqz v4, :cond_34

    .line 817
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_32
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 820
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 821
    goto :goto_34

    .line 820
    :catchall_2c
    move-exception v1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 821
    nop

    .end local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "onlyOne":Z
    throw v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d

    .line 818
    .restart local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "onlyOne":Z
    :catch_32
    move-exception v4

    goto :goto_28

    .line 823
    :cond_34
    :goto_34
    if-eqz p1, :cond_37

    .line 824
    goto :goto_38

    .line 825
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_37
    goto :goto_b

    .line 827
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 828
    nop

    .line 829
    return-void

    .line 827
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 828
    throw v1
.end method

.method private greylist-max-o interruptWorkers()V
    .registers 3

    .line 786
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 787
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V

    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_6

    .line 788
    :cond_16
    return-void
.end method

.method private static greylist-max-o isRunning(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 423
    if-gez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private greylist-max-o processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .registers 8
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    .line 1010
    if-eqz p2, :cond_5

    .line 1011
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1013
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1014
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1016
    :try_start_a
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v3, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1017
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_4d

    .line 1019
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1020
    nop

    .line 1022
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1024
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1025
    .local v1, "c":I
    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1026
    const/4 v2, 0x0

    if-nez p2, :cond_48

    .line 1027
    iget-boolean v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v3, :cond_34

    move v3, v2

    goto :goto_36

    :cond_34
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1028
    .local v3, "min":I
    :goto_36
    if-nez v3, :cond_41

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 1029
    const/4 v3, 0x1

    .line 1030
    :cond_41
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-lt v4, v3, :cond_48

    .line 1031
    return-void

    .line 1033
    .end local v3    # "min":I
    :cond_48
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1035
    :cond_4c
    return-void

    .line 1019
    .end local v1    # "c":I
    :catchall_4d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1020
    throw v1
.end method

.method private static greylist-max-o runStateAtLeast(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .line 419
    if-lt p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist-max-o runStateLessThan(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .line 415
    if-ge p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist-max-o runStateOf(I)I
    .registers 2
    .param p0, "c"    # I

    .line 405
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o workerCountOf(I)I
    .registers 2
    .param p0, "c"    # I

    .line 406
    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected whitelist test-api afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 2039
    return-void
.end method

.method public whitelist test-api allowCoreThreadTimeOut(Z)V
    .registers 6
    .param p1, "value"    # Z

    .line 1682
    if-eqz p1, :cond_13

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    goto :goto_13

    .line 1683
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1684
    :cond_13
    :goto_13
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1e

    .line 1685
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    .line 1686
    if-eqz p1, :cond_1e

    .line 1687
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1689
    :cond_1e
    return-void
.end method

.method public whitelist test-api allowsCoreThreadTimeOut()Z
    .registers 2

    .line 1661
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public whitelist test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1480
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1481
    .local v2, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1483
    :goto_9
    :try_start_9
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/high16 v4, 0x60000000

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_31

    if-eqz v3, :cond_2b

    .line 1484
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_23

    .line 1485
    nop

    .line 1490
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1485
    const/4 v3, 0x0

    return v3

    .line 1486
    :cond_23
    :try_start_23
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_31

    move-wide v0, v3

    goto :goto_9

    .line 1488
    :cond_2b
    nop

    .line 1490
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1488
    const/4 v3, 0x1

    return v3

    .line 1490
    :catchall_31
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1491
    throw v3
.end method

.method protected whitelist test-api beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 1988
    return-void
.end method

.method greylist-max-o ensurePrestart()V
    .registers 4

    .line 1626
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    .line 1627
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    .line 1628
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_1a

    .line 1629
    :cond_14
    if-nez v0, :cond_1a

    .line 1630
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1631
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 1353
    if-eqz p1, :cond_58

    .line 1375
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1376
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_1e

    .line 1377
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1378
    return-void

    .line 1379
    :cond_18
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1381
    :cond_1e
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1382
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1383
    .local v1, "recheck":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1384
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_4d

    .line 1385
    :cond_43
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-nez v3, :cond_4d

    .line 1386
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1387
    .end local v1    # "recheck":I
    :cond_4d
    :goto_4d
    goto :goto_57

    .line 1388
    :cond_4e
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-nez v1, :cond_57

    .line 1389
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 1390
    :cond_57
    :goto_57
    return-void

    .line 1354
    .end local v0    # "c":I
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1511
    return-void
.end method

.method public whitelist test-api getActiveCount()I
    .registers 6

    .line 1859
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1860
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1862
    const/4 v1, 0x0

    .line 1863
    .local v1, "n":I
    :try_start_6
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1864
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_26

    if-eqz v4, :cond_20

    .line 1865
    add-int/lit8 v1, v1, 0x1

    .line 1864
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_20
    goto :goto_c

    .line 1866
    :cond_21
    nop

    .line 1868
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1866
    return v1

    .line 1868
    .end local v1    # "n":I
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1869
    throw v1
.end method

.method public whitelist test-api getCompletedTaskCount()J
    .registers 8

    .line 1922
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1923
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1925
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1926
    .local v1, "n":J
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1927
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    add-long/2addr v1, v5

    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_d

    .line 1928
    :cond_1d
    nop

    .line 1930
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1928
    return-wide v1

    .line 1930
    .end local v1    # "n":J
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1931
    throw v1
.end method

.method public whitelist test-api getCorePoolSize()I
    .registers 2

    .line 1605
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public whitelist test-api getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1762
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getLargestPoolSize()I
    .registers 3

    .line 1879
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1880
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1882
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 1884
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1882
    return v1

    .line 1884
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1885
    throw v1
.end method

.method public whitelist test-api getMaximumPoolSize()I
    .registers 2

    .line 1718
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public whitelist test-api getPoolSize()I
    .registers 4

    .line 1840
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1841
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1845
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    goto :goto_1b

    .line 1846
    :cond_15
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 1848
    :goto_1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1845
    return v1

    .line 1848
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1849
    throw v1
.end method

.method public whitelist test-api getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public whitelist test-api getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 2

    .line 1556
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public whitelist test-api getTaskCount()J
    .registers 8

    .line 1897
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1898
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1900
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1901
    .local v1, "n":J
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1902
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v5

    .line 1903
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1904
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 1905
    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_25
    goto :goto_d

    .line 1906
    :cond_26
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 1908
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1906
    return-wide v3

    .line 1908
    .end local v1    # "n":J
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1909
    throw v1
.end method

.method public whitelist test-api getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 1533
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public whitelist test-api isShutdown()Z
    .registers 3

    .line 1449
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method blacklist isStopped()Z
    .registers 3

    .line 1454
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTerminated()Z
    .registers 3

    .line 1474
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTerminating()Z
    .registers 4

    .line 1469
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1470
    .local v0, "c":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-eqz v2, :cond_16

    const/high16 v2, 0x60000000

    invoke-static {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method greylist-max-o onShutdown()V
    .registers 1

    .line 860
    return-void
.end method

.method public whitelist test-api prestartAllCoreThreads()I
    .registers 4

    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, "n":I
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1644
    :cond_c
    return v0
.end method

.method public whitelist test-api prestartCoreThread()Z
    .registers 3

    .line 1617
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v0, v1, :cond_17

    .line 1618
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1617
    :goto_18
    return v1
.end method

.method public whitelist test-api purge()V
    .registers 8

    .line 1812
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1814
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1815
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1816
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1817
    .local v2, "r":Ljava/lang/Runnable;
    instance-of v3, v2, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_22

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1818
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_22} :catch_24

    .line 1819
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_22
    goto :goto_6

    .line 1827
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_23
    goto :goto_42

    .line 1820
    :catch_24
    move-exception v1

    .line 1824
    .local v1, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 1825
    .local v5, "r":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/concurrent/Future;

    if-eqz v6, :cond_3f

    move-object v6, v5

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1826
    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1824
    .end local v5    # "r":Ljava/lang/Object;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1829
    .end local v1    # "fallThrough":Ljava/util/ConcurrentModificationException;
    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1830
    return-void
.end method

.method final greylist-max-o reject(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 851
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 852
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1796
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1797
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1798
    return v0
.end method

.method final greylist-max-o runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 10
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1137
    .local v0, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1138
    .local v1, "task":Ljava/lang/Runnable;
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1139
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1140
    const/4 v3, 0x1

    .line 1142
    .local v3, "completedAbruptly":Z
    :goto_d
    if-nez v1, :cond_1d

    :try_start_f
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_71

    move-object v1, v4

    if-eqz v4, :cond_17

    goto :goto_1d

    .line 1168
    :cond_17
    const/4 v2, 0x0

    .line 1170
    .end local v3    # "completedAbruptly":Z
    .local v2, "completedAbruptly":Z
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1171
    nop

    .line 1172
    return-void

    .line 1143
    .end local v2    # "completedAbruptly":Z
    .restart local v3    # "completedAbruptly":Z
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    .line 1148
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/high16 v5, 0x20000000

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1149
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1150
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1151
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_49

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_71

    .line 1154
    :cond_49
    const-wide/16 v4, 0x1

    :try_start_4b
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_65

    .line 1156
    :try_start_4e
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1157
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_5f

    .line 1161
    nop

    .line 1163
    const/4 v1, 0x0

    .line 1164
    :try_start_56
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v4

    iput-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1165
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_71

    .line 1166
    goto :goto_d

    .line 1158
    :catchall_5f
    move-exception v2

    .line 1159
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_60
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 1160
    nop

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v3    # "completedAbruptly":Z
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v2
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_65

    .line 1163
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v3    # "completedAbruptly":Z
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_65
    move-exception v2

    const/4 v1, 0x0

    .line 1164
    :try_start_67
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v4

    iput-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1165
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1166
    nop

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v3    # "completedAbruptly":Z
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v2
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_71

    .line 1170
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v3    # "completedAbruptly":Z
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_71
    move-exception v2

    invoke-direct {p0, p1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1171
    throw v2
.end method

.method public whitelist test-api setCorePoolSize(I)V
    .registers 6
    .param p1, "corePoolSize"    # I

    .line 1578
    if-ltz p1, :cond_3c

    .line 1581
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v0

    .line 1582
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1583
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    if-le v1, p1, :cond_18

    .line 1584
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    goto :goto_3b

    .line 1585
    :cond_18
    if-lez v0, :cond_3b

    .line 1590
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1591
    .local v1, "k":I
    :goto_24
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "k":I
    .local v2, "k":I
    if-lez v1, :cond_3b

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1592
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1593
    goto :goto_3b

    .line 1592
    :cond_39
    move v1, v2

    goto :goto_24

    .line 1596
    .end local v2    # "k":I
    :cond_3b
    :goto_3b
    return-void

    .line 1580
    .end local v0    # "delta":I
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1738
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2b

    .line 1740
    cmp-long v2, p1, v0

    if-nez v2, :cond_19

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_19

    .line 1741
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1742
    :cond_19
    :goto_19
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1743
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v4, v2, v4

    .line 1744
    .local v4, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1745
    cmp-long v0, v4, v0

    if-gez v0, :cond_2a

    .line 1746
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1747
    :cond_2a
    return-void

    .line 1739
    .end local v2    # "keepAliveTime":J
    .end local v4    # "delta":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMaximumPoolSize(I)V
    .registers 3
    .param p1, "maximumPoolSize"    # I

    .line 1704
    if-lez p1, :cond_18

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-lt p1, v0, :cond_18

    .line 1706
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1707
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_17

    .line 1708
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1709
    :cond_17
    return-void

    .line 1705
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1544
    if-eqz p1, :cond_5

    .line 1546
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1547
    return-void

    .line 1545
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1521
    if-eqz p1, :cond_5

    .line 1523
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1524
    return-void

    .line 1522
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api shutdown()V
    .registers 3

    .line 1403
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1404
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1406
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1407
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1408
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1409
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    .line 1411
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1412
    nop

    .line 1413
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1414
    return-void

    .line 1411
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1412
    throw v1
.end method

.method public whitelist test-api shutdownNow()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1435
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1437
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1438
    const/high16 v1, 0x20000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1439
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    .line 1440
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1c

    .line 1442
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1443
    nop

    .line 1444
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1445
    return-object v1

    .line 1442
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1443
    throw v1
.end method

.method protected whitelist test-api terminated()V
    .registers 1

    .line 2047
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1944
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1945
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1947
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1948
    .local v1, "ncompleted":J
    const/4 v3, 0x0

    .line 1949
    .local v3, "nactive":I
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 1950
    .local v4, "nworkers":I
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1951
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v7, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v7

    .line 1952
    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v7
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_9d

    if-eqz v7, :cond_2b

    .line 1953
    add-int/lit8 v3, v3, 0x1

    .line 1954
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2b
    goto :goto_14

    .line 1956
    :cond_2c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1957
    nop

    .line 1958
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 1960
    .local v5, "c":I
    invoke-static {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "Running"

    goto :goto_4c

    .line 1961
    :cond_3f
    const/high16 v6, 0x60000000

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string v6, "Terminated"

    goto :goto_4c

    .line 1962
    :cond_4a
    const-string v6, "Shutting down"

    :goto_4c
    nop

    .line 1963
    .local v6, "runState":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pool size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active threads = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", queued tasks = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1967
    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", completed tasks = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1963
    return-object v7

    .line 1956
    .end local v1    # "ncompleted":J
    .end local v3    # "nactive":I
    .end local v4    # "nworkers":I
    .end local v5    # "c":I
    .end local v6    # "runState":Ljava/lang/String;
    :catchall_9d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1957
    throw v1
.end method

.method final greylist-max-o tryTerminate()V
    .registers 7

    .line 726
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 727
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_76

    .line 728
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_76

    .line 729
    const/high16 v2, 0x20000000

    invoke-static {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_76

    .line 731
    :cond_26
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_31

    .line 732
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 733
    return-void

    .line 736
    :cond_31
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 737
    .local v2, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 739
    :try_start_36
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_71

    if-eqz v1, :cond_6c

    .line 741
    const/high16 v1, 0x60000000

    :try_start_45
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5b

    .line 743
    :try_start_48
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 744
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_71

    .line 747
    nop

    .line 751
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 748
    return-void

    .line 743
    :catchall_5b
    move-exception v3

    :try_start_5c
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 744
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 747
    nop

    .end local v0    # "c":I
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    throw v3
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_71

    .line 751
    .restart local v0    # "c":I
    .restart local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_6c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 752
    nop

    .line 754
    .end local v0    # "c":I
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    goto :goto_1

    .line 751
    .restart local v0    # "c":I
    .restart local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_71
    move-exception v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 752
    throw v1

    .line 730
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_76
    :goto_76
    return-void
.end method
