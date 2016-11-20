.class public Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;,
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEEPALIVE_MILLIS:J = 0xaL

.field private static final sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z

.field volatile removeOnCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@5
    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@7
    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "corePoolSize"    # I

    #@0
    .prologue
    .line 426
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 427
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 425
    const v3, 0x7fffffff

    #@a
    .line 426
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    .line 425
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@11
    .line 139
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@14
    .line 424
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 462
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 463
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 461
    const v3, 0x7fffffff

    #@a
    .line 462
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    move-object v8, p2

    #@f
    .line 461
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@12
    .line 139
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@15
    .line 460
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 444
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 445
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 443
    const v3, 0x7fffffff

    #@a
    .line 444
    const-wide/16 v4, 0xa

    #@c
    move-object v1, p0

    #@d
    move v2, p1

    #@e
    move-object v8, p2

    #@f
    .line 443
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@12
    .line 139
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@15
    .line 442
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    #@0
    .prologue
    .line 484
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@2
    .line 485
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@4
    invoke-direct {v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    #@7
    .line 483
    const v3, 0x7fffffff

    #@a
    .line 484
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
    .line 483
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    #@13
    .line 139
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@16
    .line 482
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
    .line 304
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 305
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    #@9
    .line 303
    :goto_0
    return-void

    #@a
    .line 307
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@11
    .line 308
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 309
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
    .line 313
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    #@24
    goto :goto_0

    #@25
    .line 310
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    #@28
    move-result v0

    #@29
    .line 308
    if-eqz v0, :cond_1

    #@2b
    .line 311
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
    .line 511
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
    .line 512
    .local v0, "head":Ljava/util/concurrent/Delayed;
    if-eqz v0, :cond_0

    #@e
    .line 513
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    #@13
    move-result-wide v2

    #@14
    .line 514
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
    .line 515
    const-wide v4, 0x7fffffffffffffffL

    #@23
    add-long p1, v4, v2

    #@25
    .line 517
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
    .line 492
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
    .line 287
    if-eqz p1, :cond_0

    #@2
    .line 288
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@4
    .line 287
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isRunningOrShutdown(Z)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 289
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
    .line 380
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
    .line 397
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 625
    const-wide/16 v0, 0x0

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@7
    .line 624
    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .locals 1

    #@0
    .prologue
    .line 683
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@2
    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .locals 1

    #@0
    .prologue
    .line 715
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
    .line 812
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
    .line 742
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@2
    return v0
.end method

.method onShutdown()V
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 338
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@4
    move-result-object v3

    #@5
    .line 340
    .local v3, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    #@8
    move-result v1

    #@9
    .line 342
    .local v1, "keepDelayed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    #@c
    move-result v2

    #@d
    .line 343
    .local v2, "keepPeriodic":Z
    if-nez v1, :cond_0

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 351
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
    .line 352
    .local v0, "e":Ljava/lang/Object;
    instance-of v9, v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@1d
    if-eqz v9, :cond_2

    #@1f
    move-object v4, v0

    #@20
    .line 354
    check-cast v4, Ljava/util/concurrent/RunnableScheduledFuture;

    #@22
    .line 355
    .local v4, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {v4}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_7

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 356
    :goto_1
    invoke-interface {v4}, Ljava/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    #@2d
    move-result v9

    #@2e
    .line 355
    if-eqz v9, :cond_2

    #@30
    .line 357
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_2

    #@36
    .line 358
    invoke-interface {v4, v6}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@39
    .line 351
    .end local v4    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 344
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
    .line 345
    .restart local v0    # "e":Ljava/lang/Object;
    instance-of v9, v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@48
    if-eqz v9, :cond_4

    #@4a
    .line 346
    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    #@4c
    .end local v0    # "e":Ljava/lang/Object;
    invoke-interface {v0, v6}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@4f
    .line 344
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_2

    #@52
    .line 347
    :cond_5
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    #@55
    .line 363
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    #@58
    .line 337
    return-void

    #@59
    .line 355
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
    .line 324
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 325
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@e
    .line 326
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
    .line 327
    const/4 v0, 0x0

    #@1b
    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    #@1e
    .line 323
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 329
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    #@22
    goto :goto_0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
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
    .line 527
    if-eqz p1, :cond_0

    #@3
    if-nez p4, :cond_1

    #@5
    .line 528
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 530
    :cond_1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@d
    .line 531
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@10
    move-result-wide v4

    #@11
    .line 532
    sget-object v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@16
    move-result-wide v6

    #@17
    move-object v1, p0

    #@18
    move-object v2, p1

    #@19
    .line 530
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    #@1c
    .line 529
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@1f
    move-result-object v8

    #@20
    .line 533
    .local v8, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    invoke-direct {p0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@23
    .line 534
    return-object v8
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
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
    .line 544
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p4, :cond_1

    #@4
    .line 545
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 547
    :cond_1
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@c
    .line 548
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@f
    move-result-wide v4

    #@10
    .line 549
    sget-object v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@15
    move-result-wide v6

    #@16
    move-object v2, p0

    #@17
    move-object v3, p1

    #@18
    .line 547
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;JJ)V

    #@1b
    .line 546
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@1e
    move-result-object v0

    #@1f
    .line 550
    .local v0, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@22
    .line 551
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 16
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
    .line 563
    if-eqz p1, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 564
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v5

    #@a
    .line 565
    :cond_1
    const-wide/16 v6, 0x0

    #@c
    cmp-long v5, p4, v6

    #@e
    if-gtz v5, :cond_2

    #@10
    .line 566
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v5

    #@16
    .line 568
    :cond_2
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@18
    .line 570
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, p2

    #@1c
    move-object/from16 v3, p6

    #@1e
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@21
    move-result-wide v8

    #@22
    .line 571
    move-object/from16 v0, p6

    #@24
    move-wide/from16 v1, p4

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@29
    move-result-wide v10

    #@2a
    .line 572
    sget-object v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@2c
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@2f
    move-result-wide v12

    #@30
    .line 569
    const/4 v7, 0x0

    #@31
    move-object/from16 v5, p0

    #@33
    move-object/from16 v6, p1

    #@35
    .line 568
    invoke-direct/range {v4 .. v13}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJJ)V

    #@38
    .line 573
    .local v4, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    #@3a
    move-object/from16 v1, p1

    #@3c
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@3f
    move-result-object v14

    #@40
    .line 574
    .local v14, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v14, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@42
    .line 575
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@47
    .line 576
    return-object v14
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 16
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
    .line 588
    if-eqz p1, :cond_0

    #@2
    if-nez p6, :cond_1

    #@4
    .line 589
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v5

    #@a
    .line 590
    :cond_1
    const-wide/16 v6, 0x0

    #@c
    cmp-long v5, p4, v6

    #@e
    if-gtz v5, :cond_2

    #@10
    .line 591
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v5

    #@16
    .line 593
    :cond_2
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    #@18
    .line 595
    move-object/from16 v0, p0

    #@1a
    move-wide/from16 v1, p2

    #@1c
    move-object/from16 v3, p6

    #@1e
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    #@21
    move-result-wide v8

    #@22
    .line 596
    move-object/from16 v0, p6

    #@24
    move-wide/from16 v1, p4

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@29
    move-result-wide v6

    #@2a
    neg-long v10, v6

    #@2b
    .line 597
    sget-object v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    #@2d
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    #@30
    move-result-wide v12

    #@31
    .line 594
    const/4 v7, 0x0

    #@32
    move-object/from16 v5, p0

    #@34
    move-object/from16 v6, p1

    #@36
    .line 593
    invoke-direct/range {v4 .. v13}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJJ)V

    #@39
    .line 598
    .local v4, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    #@3b
    move-object/from16 v1, p1

    #@3d
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    #@40
    move-result-object v14

    #@41
    .line 599
    .local v14, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v14, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    #@43
    .line 600
    move-object/from16 v0, p0

    #@45
    invoke-direct {v0, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    #@48
    .line 601
    return-object v14
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 666
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    #@2
    .line 667
    if-nez p1, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 668
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    #@d
    .line 665
    :cond_0
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 698
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    #@2
    .line 699
    if-nez p1, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 700
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    #@d
    .line 697
    :cond_0
    return-void
.end method

.method public setRemoveOnCancelPolicy(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 728
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    #@2
    .line 727
    return-void
.end method

.method public shutdown()V
    .locals 0

    #@0
    .prologue
    .line 763
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    #@3
    .line 762
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
    .line 791
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
    .line 635
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
    .line 643
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
    .line 651
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
    .line 499
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    .line 500
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    #@9
    cmp-long v2, p1, v2

    #@b
    if-gez v2, :cond_0

    #@d
    .line 499
    .end local p1    # "delay":J
    :goto_0
    add-long/2addr v0, p1

    #@e
    return-wide v0

    #@f
    .line 500
    .restart local p1    # "delay":J
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->overflowFree(J)J

    #@12
    move-result-wide p1

    #@13
    goto :goto_0
.end method
