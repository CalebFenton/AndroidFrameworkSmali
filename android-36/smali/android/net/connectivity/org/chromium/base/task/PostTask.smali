.class public Landroid/net/connectivity/org/chromium/base/task/PostTask;
.super Ljava/lang/Object;
.source "PostTask.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ENABLE_TASK_ORIGINS:Z

.field private static final blacklist TAG:Ljava/lang/String; = "PostTask"

.field private static volatile blacklist sNativeInitialized:Z

.field private static final blacklist sPreNativeTaskRunnerLock:Ljava/lang/Object;

.field private static blacklist sPreNativeTaskRunners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPrenativeThreadPoolExecutor:Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

.field private static volatile blacklist sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

.field private static final blacklist sTaskOrigin:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sTestIterationForTesting:I

.field private static final blacklist sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsTaskOrigin()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    nop

    .line 35
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    .line 49
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    const/4 v1, 0x5

    if-gt v0, v1, :cond_3d

    .line 55
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v2, v0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;-><init>(I)V

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 57
    .end local v0    # "i":I
    :cond_3d
    const/4 v0, 0x6

    .restart local v0    # "i":I
    :goto_3e
    const/16 v1, 0x8

    if-gt v0, v1, :cond_4e

    .line 58
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/task/UiThreadTaskRunnerImpl;

    invoke-direct {v2, v0}, Landroid/net/connectivity/org/chromium/base/task/UiThreadTaskRunnerImpl;-><init>(I)V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 60
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canRunTaskImmediately(I)Z
    .registers 2
    .param p0, "taskTraits"    # I

    .line 152
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->isUiTaskTraits(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    return v0

    .line 155
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist createSequencedTaskRunner(I)Landroid/net/connectivity/org/chromium/base/task/SequencedTaskRunner;
    .registers 2
    .param p0, "taskTraits"    # I

    .line 110
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->isUiTaskTraits(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    aget-object v0, v0, p0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/task/SequencedTaskRunner;

    return-object v0

    .line 113
    :cond_d
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/SequencedTaskRunnerImpl;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/SequencedTaskRunnerImpl;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createTaskRunner(I)Landroid/net/connectivity/org/chromium/base/task/TaskRunner;
    .registers 2
    .param p0, "taskTraits"    # I

    .line 96
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->isUiTaskTraits(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    aget-object v0, v0, p0

    return-object v0

    .line 99
    :cond_b
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;-><init>(I)V

    return-object v0
.end method

.method public static blacklist flushJobsAndResetForTesting()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 294
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    .line 296
    .local v0, "executor":Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->getActiveCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 297
    .local v1, "taskCount":I
    if-lez v1, :cond_22

    .line 298
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 299
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 300
    new-instance v2, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;-><init>()V

    sput-object v2, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    .line 302
    :cond_22
    sget-object v2, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_25
    sget-object v3, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    if-eqz v3, :cond_41

    .line 306
    sget-object v3, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    .line 311
    .local v4, "taskRunner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->clearTaskQueueForTesting()I

    move-result v5

    add-int/2addr v1, v5

    .line 312
    .end local v4    # "taskRunner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    goto :goto_2f

    .line 314
    :cond_41
    sget v3, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    .line 315
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_59

    .line 316
    const/4 v2, 0x0

    sput-object v2, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    .line 317
    if-lez v1, :cond_58

    .line 318
    const-string v2, "PostTask"

    const-string v3, "%d background task(s) existed after test finished."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    :cond_58
    return-void

    .line 315
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3
.end method

.method static blacklist getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 216
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_7

    .line 217
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    return-object v0

    .line 219
    :cond_7
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Landroid/net/connectivity/org/chromium/base/task/ChromeThreadPoolExecutor;

    return-object v0
.end method

.method public static blacklist getTaskOrigin()Ljava/lang/Exception;
    .registers 1

    .line 223
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_d

    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private static blacklist isUiTaskTraits(I)Z
    .registers 2
    .param p0, "taskTraits"    # I

    .line 88
    const/4 v0, 0x6

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic blacklist lambda$setPrenativeThreadPoolExecutorForTesting$0()V
    .registers 1

    .line 209
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static blacklist maybeAddTaskOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 231
    .local p0, "exception":Ljava/lang/Throwable;, "TT;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->getTaskOrigin()Ljava/lang/Exception;

    move-result-object v0

    .line 232
    .local v0, "taskOrigin":Ljava/lang/Exception;
    if-eqz v0, :cond_17

    .line 233
    move-object v1, p0

    .line 234
    .local v1, "t":Ljava/lang/Throwable;
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 235
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 236
    goto :goto_7

    .line 240
    :cond_12
    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 244
    goto :goto_17

    .line 241
    :catch_16
    move-exception v2

    .line 246
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_17
    :goto_17
    return-object p0
.end method

.method private static blacklist onNativeSchedulerReady()V
    .registers 3

    .line 280
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sNativeInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 281
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sNativeInitialized:Z

    .line 283
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_b
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    .line 285
    .local v1, "preNativeTaskRunners":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;>;"
    const/4 v2, 0x0

    sput-object v2, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    .line 286
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_26

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    .line 288
    .local v2, "taskRunner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    .line 289
    .end local v2    # "taskRunner":Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
    goto :goto_15

    .line 290
    :cond_25
    return-void

    .line 286
    .end local v1    # "preNativeTaskRunners":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;>;"
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method static blacklist populateTaskOrigin(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p0, "taskOrigin"    # Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;
    .param p1, "origTask"    # Ljava/lang/Runnable;

    .line 255
    instance-of v0, p1, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;

    if-eqz v0, :cond_5

    .line 256
    return-object p1

    .line 258
    :cond_5
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static blacklist postDelayedTask(ILjava/lang/Runnable;J)V
    .registers 5
    .param p0, "taskTraits"    # I
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 130
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Landroid/net/connectivity/org/chromium/base/task/TaskRunner;

    aget-object v0, v0, p0

    invoke-interface {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/task/TaskRunner;->postDelayedTask(Ljava/lang/Runnable;J)V

    .line 131
    return-void
.end method

.method public static blacklist postTask(ILjava/lang/Runnable;)V
    .registers 4
    .param p0, "taskTraits"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 121
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    .line 122
    return-void
.end method

.method static blacklist registerPreNativeTaskRunner(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)Z
    .registers 3
    .param p0, "taskRunner"    # Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    .line 270
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    if-nez v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 272
    :cond_a
    sget-object v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 274
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist resetUiThreadForTesting()V
    .registers 0

    .line 324
    nop

    .line 325
    return-void
.end method

.method public static blacklist runOrPostTask(ILjava/lang/Runnable;)V
    .registers 3
    .param p0, "taskTraits"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 143
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->canRunTaskImmediately(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 146
    :cond_a
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 148
    :goto_d
    return-void
.end method

.method public static blacklist runSynchronously(ILjava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .param p0, "taskTraits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 170
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist runSynchronously(ILjava/lang/Runnable;)V
    .registers 4
    .param p0, "taskTraits"    # I
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 184
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private static blacklist runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;
    .registers 6
    .param p0, "taskTraits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 190
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->populateTaskOrigin(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    .line 191
    .local v0, "r":Ljava/lang/Runnable;
    :goto_b
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 193
    :try_start_e
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v1

    .line 194
    :catch_13
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist setPrenativeThreadPoolExecutorForTesting(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 208
    sput-object p0, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    .line 209
    new-instance v0, Landroid/net/connectivity/org/chromium/base/task/PostTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
