.class public Ljava/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;,
        Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;,
        Ljava/util/concurrent/Executors$DelegatedExecutorService;,
        Ljava/util/concurrent/Executors$DefaultThreadFactory;,
        Ljava/util/concurrent/Executors$PrivilegedThreadFactory;,
        Ljava/util/concurrent/Executors$RunnableAdapter;,
        Ljava/util/concurrent/Executors$PrivilegedCallable;,
        Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;
    .registers 3
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 441
    if-eqz p0, :cond_9

    .line 443
    new-instance v0, Ljava/util/concurrent/Executors$RunnableAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0

    .line 442
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .registers 3
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 428
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_8

    .line 430
    new-instance v0, Ljava/util/concurrent/Executors$RunnableAdapter;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0

    .line 429
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api callable(Ljava/security/PrivilegedAction;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivilegedAction<",
            "*>;)",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 454
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    if-eqz p0, :cond_8

    .line 456
    new-instance v0, Ljava/util/concurrent/Executors$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$1;-><init>(Ljava/security/PrivilegedAction;)V

    return-object v0

    .line 455
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api callable(Ljava/security/PrivilegedExceptionAction;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivilegedExceptionAction<",
            "*>;)",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 469
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<*>;"
    if-eqz p0, :cond_8

    .line 471
    new-instance v0, Ljava/util/concurrent/Executors$2;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$2;-><init>(Ljava/security/PrivilegedExceptionAction;)V

    return-object v0

    .line 470
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 397
    new-instance v0, Ljava/util/concurrent/Executors$DefaultThreadFactory;

    invoke-direct {v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 7

    .line 222
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public static whitelist test-api newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .registers 9
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 238
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v7, p0

    .end local p0    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static whitelist test-api newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 8
    .param p0, "nThreads"    # I

    .line 99
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, p0

    move v1, p0

    .end local p0    # "nThreads":I
    .local v1, "nThreads":I
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public static whitelist test-api newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .registers 10
    .param p0, "nThreads"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 162
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, p0

    move v1, p0

    move-object v7, p1

    .end local p0    # "nThreads":I
    .end local p1    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v1, "nThreads":I
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static whitelist test-api newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "corePoolSize"    # I

    .line 331
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-object v0
.end method

.method public static whitelist test-api newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3
    .param p0, "corePoolSize"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 347
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static whitelist test-api newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 182
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .registers 10
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 198
    new-instance v0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v8, p0

    .end local p0    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v8, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static whitelist test-api newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 297
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static whitelist test-api newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 318
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static whitelist test-api newWorkStealingPool()Ljava/util/concurrent/ExecutorService;
    .registers 5

    .line 136
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    .line 137
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 136
    return-object v0
.end method

.method public static whitelist test-api newWorkStealingPool(I)Ljava/util/concurrent/ExecutorService;
    .registers 5
    .param p0, "parallelism"    # I

    .line 120
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-object v0
.end method

.method public static whitelist test-api privilegedCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "17"
    .end annotation

    .line 488
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz p0, :cond_8

    .line 490
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0

    .line 489
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api privilegedCallableUsingCurrentClassLoader(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "17"
    .end annotation

    .line 506
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz p0, :cond_8

    .line 508
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0

    .line 507
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api privilegedThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "17"
    .end annotation

    .line 413
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    invoke-direct {v0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 361
    if-eqz p0, :cond_8

    .line 363
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedExecutorService;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    .line 362
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 377
    if-eqz p0, :cond_8

    .line 379
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    .line 378
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
