.class public final Lcom/android/server/DisplayThread;
.super Lcom/android/server/ServiceThread;
.source "DisplayThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/DisplayThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "android.display"

    #@3
    const/4 v1, -0x4

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@8
    .line 32
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    #@0
    .prologue
    .line 37
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 38
    new-instance v0, Lcom/android/server/DisplayThread;

    #@6
    invoke-direct {v0}, Lcom/android/server/DisplayThread;-><init>()V

    #@9
    sput-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    #@b
    .line 39
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    #@d
    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->start()V

    #@10
    .line 40
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    #@12
    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    const-wide/16 v2, 0x40

    #@18
    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    #@1b
    .line 41
    new-instance v0, Landroid/os/Handler;

    #@1d
    sget-object v1, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@26
    sput-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;

    #@28
    .line 36
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/DisplayThread;
    .locals 2

    #@0
    .prologue
    .line 46
    const-class v1, Lcom/android/server/DisplayThread;

    #@2
    monitor-enter v1

    #@3
    .line 47
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    #@6
    .line 48
    sget-object v0, Lcom/android/server/DisplayThread;->sInstance:Lcom/android/server/DisplayThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 46
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
    .line 53
    const-class v1, Lcom/android/server/DisplayThread;

    #@2
    monitor-enter v1

    #@3
    .line 54
    :try_start_0
    invoke-static {}, Lcom/android/server/DisplayThread;->ensureThreadLocked()V

    #@6
    .line 55
    sget-object v0, Lcom/android/server/DisplayThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    .line 53
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
