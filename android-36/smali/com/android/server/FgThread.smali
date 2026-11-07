.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static blacklist sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor blacklist <init>()V
    .registers 4

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.fg"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 47
    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .registers 5

    .line 50
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_38

    .line 51
    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 52
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    .line 53
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 54
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 55
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 57
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FgThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    sput-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 60
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_38
    return-void
.end method

.method public static blacklist get()Lcom/android/server/FgThread;
    .registers 2

    .line 63
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 65
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 77
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 78
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 79
    sget-object v1, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 80
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 70
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 71
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 72
    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
