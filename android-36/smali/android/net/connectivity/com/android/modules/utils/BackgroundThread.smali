.class public final Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerExecutor:Landroid/net/connectivity/com/android/modules/utils/HandlerExecutor;

.field private static blacklist sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 49
    const-class v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .registers 2

    .line 54
    sget-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    if-nez v0, :cond_26

    .line 55
    new-instance v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    .line 56
    sget-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->start()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    invoke-virtual {v1}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/net/connectivity/com/android/modules/utils/HandlerExecutor;

    sget-object v1, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/modules/utils/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sHandlerExecutor:Landroid/net/connectivity/com/android/modules/utils/HandlerExecutor;

    .line 60
    :cond_26
    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;
    .registers 2

    .line 69
    sget-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->ensureThreadLocked()V

    .line 71
    sget-object v1, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sInstance:Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 95
    sget-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->ensureThreadLocked()V

    .line 97
    sget-object v1, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sHandlerExecutor:Landroid/net/connectivity/com/android/modules/utils/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 82
    sget-object v0, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->ensureThreadLocked()V

    .line 84
    sget-object v1, Landroid/net/connectivity/com/android/modules/utils/BackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
