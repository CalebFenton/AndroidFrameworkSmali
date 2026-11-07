.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# instance fields
.field final greylist-max-o pool:Ljava/util/concurrent/ForkJoinPool;

.field final greylist-max-o workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;Z)V
    .registers 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p3, "preserveThreadLocals"    # Z

    .line 105
    xor-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V

    .line 106
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V
    .registers 12
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p3, "useSystemClassLoader"    # Z
    .param p4, "clearThreadLocals"    # Z

    .line 77
    invoke-virtual {p2}, Ljava/util/concurrent/ForkJoinPool;->nextWorkerThreadName()Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v6, p4, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "group":Ljava/lang/ThreadGroup;
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct/range {v0 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JZ)V

    .line 78
    iput-object p2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object p1, p2, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    .local p1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinWorkerThread;I)V

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 80
    if-eqz p4, :cond_21

    .line 81
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->setClearThreadLocals()V

    .line 82
    :cond_21
    const/4 v2, 0x1

    invoke-super {p0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 83
    if-eqz p1, :cond_2a

    .line 84
    invoke-super {p0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    :cond_2a
    if-eqz p3, :cond_33

    .line 86
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 87
    :cond_33
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist test-api getPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 2

    .line 124
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public whitelist test-api getPoolIndex()I
    .registers 2

    .line 138
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getQueuedTaskCount()I
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api onStart()V
    .registers 1

    .line 162
    return-void
.end method

.method protected whitelist test-api onTermination(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 173
    return-void
.end method

.method public whitelist test-api run()V
    .registers 5

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 183
    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 184
    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    .line 186
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 187
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 188
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    .line 193
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_20

    .line 194
    :catchall_16
    move-exception v3

    .line 195
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_20

    .line 196
    move-object v0, v3

    goto :goto_20

    .line 189
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_1b
    move-exception v3

    .line 190
    .restart local v3    # "ex":Ljava/lang/Throwable;
    move-object v0, v3

    .line 193
    .end local v3    # "ex":Ljava/lang/Throwable;
    :try_start_1d
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    .line 198
    :cond_20
    :goto_20
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 199
    goto :goto_26

    .line 194
    :catchall_24
    move-exception v3

    .line 195
    .restart local v3    # "ex":Ljava/lang/Throwable;
    goto :goto_20

    .line 200
    .end local v3    # "ex":Ljava/lang/Throwable;
    :goto_26
    nop

    .line 202
    :cond_27
    return-void
.end method
