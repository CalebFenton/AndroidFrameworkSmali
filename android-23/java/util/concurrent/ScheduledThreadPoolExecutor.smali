.class public Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEEPALIVE_MILLIS:J = 0xaL

.field private static final sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z

.field private volatile removeOnCancel:Z


# direct methods
.method static synthetic -get0(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@2
    return v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    #@0
    sget-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@5
    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@7
    .line 95
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "corePoolSize"    # I

    #@0
    .prologue
    .line 421
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 422
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 420
    const v3, 0x7fffffff

    #@a
    .line 421
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    .line 420
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@11
    .line 134
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@14
    .line 139
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@17
    .line 419
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 457
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 458
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 456
    const v3, 0x7fffffff

    #@a
    .line 457
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    move-object v8, p2

    #@f
    .line 456
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@12
    .line 134
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@15
    .line 139
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@18
    .line 455
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 439
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 440
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 438
    const v3, 0x7fffffff

    #@a
    .line 439
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    move-object v8, p2

    #@f
    .line 438
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@12
    .line 134
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@15
    .line 139
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@18
    .line 437
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 479
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 480
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 478
    const v3, 0x7fffffff

    #@a
    .line 479
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    move-object v8, p2

    #@f
    move-object v9, p3

    #@10
    .line 478
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@13
    .line 134
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@16
    .line 139
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@19
    .line 477
    return-void
.end method

.method private delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 301
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 302
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@9
    .line 300
    :goto_0
    return-void

    #@a
    .line 304
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@11
    .line 305
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 306
    invoke-interface {p1}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 310
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    #@24
    goto :goto_0

    #@25
    .line 307
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    #@28
    move-result v0

    #@29
    .line 305
    if-eqz v0, :cond_1

    #@2b
    .line 308
    const/4 v0, 0x0

    #@2c
    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@2f
    goto :goto_0
.end method

.method private overflowFree(J)J
    .locals 9
    .param p1, "delay"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 506
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/concurrent/Delayed;

    #@c
    .line 507
    .local v0, "head":Ljava/util/concurrent/Delayed;
    if-eqz v0, :cond_0

    #@e
    .line 508
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@13
    move-result-wide v2

    #@14
    .line 509
    .local v2, "headDelay":J
    cmp-long v1, v2, v6

    #@16
    if-gez v1, :cond_0

    #@18
    sub-long v4, p1, v2

    #@1a
    cmp-long v1, v4, v6

    #@1c
    if-gez v1, :cond_0

    #@1e
    .line 510
    const-wide v4, 0x7fffffffffffffffL

    #@23
    add-long p1, v4, v2

    #@25
    .line 512
    .end local v2    # "headDelay":J
    :cond_0
    return-wide p1
.end method

.method private triggerTime(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 487
    cmp-long v2, p1, v0

    #@4
    if-gez v2, :cond_0

    #@6
    move-wide p1, v0

    #@7
    .end local p1    # "delay":J
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@a
    move-result-wide v0

    #@b
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method


# virtual methods
.method canRunInCurrentRunState(Z)Z
    .locals 1
    .param p1, "periodic"    # Z

    #@0
    .prologue
    .line 284
    if-eqz p1, :cond_0

    #@2
    .line 285
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@4
    .line 284
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isRunningOrShutdown(Z)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 286
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@b
    goto :goto_0
.end method

.method protected decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method protected decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 616
    const-wide/16 v0, 0x0

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@7
    .line 615
    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .locals 1

    #@0
    .prologue
    .line 674
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@2
    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .locals 1

    #@0
    .prologue
    .line 706
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@2
    return v0
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
    .line 798
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRemoveOnCancelPolicy()Z
    .locals 1

    #@0
    .prologue
    .line 733
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@2
    return v0
.end method

.method final now()J
    .locals 2

    #@0
    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method onShutdown()V
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 335
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@4
    move-result-object v3

    #@5
    .line 337
    .local v3, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    #@8
    move-result v1

    #@9
    .line 339
    .local v1, "keepDelayed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    #@c
    move-result v2

    #@d
    .line 340
    .local v2, "keepPeriodic":Z
    if-nez v1, :cond_0

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 348
    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    #@14
    move-result-object v7

    #@15
    array-length v8, v7

    #@16
    move v5, v6

    #@17
    :goto_0
    if-ge v5, v8, :cond_6

    #@19
    aget-object v0, v7, v5

    #@1b
    .line 349
    .local v0, "e":Ljava/lang/Object;
    instance-of v9, v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@1d
    if-eqz v9, :cond_2

    #@1f
    move-object v4, v0

    #@20
    .line 351
    check-cast v4, Ljava/util/concurrent/RunnableScheduledFuture;

    #@22
    .line 352
    .local v4, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {v4}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_7

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 353
    :goto_1
    invoke-interface {v4}, Ljava/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    #@2d
    move-result v9

    #@2e
    .line 352
    if-eqz v9, :cond_2

    #@30
    .line 354
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_2

    #@36
    .line 355
    invoke-interface {v4, v6}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@39
    .line 348
    .end local v4    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 341
    .end local v0    # "e":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    #@3f
    move-result-object v7

    #@40
    array-length v8, v7

    #@41
    move v5, v6

    #@42
    :goto_2
    if-ge v5, v8, :cond_5

    #@44
    aget-object v0, v7, v5

    #@46
    .line 342
    .restart local v0    # "e":Ljava/lang/Object;
    instance-of v9, v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@48
    if-eqz v9, :cond_4

    #@4a
    .line 343
    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@4c
    .end local v0    # "e":Ljava/lang/Object;
    invoke-interface {v0, v6}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@4f
    .line 341
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_2

    #@52
    .line 344
    :cond_5
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    #@55
    .line 360
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    #@58
    .line 334
    return-void

    #@59
    .line 352
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v4    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_7
    if-eqz v1, :cond_1

    #@5b
    goto :goto_1
.end method

.method reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    const/4 v1, 0x1

    #@1
    .line 321
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 322
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@e
    .line 323
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 324
    const/4 v0, 0x0

    #@1b
    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@1e
    .line 320
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 326
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    #@22
    goto :goto_0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 522
    if-eqz p1, :cond_0

    #@3
    if-nez p4, :cond_1

    #@5
    .line 523
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 525
    :cond_1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@d
    .line 526
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@10
    move-result-wide v4

    #@11
    move-object v1, p0

    #@12
    move-object v2, p1

    #@13
    .line 525
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    #@16
    .line 524
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@19
    move-result-object v6

    #@1a
    .line 527
    .local v6, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    invoke-direct {p0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@1d
    .line 528
    return-object v6
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 538
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p4, :cond_1

    #@4
    .line 539
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 541
    :cond_1
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@c
    .line 542
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@f
    move-result-wide v2

    #@10
    .line 541
    invoke-direct {v1, p0, p1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;J)V

    #@13
    .line 540
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@16
    move-result-object v0

    #@17
    .line 543
    .local v0, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@1a
    .line 544
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 14
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 556
    if-eqz p1, :cond_0

    #@3
    if-nez p6, :cond_1

    #@5
    .line 557
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v5

    #@b
    .line 558
    :cond_1
    const-wide/16 v8, 0x0

    #@d
    cmp-long v5, p4, v8

    #@f
    if-gtz v5, :cond_2

    #@11
    .line 559
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@13
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@16
    throw v5

    #@17
    .line 561
    :cond_2
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@19
    .line 563
    move-wide/from16 v0, p2

    #@1b
    move-object/from16 v2, p6

    #@1d
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@20
    move-result-wide v8

    #@21
    .line 564
    move-object/from16 v0, p6

    #@23
    move-wide/from16 v1, p4

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@28
    move-result-wide v10

    #@29
    move-object v5, p0

    #@2a
    move-object v6, p1

    #@2b
    .line 561
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    #@2e
    .line 565
    .local v4, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@31
    move-result-object v12

    #@32
    .line 566
    .local v12, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v12, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@34
    .line 567
    invoke-direct {p0, v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@37
    .line 568
    return-object v12
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 12
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 580
    if-eqz p1, :cond_0

    #@3
    if-nez p6, :cond_1

    #@5
    .line 581
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3

    #@b
    .line 582
    :cond_1
    const-wide/16 v6, 0x0

    #@d
    cmp-long v3, p4, v6

    #@f
    if-gtz v3, :cond_2

    #@11
    .line 583
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@16
    throw v3

    #@17
    .line 585
    :cond_2
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@19
    .line 587
    move-object/from16 v0, p6

    #@1b
    invoke-direct {p0, p2, p3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@1e
    move-result-wide v6

    #@1f
    .line 588
    move-wide/from16 v0, p4

    #@21
    neg-long v8, v0

    #@22
    move-object/from16 v0, p6

    #@24
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@27
    move-result-wide v8

    #@28
    move-object v3, p0

    #@29
    move-object v4, p1

    #@2a
    .line 585
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    #@2d
    .line 589
    .local v2, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@30
    move-result-object v10

    #@31
    .line 590
    .local v10, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v10, v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@33
    .line 591
    invoke-direct {p0, v10}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@36
    .line 592
    return-object v10
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 657
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@2
    .line 658
    if-nez p1, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 659
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    #@d
    .line 656
    :cond_0
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 689
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@2
    .line 690
    if-nez p1, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 691
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    #@d
    .line 688
    :cond_0
    return-void
.end method

.method public setRemoveOnCancelPolicy(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 719
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@2
    .line 718
    return-void
.end method

.method public shutdown()V
    .locals 0

    #@0
    .prologue
    .line 754
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    #@3
    .line 753
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
    .line 781
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 626
    const-wide/16 v0, 0x0

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 634
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    #@3
    move-result-object v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@8
    invoke-virtual {p0, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 642
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-wide/16 v0, 0x0

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method triggerTime(J)J
    .locals 5
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 494
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    #@3
    move-result-wide v0

    #@4
    .line 495
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    #@9
    cmp-long v2, p1, v2

    #@b
    if-gez v2, :cond_0

    #@d
    .line 494
    .end local p1    # "delay":J
    :goto_0
    add-long/2addr v0, p1

    #@e
    return-wide v0

    #@f
    .line 495
    .restart local p1    # "delay":J
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->overflowFree(J)J

    #@12
    move-result-wide p1

    #@13
    goto :goto_0
.end method
