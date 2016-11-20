.class public Ljava/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Executors$DefaultThreadFactory;,
        Ljava/util/concurrent/Executors$DelegatedExecutorService;,
        Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;,
        Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;,
        Ljava/util/concurrent/Executors$PrivilegedCallable;,
        Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;,
        Ljava/util/concurrent/Executors$PrivilegedThreadFactory;,
        Ljava/util/concurrent/Executors$RunnableAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 363
    if-nez p0, :cond_0

    #@3
    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 365
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$RunnableAdapter;

    #@b
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@e
    return-object v0
.end method

.method public static callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 352
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$RunnableAdapter;

    #@a
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@d
    return-object v0
.end method

.method public static callable(Ljava/security/PrivilegedAction;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivilegedAction",
            "<*>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    if-nez p0, :cond_0

    #@2
    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 378
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$1;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$1;-><init>(Ljava/security/PrivilegedAction;)V

    #@d
    return-object v0
.end method

.method public static callable(Ljava/security/PrivilegedExceptionAction;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivilegedExceptionAction",
            "<*>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 391
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<*>;"
    if-nez p0, :cond_0

    #@2
    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 393
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$2;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$2;-><init>(Ljava/security/PrivilegedExceptionAction;)V

    #@d
    return-object v0
.end method

.method public static defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 328
    new-instance v0, Ljava/util/concurrent/Executors$DefaultThreadFactory;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    #@5
    return-object v0
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 8

    #@0
    .prologue
    .line 194
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 195
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 196
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@9
    .line 194
    const/4 v2, 0x0

    #@a
    const v3, 0x7fffffff

    #@d
    .line 195
    const-wide/16 v4, 0x3c

    #@f
    .line 194
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@12
    return-object v1
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 209
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 210
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 211
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@9
    .line 209
    const/4 v2, 0x0

    #@a
    const v3, 0x7fffffff

    #@d
    .line 210
    const-wide/16 v4, 0x3c

    #@f
    move-object v8, p0

    #@10
    .line 209
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@13
    return-object v1
.end method

.method public static newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 8
    .param p0, "nThreads"    # I

    #@0
    .prologue
    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 67
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 68
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@9
    .line 67
    const-wide/16 v4, 0x0

    #@b
    move v2, p0

    #@c
    move v3, p0

    #@d
    .line 66
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@10
    return-object v1
.end method

.method public static newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "nThreads"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 129
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 130
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 131
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@9
    .line 130
    const-wide/16 v4, 0x0

    #@b
    move v2, p0

    #@c
    move v3, p0

    #@d
    move-object v8, p1

    #@e
    .line 129
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@11
    return-object v1
.end method

.method public static newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "corePoolSize"    # I

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    #@5
    return-object v0
.end method

.method public static newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "corePoolSize"    # I
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 279
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    #@5
    return-object v0
.end method

.method public static newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 149
    new-instance v0, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    #@3
    .line 150
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@5
    .line 151
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7
    .line 152
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@9
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@c
    .line 151
    const-wide/16 v4, 0x0

    #@e
    move v3, v2

    #@f
    .line 150
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@12
    .line 149
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    #@15
    return-object v0
.end method

.method public static newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 170
    new-instance v0, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    #@3
    .line 171
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@5
    .line 172
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7
    .line 173
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@9
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@c
    .line 172
    const-wide/16 v4, 0x0

    #@e
    move v3, v2

    #@f
    move-object v8, p0

    #@10
    .line 171
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@13
    .line 170
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    #@16
    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@2
    .line 230
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    #@8
    .line 229
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@b
    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@2
    .line 251
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    #@8
    .line 250
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@b
    return-object v0
.end method

.method public static newWorkStealingPool()Ljava/util/concurrent/ExecutorService;
    .locals 5

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@9
    move-result v1

    #@a
    .line 105
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@c
    .line 106
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    .line 103
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@11
    return-object v0
.end method

.method public static newWorkStealingPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 4
    .param p0, "parallelism"    # I

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 89
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@4
    .line 90
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    .line 87
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@9
    return-object v0
.end method

.method public static privilegedCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 402
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 403
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallable;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    #@d
    return-object v0
.end method

.method public static privilegedCallableUsingCurrentClassLoader(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 411
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 412
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;-><init>(Ljava/util/concurrent/Callable;)V

    #@d
    return-object v0
.end method

.method public static privilegedThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    #@0
    .prologue
    .line 335
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;-><init>()V

    #@5
    return-object v0
.end method

.method public static unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    #@0
    .prologue
    .line 293
    if-nez p0, :cond_0

    #@2
    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 295
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedExecutorService;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    #@d
    return-object v0
.end method

.method public static unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    #@0
    .prologue
    .line 309
    if-nez p0, :cond_0

    #@2
    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 311
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@d
    return-object v0
.end method
