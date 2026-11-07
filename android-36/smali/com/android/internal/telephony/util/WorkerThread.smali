.class public final Lcom/android/internal/telephony/util/WorkerThread;
.super Landroid/os/HandlerThread;
.source "WorkerThread.java"


# static fields
.field private static volatile blacklist sHandler:Landroid/os/Handler;

.field private static volatile blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static volatile blacklist sInstance:Lcom/android/internal/telephony/util/WorkerThread;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mInitLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 47
    const-string v0, "android.telephony.worker"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    .line 48
    return-void
.end method

.method private static blacklist ensureThread()V
    .registers 7

    .line 51
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-eqz v0, :cond_5

    return-void

    .line 52
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    .line 55
    :cond_e
    new-instance v1, Lcom/android/internal/telephony/util/WorkerThread;

    invoke-direct {v1}, Lcom/android/internal/telephony/util/WorkerThread;-><init>()V

    .line 56
    .local v1, "tmpThread":Lcom/android/internal/telephony/util/WorkerThread;
    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->start()V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_38

    .line 59
    :try_start_16
    iget-object v2, v1, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_38

    .line 61
    goto :goto_1d

    .line 60
    :catch_1c
    move-exception v2

    .line 64
    :goto_1d
    :try_start_1d
    new-instance v2, Landroid/os/Handler;

    .line 65
    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;ZZ)V

    sput-object v2, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    .line 69
    new-instance v2, Landroid/os/HandlerExecutor;

    sget-object v3, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 70
    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    .line 72
    .end local v1    # "tmpThread":Lcom/android/internal/telephony/util/WorkerThread;
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static blacklist get()Landroid/os/HandlerThread;
    .registers 1

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    .line 90
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    return-object v0
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    .line 110
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist reset()V
    .registers 2

    .line 121
    sget-object v0, Lcom/android/internal/telephony/util/WorkerThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 123
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    invoke-virtual {v1}, Lcom/android/internal/telephony/util/WorkerThread;->quitSafely()Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sInstance:Lcom/android/internal/telephony/util/WorkerThread;

    .line 125
    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sHandler:Landroid/os/Handler;

    .line 126
    sput-object v1, Lcom/android/internal/telephony/util/WorkerThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/util/WorkerThread;->ensureThread()V

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method protected whitelist onLooperPrepared()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/util/WorkerThread;->mInitLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 78
    return-void
.end method
