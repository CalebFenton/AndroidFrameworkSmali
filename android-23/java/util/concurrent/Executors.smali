.class public Ljava/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Executors$RunnableAdapter;,
        Ljava/util/concurrent/Executors$PrivilegedCallable;,
        Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;,
        Ljava/util/concurrent/Executors$DefaultThreadFactory;,
        Ljava/util/concurrent/Executors$PrivilegedThreadFactory;,
        Ljava/util/concurrent/Executors$DelegatedExecutorService;,
        Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;,
        Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 659
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
    .line 358
    if-nez p0, :cond_0

    #@3
    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 360
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
    .line 345
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 347
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
    .line 371
    .local p0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    if-nez p0, :cond_0

    #@2
    .line 372
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 373
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
    .line 386
    .local p0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<*>;"
    if-nez p0, :cond_0

    #@2
    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 388
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
    .line 324
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
    .line 190
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 191
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 192
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@9
    .line 190
    const/4 v2, 0x0

    #@a
    const v3, 0x7fffffff

    #@d
    .line 191
    const-wide/16 v4, 0x3c

    #@f
    .line 190
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@12
    return-object v1
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 205
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 206
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 207
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@9
    .line 205
    const/4 v2, 0x0

    #@a
    const v3, 0x7fffffff

    #@d
    .line 206
    const-wide/16 v4, 0x3c

    #@f
    move-object v8, p0

    #@10
    .line 205
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@13
    return-object v1
.end method

.method public static newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 8
    .param p0, "nThreads"    # I

    #@0
    .prologue
    .line 62
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 63
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 64
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@9
    .line 63
    const-wide/16 v4, 0x0

    #@b
    move v2, p0

    #@c
    move v3, p0

    #@d
    .line 62
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
    .line 125
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    .line 126
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    .line 127
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@9
    .line 126
    const-wide/16 v4, 0x0

    #@b
    move v2, p0

    #@c
    move v3, p0

    #@d
    move-object v8, p1

    #@e
    .line 125
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@11
    return-object v1
.end method

.method public static newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "corePoolSize"    # I

    #@0
    .prologue
    .line 259
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
    .line 275
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
    .line 145
    new-instance v0, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    #@3
    .line 146
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@5
    .line 147
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7
    .line 148
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@9
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@c
    .line 147
    const-wide/16 v4, 0x0

    #@e
    move v3, v2

    #@f
    .line 146
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@12
    .line 145
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
    .line 166
    new-instance v0, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;

    #@3
    .line 167
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@5
    .line 168
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@7
    .line 169
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@9
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@c
    .line 168
    const-wide/16 v4, 0x0

    #@e
    move v3, v2

    #@f
    move-object v8, p0

    #@10
    .line 167
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@13
    .line 166
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    #@16
    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    #@0
    .prologue
    .line 225
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@2
    .line 226
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    #@8
    .line 225
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@b
    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@2
    .line 247
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v1, v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    #@8
    .line 246
    invoke-direct {v0, v1}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@b
    return-object v0
.end method

.method public static newWorkStealingPool()Ljava/util/concurrent/ExecutorService;
    .locals 5

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@9
    move-result v1

    #@a
    .line 101
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@c
    .line 102
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    .line 99
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    #@11
    return-object v0
.end method

.method public static newWorkStealingPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 4
    .param p0, "parallelism"    # I

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    #@2
    .line 86
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    #@4
    .line 87
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    .line 84
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
    .line 396
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 398
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
    .line 405
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 407
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
    .line 331
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
    .line 289
    if-nez p0, :cond_0

    #@2
    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 291
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
    .line 305
    if-nez p0, :cond_0

    #@2
    .line 306
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 307
    :cond_0
    new-instance v0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;

    #@a
    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    #@d
    return-object v0
.end method
