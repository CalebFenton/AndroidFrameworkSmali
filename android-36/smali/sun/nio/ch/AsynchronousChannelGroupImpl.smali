.class abstract Lsun/nio/ch/AsynchronousChannelGroupImpl;
.super Ljava/nio/channels/AsynchronousChannelGroup;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final blacklist internalThreadCount:I


# instance fields
.field private final blacklist pool:Lsun/nio/ch/ThreadPool;

.field private final blacklist shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist shutdownNowLock:Ljava/lang/Object;

.field private final blacklist taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist terminateInitiated:Z

.field private final blacklist threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpool(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Lsun/nio/ch/ThreadPool;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettimeoutExecutor(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "sun.nio.ch.internalThreadPoolSize"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .registers 5
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;

    .line 75
    invoke-direct {p0, p1}, Ljava/nio/channels/AsynchronousChannelGroup;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    .line 78
    invoke-virtual {p2}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    goto :goto_2b

    .line 81
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    .line 86
    :goto_2b
    nop

    .line 87
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 88
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 89
    return-void
.end method

.method private blacklist bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 108
    move-object v0, p0

    .line 109
    .local v0, "thisGroup":Lsun/nio/ch/AsynchronousChannelGroupImpl;
    new-instance v1, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;

    invoke-direct {v1, p0, v0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method private blacklist shutdownExecutors()V
    .registers 2

    .line 249
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;

    invoke-direct {v0, p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private blacklist startInternalThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method abstract blacklist attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method abstract blacklist closeAllChannels()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist detachForeignChannel(Ljava/lang/Object;)V
.end method

.method final blacklist detachFromThreadPool()V
    .registers 3

    .line 298
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 300
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 302
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 303
    return-void

    .line 301
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Group not empty"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 299
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Already shutdown"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 317
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 318
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 321
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    .line 322
    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v2, p1

    .line 323
    .local v2, "delegate":Ljava/lang/Runnable;
    new-instance v3, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

    invoke-direct {v3, p0, v2, v1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V

    move-object p1, v3

    .line 336
    .end local v1    # "acc":Ljava/security/AccessControlContext;
    .end local v2    # "delegate":Ljava/lang/Runnable;
    :cond_11
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method abstract blacklist executeOnHandlerTask(Ljava/lang/Runnable;)V
.end method

.method final blacklist executeOnPooledThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnHandlerTask(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 188
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 190
    :goto_17
    return-void
.end method

.method final blacklist executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method final blacklist fixedThreadCount()I
    .registers 3

    .line 100
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    return v0

    .line 103
    :cond_d
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    sget v1, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract blacklist isEmpty()Z
.end method

.method final blacklist isFixedThreadPool()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->isFixedThreadPool()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api isShutdown()Z
    .registers 2

    .line 214
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api isTerminated()Z
    .registers 2

    .line 219
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method final blacklist offerTask(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 193
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method final blacklist pollTask()Ljava/lang/Runnable;
    .registers 2

    .line 197
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_e
    return-object v0
.end method

.method final blacklist schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 203
    :catch_7
    move-exception v0

    .line 204
    .local v0, "rej":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-eqz v1, :cond_e

    .line 206
    const/4 v1, 0x0

    return-object v1

    .line 208
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final whitelist test-api shutdown()V
    .registers 4

    .line 260
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    return-void

    .line 266
    :cond_a
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 267
    return-void

    .line 271
    :cond_11
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_14
    iget-boolean v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v2, :cond_20

    .line 273
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    .line 274
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 275
    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V

    .line 277
    :cond_20
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1
.end method

.method abstract blacklist shutdownHandlerTasks()V
.end method

.method public final whitelist test-api shutdownNow()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownNowLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_9
    iget-boolean v2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    if-nez v2, :cond_18

    .line 285
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->terminateInitiated:Z

    .line 286
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->closeAllChannels()V

    .line 287
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownHandlerTasks()V

    .line 288
    invoke-direct {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V

    .line 290
    :cond_18
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected final blacklist startThreads(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 130
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->isFixedThreadPool()Z

    move-result v0

    if-nez v0, :cond_16

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget v1, Lsun/nio/ch/AsynchronousChannelGroupImpl;->internalThreadCount:I

    if-ge v0, v1, :cond_16

    .line 132
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V

    .line 133
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "i":I
    :cond_16
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v0

    if-lez v0, :cond_3e

    .line 137
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 139
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    :try_start_23
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v1}, Lsun/nio/ch/ThreadPool;->poolSize()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 140
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v1}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_39
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_23 .. :try_end_39} :catch_3d

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 145
    .end local v0    # "i":I
    :cond_3c
    goto :goto_3e

    .line 143
    :catch_3d
    move-exception v0

    .line 147
    :cond_3e
    :goto_3e
    return-void
.end method

.method final blacklist threadCount()I
    .registers 2

    .line 150
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final blacklist threadExit(Ljava/lang/Runnable;Z)I
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "replaceMe"    # Z

    .line 157
    if-eqz p2, :cond_21

    .line 159
    :try_start_2
    invoke-static {}, Lsun/nio/ch/Invoker;->isBoundToAnyGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 161
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 164
    :cond_16
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V

    .line 166
    :goto_19
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_1f} :catch_20

    return v0

    .line 167
    :catch_20
    move-exception v0

    .line 171
    :cond_21
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method
