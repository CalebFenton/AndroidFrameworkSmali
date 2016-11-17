.class public final Lcom/android/internal/os/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/internal/os/BackgroundThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "android.bg"

    #@3
    const/16 v1, 0xa

    #@5
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@8
    .line 30
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    #@0
    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 36
    new-instance v0, Lcom/android/internal/os/BackgroundThread;

    #@6
    invoke-direct {v0}, Lcom/android/internal/os/BackgroundThread;-><init>()V

    #@9
    sput-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    #@b
    .line 37
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->start()V

    #@10
    .line 38
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    const-wide/16 v2, 0x40

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    #@1b
    .line 39
    new-instance v0, Landroid/os/Handler;

    #@1d
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@26
    sput-object v0, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    #@28
    .line 34
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/internal/os/BackgroundThread;
    .locals 2

    #@0
    .prologue
    .line 44
    const-class v1, Lcom/android/internal/os/BackgroundThread;

    #@2
    monitor-enter v1

    #@3
    .line 45
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadLocked()V

    #@6
    .line 46
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 44
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    #@0
    .prologue
    .line 51
    const-class v1, Lcom/android/internal/os/BackgroundThread;

    #@2
    monitor-enter v1

    #@3
    .line 52
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadLocked()V

    #@6
    .line 53
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 51
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
