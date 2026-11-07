.class public abstract Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;,
        Landroid/net/connectivity/org/chromium/base/task/AsyncTask$Status;,
        Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist GET_STATUS_UMA_HISTOGRAM:Ljava/lang/String; = "Android.Jank.AsyncTaskGetOnUiThreadStatus"

.field public static final blacklist SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final blacklist STEAL_RUNNABLE_HANDLER:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;

.field private static final blacklist TAG:Ljava/lang/String; = "AsyncTask"

.field public static final blacklist THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final blacklist mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<",
            "TResult;>.NamedFutureTask;"
        }
    .end annotation
.end field

.field private blacklist mIterationIdForTesting:I

.field private volatile blacklist mStatus:I

.field private final blacklist mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mWorker:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2SK2VnNumFP0UuZVT5PtM6OaF2g(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->lambda$new$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hCnrLSdegM7cWvbQBYR_75M_sOc(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->lambda$postResult$2(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFuture(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;)Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostResultIfNotInvoked(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    nop

    .line 50
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/SerialExecutor;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;-><init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask-IA;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->STEAL_RUNNABLE_HANDLER:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 122
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    sget v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mIterationIdForTesting:I

    .line 123
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mWorker:Ljava/util/concurrent/Callable;

    .line 139
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mWorker:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;-><init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    .line 140
    return-void
.end method

.method private blacklist executionPreamble()V
    .registers 3

    .line 380
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    if-eqz v0, :cond_1a

    .line 381
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    packed-switch v0, :pswitch_data_22

    goto :goto_1a

    .line 386
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :pswitch_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    .line 395
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->onPreExecute()V

    .line 396
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist finish(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 463
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 464
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_d

    .line 466
    :cond_a
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 468
    :goto_d
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    .line 469
    return-void
.end method

.method private synthetic blacklist lambda$new$1()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    :try_start_7
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 129
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 134
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->postResult(Ljava/lang/Object;)V

    .line 135
    nop

    .line 136
    return-object v0

    .line 130
    :catchall_14
    move-exception v2

    .line 131
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_15
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    throw v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1c

    .line 134
    .end local v2    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "result":Ljava/lang/Object;, "TResult;"
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    :catchall_1c
    move-exception v1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->postResult(Ljava/lang/Object;)V

    .line 135
    throw v1
.end method

.method private synthetic blacklist lambda$postResult$2(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 156
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->finish(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 51
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method private blacklist postResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    instance-of v0, p0, Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask;

    if-eqz v0, :cond_8

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    goto :goto_16

    .line 153
    :cond_8
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mIterationIdForTesting:I

    sget v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    if-ne v0, v1, :cond_16

    .line 154
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    :cond_16
    :goto_16
    return-void
.end method

.method private blacklist postResultIfNotInvoked(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 144
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_b

    .line 145
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->postResult(Ljava/lang/Object;)V

    .line 147
    :cond_b
    return-void
.end method

.method public static blacklist takeOverAndroidThreadPool()V
    .registers 2

    .line 112
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 113
    .local v0, "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 114
    nop

    .line 115
    return-void

    .line 117
    :cond_c
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->STEAL_RUNNABLE_HANDLER:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$StealRunnableHandler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 119
    return-void
.end method


# virtual methods
.method public final blacklist cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .line 302
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public final blacklist executeOnExecutor(Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
    .registers 3
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<",
            "TResult;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->executionPreamble()V

    .line 431
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 432
    return-object p0
.end method

.method public final blacklist executeOnTaskRunner(Landroid/net/connectivity/org/chromium/base/task/TaskRunner;)Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
    .registers 3
    .param p1, "taskRunner"    # Landroid/net/connectivity/org/chromium/base/task/TaskRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/task/TaskRunner;",
            ")",
            "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<",
            "TResult;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->executionPreamble()V

    .line 444
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-interface {p1, v0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunner;->execute(Ljava/lang/Runnable;)V

    .line 445
    return-object p0
.end method

.method public final blacklist executeWithTaskTraits(I)Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
    .registers 3
    .param p1, "taskTraits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<",
            "TResult;>;"
        }
    .end annotation

    .line 457
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->executionPreamble()V

    .line 458
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-static {p1, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 459
    return-object p0
.end method

.method public final blacklist get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 322
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->getUmaStatus()I

    move-result v0

    .line 323
    .local v0, "status":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_78

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 324
    const-string v1, "Android.Jank.AsyncTaskGetOnUiThreadStatus"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 326
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 327
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 328
    .local v2, "caller":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_49

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AsyncTask.get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v3

    .line 332
    .local v3, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_60
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_6c

    .line 333
    .local v4, "r":Ljava/lang/Object;, "TResult;"
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 334
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "caller":Ljava/lang/String;
    .end local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_6b
    goto :goto_7e

    .line 331
    .end local v4    # "r":Ljava/lang/Object;, "TResult;"
    .restart local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v2    # "caller":Ljava/lang/String;
    .restart local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_6c
    move-exception v4

    if-eqz v3, :cond_77

    :try_start_6f
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw v4

    .line 335
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "caller":Ljava/lang/String;
    .end local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_78
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    .line 337
    .restart local v4    # "r":Ljava/lang/Object;, "TResult;"
    :goto_7e
    return-object v4
.end method

.method public final blacklist get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->getUmaStatus()I

    move-result v0

    .line 361
    .local v0, "status":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_78

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 362
    const-string v1, "Android.Jank.AsyncTaskGetOnUiThreadStatus"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 364
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 365
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 366
    .local v2, "caller":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_49

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AsyncTask.get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v3

    .line 370
    .local v3, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_60
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_6c

    .line 371
    .local v4, "r":Ljava/lang/Object;, "TResult;"
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 372
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "caller":Ljava/lang/String;
    .end local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_6b
    goto :goto_7e

    .line 369
    .end local v4    # "r":Ljava/lang/Object;, "TResult;"
    .restart local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v2    # "caller":Ljava/lang/String;
    .restart local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_6c
    move-exception v4

    if-eqz v3, :cond_77

    :try_start_6f
    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw v4

    .line 373
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "caller":Ljava/lang/String;
    .end local v3    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_78
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mFuture:Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    .line 375
    .restart local v4    # "r":Ljava/lang/Object;, "TResult;"
    :goto_7e
    return-object v4
.end method

.method public final blacklist getStatus()I
    .registers 2

    .line 167
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    return v0
.end method

.method public final blacklist getUmaStatus()I
    .registers 3

    .line 180
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return v0

    .line 181
    :cond_f
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mStatus:I

    return v0
.end method

.method public final blacklist isCancelled()Z
    .registers 2

    .line 269
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected blacklist onCancelled()V
    .registers 1

    .line 256
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    return-void
.end method

.method protected blacklist onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->onCancelled()V

    .line 241
    return-void
.end method

.method protected abstract blacklist onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected blacklist onPreExecute()V
    .registers 1

    .line 202
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>;"
    return-void
.end method
