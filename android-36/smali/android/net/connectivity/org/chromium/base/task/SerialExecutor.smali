.class Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field blacklist mActive:Ljava/lang/Runnable;

.field final blacklist mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UOyq1qLUBMMk8Dofls9bv1wf5v4(Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method private synthetic blacklist lambda$execute$0(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 19
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 21
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->scheduleNext()V

    .line 22
    nop

    .line 23
    return-void

    .line 21
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->scheduleNext()V

    .line 22
    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 25
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 27
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;
    :cond_12
    monitor-exit p0

    return-void

    .line 15
    .end local p1    # "r":Ljava/lang/Runnable;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method protected declared-synchronized blacklist scheduleNext()V
    .registers 3

    monitor-enter p0

    .line 30
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 31
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 33
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;
    :cond_14
    monitor-exit p0

    return-void

    .line 29
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
