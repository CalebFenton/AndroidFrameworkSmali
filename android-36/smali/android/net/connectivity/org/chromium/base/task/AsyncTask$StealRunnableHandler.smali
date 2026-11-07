.class Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StealRunnableHandler"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$rejectedExecution$0(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 78
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 80
    .local v0, "priority":I
    :try_start_8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_14

    .line 82
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_14
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 83
    throw v1
.end method


# virtual methods
.method public whitelist test-api rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
