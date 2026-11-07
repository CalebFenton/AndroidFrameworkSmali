.class public Ljava/util/concurrent/ExecutorCompletionService;
.super Ljava/lang/Object;
.source "ExecutorCompletionService.java"

# interfaces
.implements Ljava/util/concurrent/CompletionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/CompletionService<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o aes:Ljava/util/concurrent/AbstractExecutorService;

.field private final greylist-max-o completionQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Future<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 147
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    if-eqz p1, :cond_1a

    .line 150
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    .line 151
    instance-of v0, p1, Ljava/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_f

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/AbstractExecutorService;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    .line 153
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    .line 154
    return-void

    .line 149
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Future<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "completionQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 173
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    .line 174
    instance-of v0, p1, Ljava/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_11

    .line 175
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/AbstractExecutorService;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    .line 176
    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    .line 177
    return-void

    .line 172
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_a

    .line 134
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0

    .line 136
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_a

    .line 127
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0

    .line 129
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api poll()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_13

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 197
    .local v0, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    iget-object v3, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/RunnableFuture;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    return-object v0

    .line 195
    .end local v0    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz p1, :cond_13

    .line 185
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 186
    .local v0, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    iget-object v3, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/RunnableFuture;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 187
    return-object v0

    .line 184
    .end local v0    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api take()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 202
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method
