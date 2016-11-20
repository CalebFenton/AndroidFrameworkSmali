.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "android.ui"

    #@3
    const/4 v1, -0x2

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@8
    .line 31
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    #@0
    .prologue
    .line 36
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 37
    new-instance v0, Lcom/android/server/UiThread;

    #@6
    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    #@9
    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    #@b
    .line 38
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    #@d
    invoke-virtual {v0}, Lcom/android/server/UiThread;->start()V

    #@10
    .line 39
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    #@12
    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    const-wide/16 v2, 0x40

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    #@1b
    .line 40
    new-instance v0, Landroid/os/Handler;

    #@1d
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@26
    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    #@28
    .line 35
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .locals 2

    #@0
    .prologue
    .line 45
    const-class v1, Lcom/android/server/UiThread;

    #@2
    monitor-enter v1

    #@3
    .line 46
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    #@6
    .line 47
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 45
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
    .line 52
    const-class v1, Lcom/android/server/UiThread;

    #@2
    monitor-enter v1

    #@3
    .line 53
    :try_start_0
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    #@6
    .line 54
    sget-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 52
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
