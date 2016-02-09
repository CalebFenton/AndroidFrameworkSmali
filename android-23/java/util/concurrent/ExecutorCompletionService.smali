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
        "Ljava/util/concurrent/CompletionService",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final aes:Ljava/util/concurrent/AbstractExecutorService;

.field private final completionQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static synthetic -get0(Ljava/util/concurrent/ExecutorCompletionService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 118
    if-nez p1, :cond_0

    #@6
    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v0

    #@c
    .line 120
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    #@e
    .line 121
    instance-of v1, p1, Ljava/util/concurrent/AbstractExecutorService;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 122
    check-cast p1, Ljava/util/concurrent/AbstractExecutorService;

    #@14
    .line 121
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@16
    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@18
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@1b
    iput-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@1d
    .line 117
    return-void

    #@1e
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :cond_1
    move-object p1, v0

    #@1f
    .line 122
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "completionQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TV;>;>;"
    const/4 v0, 0x0

    #@1
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 141
    if-eqz p1, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    .line 142
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 143
    :cond_1
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    #@10
    .line 144
    instance-of v1, p1, Ljava/util/concurrent/AbstractExecutorService;

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 145
    check-cast p1, Ljava/util/concurrent/AbstractExecutorService;

    #@16
    .line 144
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@18
    .line 146
    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@1a
    .line 140
    return-void

    #@1b
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :cond_2
    move-object p1, v0

    #@1c
    .line 145
    goto :goto_0
.end method

.method private newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 104
    new-instance v0, Ljava/util/concurrent/FutureTask;

    #@6
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@9
    return-object v0

    #@a
    .line 106
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 96
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 97
    new-instance v0, Ljava/util/concurrent/FutureTask;

    #@6
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@9
    return-object v0

    #@a
    .line 99
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->aes:Ljava/util/concurrent/AbstractExecutorService;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method public poll()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 168
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/Future;

    #@8
    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/Future;

    #@8
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 158
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 159
    .local v0, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    #@e
    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    #@10
    invoke-direct {v2, p0, v0}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@16
    .line 160
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 151
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 152
    .local v0, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService;->executor:Ljava/util/concurrent/Executor;

    #@e
    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;

    #@10
    invoke-direct {v2, p0, v0}, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@16
    .line 153
    return-object v0
.end method

.method public take()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/Future;

    #@8
    return-object v0
.end method
