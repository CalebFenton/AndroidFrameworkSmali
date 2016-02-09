.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# instance fields
.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "aForkJoinWorkerThread"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 49
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@8
    .line 50
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@e
    .line 46
    return-void
.end method


# virtual methods
.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@2
    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@2
    iget-short v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poolIndex:S

    #@4
    ushr-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method protected onStart()V
    .locals 0

    #@0
    .prologue
    .line 85
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 96
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 105
    const/4 v1, 0x0

    #@1
    .line 107
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    #@4
    .line 108
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@6
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    #@8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@b
    .line 113
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 118
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@10
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@13
    .line 104
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void

    #@14
    .line 114
    .restart local v1    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@15
    .line 116
    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v0

    #@16
    .line 118
    .local v1, "exception":Ljava/lang/Throwable;
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@18
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@1b
    goto :goto_0

    #@1c
    .line 117
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@1d
    .line 118
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@1f
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@22
    .line 117
    throw v2

    #@23
    .line 109
    :catch_1
    move-exception v0

    #@24
    .line 110
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v1, v0

    #@25
    .line 113
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    .line 118
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@2a
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@2d
    goto :goto_0

    #@2e
    .line 114
    :catch_2
    move-exception v0

    #@2f
    .line 115
    if-nez v1, :cond_0

    #@31
    .line 116
    move-object v1, v0

    #@32
    .line 118
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@34
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@37
    goto :goto_0

    #@38
    .line 117
    :catchall_1
    move-exception v2

    #@39
    .line 118
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@3b
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@3e
    .line 117
    throw v2

    #@3f
    .line 111
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "exception":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    #@40
    .line 113
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@43
    .line 118
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@45
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@48
    .line 111
    .end local v1    # "exception":Ljava/lang/Throwable;
    :goto_1
    throw v2

    #@49
    .line 114
    .restart local v1    # "exception":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    #@4a
    .line 116
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v1, v0

    #@4b
    .line 118
    .local v1, "exception":Ljava/lang/Throwable;
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@4d
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@50
    goto :goto_1

    #@51
    .line 117
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "exception":Ljava/lang/Throwable;
    :catchall_3
    move-exception v2

    #@52
    .line 118
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    #@54
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    #@57
    .line 117
    throw v2
.end method
