.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "android.fg"

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@8
    .line 34
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 40
    new-instance v0, Lcom/android/server/FgThread;

    #@6
    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    #@9
    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    #@b
    .line 41
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    #@d
    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    #@10
    .line 42
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    #@12
    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    const-wide/16 v2, 0x40

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    #@1b
    .line 43
    new-instance v0, Landroid/os/Handler;

    #@1d
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@26
    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    #@28
    .line 38
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .locals 2

    #@0
    .prologue
    .line 48
    const-class v1, Lcom/android/server/UiThread;

    #@2
    monitor-enter v1

    #@3
    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    #@6
    .line 50
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 48
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
    .line 55
    const-class v1, Lcom/android/server/UiThread;

    #@2
    monitor-enter v1

    #@3
    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    #@6
    .line 57
    sget-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 55
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
