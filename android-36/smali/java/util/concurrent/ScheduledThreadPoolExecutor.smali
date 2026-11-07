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
.field private static final greylist-max-o DEFAULT_KEEPALIVE_MILLIS:J = 0xaL

.field public static final blacklist STPE_SKIP_MULTIPLE_MISSED_PERIODIC_TASKS:J = 0x11387534L

.field private static final greylist-max-o sequencer:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile greylist-max-o continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile greylist-max-o executeExistingDelayedTasksAfterShutdown:Z

.field volatile greylist-max-o removeOnCancel:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 9
    .param p1, "corePoolSize"    # I

    .line 502
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    .end local p1    # "corePoolSize":I
    .local v1, "corePoolSize":I
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 203
    const/4 p1, 0x1

    iput-boolean p1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 505
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/RejectedExecutionHandler;)V
    .registers 11
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 538
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .end local p1    # "corePoolSize":I
    .end local p2    # "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    .local v1, "corePoolSize":I
    .local v7, "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 203
    const/4 p1, 0x1

    iput-boolean p1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 541
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 11
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 520
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .end local p1    # "corePoolSize":I
    .end local p2    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v1, "corePoolSize":I
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 203
    const/4 p1, 0x1

    iput-boolean p1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 523
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 13
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 560
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "corePoolSize":I
    .end local p2    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local p3    # "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    .local v1, "corePoolSize":I
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v8, "handler":Ljava/util/concurrent/RejectedExecutionHandler;
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 203
    const/4 p1, 0x1

    iput-boolean p1, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 563
    return-void
.end method

.method private greylist-max-o delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 385
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 386
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 388
    :cond_a
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Ljava/util/concurrent/RunnableScheduledFuture;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 390
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    goto :goto_25

    .line 392
    :cond_22
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    .line 394
    :goto_25
    return-void
.end method

.method private greylist-max-o overflowFree(J)J
    .registers 10
    .param p1, "delay"    # J

    .line 588
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 589
    .local v0, "head":Ljava/util/concurrent/Delayed;
    if-eqz v0, :cond_25

    .line 590
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 591
    .local v1, "headDelay":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_25

    sub-long v5, p1, v1

    cmp-long v3, v5, v3

    if-gez v3, :cond_25

    .line 592
    const-wide v3, 0x7fffffffffffffffL

    add-long p1, v1, v3

    .line 594
    .end local v1    # "headDelay":J
    :cond_25
    return-wide p1
.end method

.method public static blacklist skipMultipleMissedPeriodicTasks()Z
    .registers 2

    .line 163
    const-wide/32 v0, 0x11387534

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 165
    invoke-static {}, Lcom/android/libcore/Flags;->scheduleAtFixedRateNewBehavior()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 163
    :goto_13
    return v0
.end method

.method private greylist-max-o triggerTime(JLjava/util/concurrent/TimeUnit;)J
    .registers 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method blacklist canRunInCurrentRunState(Ljava/util/concurrent/RunnableScheduledFuture;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)Z"
        }
    .end annotation

    .line 361
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 362
    const/4 v0, 0x1

    return v0

    .line 363
    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 364
    const/4 v0, 0x0

    return v0

    .line 365
    :cond_10
    invoke-interface {p1}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 366
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    goto :goto_1b

    .line 367
    :cond_19
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 365
    :goto_1b
    return v0
.end method

.method protected whitelist test-api decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 457
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method protected whitelist test-api decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 474
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    return-object p2
.end method

.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 760
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 761
    return-void
.end method

.method public whitelist test-api getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .registers 2

    .line 816
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    return v0
.end method

.method public whitelist test-api getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .registers 2

    .line 848
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    return v0
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

    .line 945
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRemoveOnCancelPolicy()Z
    .registers 2

    .line 875
    iget-boolean v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method greylist-max-o onShutdown()V
    .registers 11

    .line 418
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 419
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    nop

    .line 420
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    move-result v1

    .line 421
    .local v1, "keepDelayed":Z
    nop

    .line 422
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v2

    .line 426
    .local v2, "keepPeriodic":Z
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    if-ge v6, v4, :cond_3d

    aget-object v7, v3, v6

    .line 427
    .local v7, "e":Ljava/lang/Object;
    instance-of v8, v7, Ljava/util/concurrent/RunnableScheduledFuture;

    if-eqz v8, :cond_3a

    .line 428
    move-object v8, v7

    check-cast v8, Ljava/util/concurrent/RunnableScheduledFuture;

    .line 429
    .local v8, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {v8}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_29

    if-nez v2, :cond_2b

    goto :goto_31

    :cond_29
    if-eqz v1, :cond_31

    .line 434
    :cond_2b
    invoke-interface {v8}, Ljava/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 435
    :cond_31
    :goto_31
    invoke-interface {v0, v8}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 436
    invoke-interface {v8, v5}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 426
    .end local v7    # "e":Ljava/lang/Object;
    .end local v8    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 440
    :cond_3d
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    .line 441
    return-void
.end method

.method greylist-max-o reExecutePeriodic(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 403
    .local p1, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Ljava/util/concurrent/RunnableScheduledFuture;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 404
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Ljava/util/concurrent/RunnableScheduledFuture;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 406
    :cond_19
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->ensurePrestart()V

    .line 407
    return-void

    .line 410
    :cond_1d
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 411
    return-void
.end method

.method public whitelist test-api schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 13
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
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 604
    if-eqz p1, :cond_1e

    if-eqz p4, :cond_1e

    .line 606
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 608
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 609
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "command":Ljava/lang/Runnable;
    .local v2, "command":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    .line 606
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object p1

    .line 610
    .local p1, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 611
    return-object p1

    .line 604
    .end local v2    # "command":Ljava/lang/Runnable;
    .local p1, "command":Ljava/lang/Runnable;
    :cond_1e
    move-object v1, p0

    move-object v2, p1

    .line 605
    .end local p1    # "command":Ljava/lang/Runnable;
    .restart local v2    # "command":Ljava/lang/Runnable;
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist test-api schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 12
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 621
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_1d

    if-eqz p4, :cond_1d

    .line 623
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 625
    invoke-direct {p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 626
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local v2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/Callable;JJ)V

    .line 623
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object p1

    .line 627
    .local p1, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 628
    return-object p1

    .line 621
    .end local v2    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :cond_1d
    move-object v1, p0

    move-object v2, p1

    .line 622
    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .restart local v2    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 22
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
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 675
    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    if-eqz p1, :cond_3b

    if-eqz v12, :cond_3b

    .line 677
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_31

    .line 679
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 682
    move-wide/from16 v13, p2

    invoke-direct {p0, v13, v14, v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 683
    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 684
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJJ)V

    .line 685
    .local v0, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v3

    .line 686
    .local v3, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v3, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 687
    invoke-direct {p0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 688
    return-object v3

    .line 678
    .end local v0    # "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    .end local v3    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    :cond_31
    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 675
    :cond_3b
    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 22
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
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 723
    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    if-eqz p1, :cond_3c

    if-eqz v12, :cond_3c

    .line 725
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_32

    .line 727
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .line 730
    move-wide/from16 v13, p2

    invoke-direct {p0, v13, v14, v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->triggerTime(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 731
    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    neg-long v6, v1

    sget-object v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ljava/util/concurrent/atomic/AtomicLong;

    .line 732
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJJ)V

    .line 733
    .local v0, "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v3

    .line 734
    .local v3, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    iput-object v3, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->outerTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 735
    invoke-direct {p0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ljava/util/concurrent/RunnableScheduledFuture;)V

    .line 736
    return-object v3

    .line 726
    .end local v0    # "sft":Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;, "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask<Ljava/lang/Void;>;"
    .end local v3    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<Ljava/lang/Void;>;"
    :cond_32
    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 723
    :cond_3c
    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 800
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    .line 801
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 802
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 803
    :cond_d
    return-void
.end method

.method public whitelist test-api setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 831
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 832
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 833
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 834
    :cond_d
    return-void
.end method

.method public whitelist test-api setRemoveOnCancelPolicy(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 861
    iput-boolean p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 862
    return-void
.end method

.method public whitelist test-api shutdown()V
    .registers 1

    .line 896
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 897
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

    .line 924
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 770
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 778
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 786
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o triggerTime(J)J
    .registers 7
    .param p1, "delay"    # J

    .line 576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 577
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    move-wide v2, p1

    goto :goto_13

    :cond_f
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->overflowFree(J)J

    move-result-wide v2

    :goto_13
    add-long/2addr v0, v2

    .line 576
    return-wide v0
.end method
