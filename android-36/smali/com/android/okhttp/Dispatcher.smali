.class public final Lcom/android/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final greylist-max-o executedCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o executorService:Ljava/util/concurrent/ExecutorService;

.field private greylist-max-o maxRequests:I

.field private greylist-max-o maxRequestsPerHost:I

.field private final greylist-max-o readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 39
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 39
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    .line 55
    iput-object p1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private greylist-max-o promoteCalls()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v0, v1, :cond_b

    goto :goto_47

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_47

    .line 151
    :cond_14
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 154
    invoke-direct {p0, v1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3d

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 156
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 160
    :cond_3d
    iget-object v1, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v1, v2, :cond_1a

    :cond_47
    :goto_47
    return-void
.end method

.method private greylist-max-o runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I
    .registers 5

    .line 167
    iget-object p0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 168
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    return v0
.end method


# virtual methods
.method public declared-synchronized greylist-max-o cancel(Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 121
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->cancel()V

    goto :goto_7

    :catchall_21
    move-exception p1

    goto :goto_74

    .line 126
    :cond_23
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 127
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 128
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/okhttp/Call;->canceled:Z

    .line 129
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v1

    iget-object v1, v1, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v1, :cond_29

    .line 130
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    goto :goto_29

    .line 134
    :cond_52
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call;

    .line 135
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 136
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->cancel()V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_21

    goto :goto_58

    .line 139
    :cond_72
    monitor-exit p0

    return-void

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_21

    throw p1
.end method

.method declared-synchronized greylist-max-o enqueue(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 4

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_22

    invoke-direct {p0, p1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_22

    .line 111
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    :catchall_20
    move-exception p1

    goto :goto_29

    .line 114
    :cond_22
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_20

    .line 116
    :goto_27
    monitor-exit p0

    return-void

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_20

    throw p1
.end method

.method declared-synchronized greylist-max-o executed(Lcom/android/okhttp/Call;)V
    .registers 3

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 176
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method declared-synchronized greylist-max-o finished(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 3

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 144
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 145
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_18

    .line 143
    :cond_10
    :try_start_10
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "AsyncCall wasn\'t running!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 145
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    throw p1
.end method

.method declared-synchronized greylist-max-o finished(Lcom/android/okhttp/Call;)V
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    if-eqz p1, :cond_b

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :cond_b
    :try_start_b
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_13
    move-exception p1

    .line 181
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized greylist-max-o getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_23

    .line 63
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v2, 0x0

    .line 64
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_27

    .line 66
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_21

    monitor-exit p0

    return-object v0

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_21

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMaxRequests()I
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMaxRequestsPerHost()I
    .registers 2

    monitor-enter p0

    .line 106
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o getQueuedCallCount()I
    .registers 2

    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o getRunningCallCount()I
    .registers 2

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist-max-o setMaxRequests(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 80
    :try_start_4
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 81
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 82
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_24

    .line 78
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o setMaxRequestsPerHost(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 101
    :try_start_4
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 102
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 103
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_24

    .line 99
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_b

    throw p1
.end method
