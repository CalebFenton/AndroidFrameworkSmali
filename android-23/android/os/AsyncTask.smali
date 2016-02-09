.class public abstract Landroid/os/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AsyncTask$SerialExecutor;,
        Landroid/os/AsyncTask$Status;,
        Landroid/os/AsyncTask$InternalHandler;,
        Landroid/os/AsyncTask$WorkerRunnable;,
        Landroid/os/AsyncTask$AsyncTaskResult;,
        Landroid/os/AsyncTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic -android_os_AsyncTask$StatusSwitchesValues:[I = null

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Landroid/os/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Landroid/os/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Landroid/os/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid_os_AsyncTask$StatusSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/os/AsyncTask;->-android_os_AsyncTask$StatusSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/os/AsyncTask;->-android_os_AsyncTask$StatusSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/os/AsyncTask$Status;->values()[Landroid/os/AsyncTask$Status;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    #@10
    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    #@19
    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x3

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #@22
    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/os/AsyncTask;->-android_os_AsyncTask$StatusSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->finish(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v0

    #@8
    sput v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    #@a
    .line 184
    sget v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    sput v0, Landroid/os/AsyncTask;->CORE_POOL_SIZE:I

    #@10
    .line 185
    sget v0, Landroid/os/AsyncTask;->CPU_COUNT:I

    #@12
    mul-int/lit8 v0, v0, 0x2

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    sput v0, Landroid/os/AsyncTask;->MAXIMUM_POOL_SIZE:I

    #@18
    .line 188
    new-instance v0, Landroid/os/AsyncTask$1;

    #@1a
    invoke-direct {v0}, Landroid/os/AsyncTask$1;-><init>()V

    #@1d
    sput-object v0, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@1f
    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@21
    const/16 v1, 0x80

    #@23
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@26
    .line 196
    sput-object v0, Landroid/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    #@28
    .line 203
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2a
    sget v2, Landroid/os/AsyncTask;->CORE_POOL_SIZE:I

    #@2c
    sget v3, Landroid/os/AsyncTask;->MAXIMUM_POOL_SIZE:I

    #@2e
    const-wide/16 v4, 0x1

    #@30
    .line 204
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@32
    sget-object v7, Landroid/os/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    #@34
    sget-object v8, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@36
    .line 203
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@39
    .line 202
    sput-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@3b
    .line 210
    new-instance v0, Landroid/os/AsyncTask$SerialExecutor;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-direct {v0, v1}, Landroid/os/AsyncTask$SerialExecutor;-><init>(Landroid/os/AsyncTask$SerialExecutor;)V

    #@41
    sput-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@43
    .line 215
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@45
    sput-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    #@47
    .line 180
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 288
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 221
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    #@5
    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@7
    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@c
    iput-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@e
    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@13
    iput-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    .line 289
    new-instance v0, Landroid/os/AsyncTask$2;

    #@17
    invoke-direct {v0, p0}, Landroid/os/AsyncTask$2;-><init>(Landroid/os/AsyncTask;)V

    #@1a
    iput-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    #@1c
    .line 301
    new-instance v0, Landroid/os/AsyncTask$3;

    #@1e
    iget-object v1, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    #@20
    invoke-direct {v0, p0, v1}, Landroid/os/AsyncTask$3;-><init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V

    #@23
    iput-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    #@25
    .line 288
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 622
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    #@2
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@5
    .line 621
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 648
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 649
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    #@9
    .line 653
    :goto_0
    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    #@b
    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@d
    .line 647
    return-void

    #@e
    .line 651
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    #@11
    goto :goto_0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    #@0
    .prologue
    .line 272
    const-class v1, Landroid/os/AsyncTask;

    #@2
    monitor-enter v1

    #@3
    .line 273
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 274
    new-instance v0, Landroid/os/AsyncTask$InternalHandler;

    #@9
    invoke-direct {v0}, Landroid/os/AsyncTask$InternalHandler;-><init>()V

    #@c
    sput-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    #@e
    .line 276
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 272
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    #@1
    .line 327
    invoke-static {}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    #@4
    move-result-object v1

    #@5
    .line 328
    new-instance v2, Landroid/os/AsyncTask$AsyncTaskResult;

    #@7
    new-array v3, v5, [Ljava/lang/Object;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object p1, v3, v4

    #@c
    invoke-direct {v2, p0, v3}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    #@f
    .line 327
    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    .line 329
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 330
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    .line 320
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    #@8
    .line 321
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 318
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 282
    sput-object p0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    #@2
    .line 281
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 482
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 483
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 590
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@2
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 591
    invoke-static {}, Landroid/os/AsyncTask;->-getandroid_os_AsyncTask$StatusSwitchesValues()[I

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@c
    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    #@f
    move-result v1

    #@10
    aget v0, v0, v1

    #@12
    packed-switch v0, :pswitch_data_0

    #@15
    .line 602
    :cond_0
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #@17
    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@19
    .line 604
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    #@1c
    .line 606
    iget-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    #@1e
    iput-object p2, v0, Landroid/os/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    #@20
    .line 607
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    #@22
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@25
    .line 609
    return-object p0

    #@26
    .line 593
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v1, "Cannot execute task: the task is already running."

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 596
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
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

    #@0
    .prologue
    .line 498
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
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

    #@0
    .prologue
    .line 518
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    #@0
    .prologue
    .line 339
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    #@2
    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 449
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onCancelled()V
    .locals 0

    #@0
    .prologue
    .line 435
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 419
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onCancelled()V

    #@3
    .line 418
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 385
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    #@0
    .prologue
    .line 368
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 641
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 642
    invoke-static {}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    .line 643
    new-instance v1, Landroid/os/AsyncTask$AsyncTaskResult;

    #@c
    invoke-direct {v1, p0, p1}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    #@f
    .line 642
    const/4 v2, 0x2

    #@10
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 640
    :cond_0
    return-void
.end method
