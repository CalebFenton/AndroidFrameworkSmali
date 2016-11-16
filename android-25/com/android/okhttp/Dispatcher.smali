.class public final Lcom/android/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final executedCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/16 v0, 0x40

    #@5
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@7
    .line 38
    const/4 v0, 0x5

    #@8
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    #@a
    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@11
    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@18
    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    #@1f
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/16 v0, 0x40

    #@5
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@7
    .line 38
    const/4 v0, 0x5

    #@8
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    #@a
    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@11
    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@18
    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    #@1f
    .line 53
    iput-object p1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    #@21
    .line 52
    return-void
.end method

.method private promoteCalls()V
    .locals 4

    #@0
    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@2
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    #@5
    move-result v2

    #@6
    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@8
    if-lt v2, v3, :cond_0

    #@a
    return-void

    #@b
    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@d
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    return-void

    #@14
    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@16
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_4

    #@20
    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    #@26
    .line 152
    .local v0, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-direct {p0, v0}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    #@29
    move-result v2

    #@2a
    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    #@2c
    if-ge v2, v3, :cond_3

    #@2e
    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@31
    .line 154
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@33
    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@36
    .line 155
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@3d
    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@3f
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    #@42
    move-result v2

    #@43
    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@45
    if-lt v2, v3, :cond_2

    #@47
    return-void

    #@48
    .line 145
    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    :cond_4
    return-void
.end method

.method private runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I
    .locals 5
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    #@0
    .prologue
    .line 164
    const/4 v2, 0x0

    #@1
    .line 165
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    #@13
    .line 166
    .local v0, "c":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p1}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 168
    .end local v0    # "c":Lcom/android/okhttp/Call$AsyncCall;
    :cond_1
    return v2
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    #@13
    .line 119
    .local v0, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 120
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    goto :goto_0

    #@21
    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local v2    # "call$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@22
    monitor-exit p0

    #@23
    throw v4

    #@24
    .line 124
    .restart local v2    # "call$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    #@36
    .line 125
    .restart local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_2

    #@40
    .line 126
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    #@43
    move-result-object v4

    #@44
    const/4 v5, 0x1

    #@45
    iput-boolean v5, v4, Lcom/android/okhttp/Call;->canceled:Z

    #@47
    .line 127
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    #@4a
    move-result-object v4

    #@4b
    iget-object v3, v4, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@4d
    .line 128
    .local v3, "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_2

    #@4f
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->disconnect()V

    #@52
    goto :goto_1

    #@53
    .line 132
    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local v3    # "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_3
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    #@55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v2

    #@59
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_5

    #@5f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v1

    #@63
    check-cast v1, Lcom/android/okhttp/Call;

    #@65
    .line 133
    .local v1, "call":Lcom/android/okhttp/Call;
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->tag()Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_4

    #@6f
    .line 134
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    goto :goto_2

    #@73
    .end local v1    # "call":Lcom/android/okhttp/Call;
    :cond_5
    monitor-exit p0

    #@74
    .line 117
    return-void
.end method

.method declared-synchronized enqueue(Lcom/android/okhttp/Call$AsyncCall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@6
    move-result v0

    #@7
    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    invoke-direct {p0, p1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    #@e
    move-result v0

    #@f
    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@15
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@18
    .line 110
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :goto_0
    monitor-exit p0

    #@20
    .line 107
    return-void

    #@21
    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@23
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    goto :goto_0

    #@27
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method

.method declared-synchronized executed(Lcom/android/okhttp/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/okhttp/Call;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 172
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method declared-synchronized finished(Lcom/android/okhttp/Call$AsyncCall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    const-string/jumbo v1, "AsyncCall wasn\'t running!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0

    #@15
    .line 142
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 140
    return-void
.end method

.method declared-synchronized finished(Lcom/android/okhttp/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/okhttp/Call;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    const-string/jumbo v1, "Call wasn\'t in-flight!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 177
    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@7
    const-wide/16 v4, 0x3c

    #@9
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@b
    .line 62
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@d
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@10
    const-string/jumbo v0, "OkHttp Dispatcher"

    #@13
    const/4 v2, 0x0

    #@14
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    #@17
    move-result-object v8

    #@18
    .line 61
    const/4 v2, 0x0

    #@19
    const v3, 0x7fffffff

    #@1c
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@1f
    iput-object v1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    #@21
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public declared-synchronized getMaxRequests()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 104
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getQueuedCallCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getRunningCallCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized setMaxRequests(I)V
    .locals 3
    .param p1, "maxRequests"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 75
    const/4 v0, 0x1

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "max < 1: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0

    #@21
    .line 78
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    #@23
    .line 79
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 74
    return-void
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .locals 3
    .param p1, "maxRequestsPerHost"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    const/4 v0, 0x1

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "max < 1: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0

    #@21
    .line 99
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    #@23
    .line 100
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit p0

    #@27
    .line 95
    return-void
.end method
