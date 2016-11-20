.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "ConnectivityThread.java"


# static fields
.field private static sInstance:Landroid/net/ConnectivityThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "ConnectivityThread"

    #@3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@6
    .line 32
    return-void
.end method

.method public static get()Landroid/net/ConnectivityThread;
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstance()Landroid/net/ConnectivityThread;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static declared-synchronized getInstance()Landroid/net/ConnectivityThread;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/net/ConnectivityThread;

    #@2
    monitor-enter v1

    #@3
    .line 37
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 38
    new-instance v0, Landroid/net/ConnectivityThread;

    #@9
    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    #@c
    sput-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    #@e
    .line 39
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    #@10
    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->start()V

    #@13
    .line 41
    :cond_0
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public static getInstanceLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstance()Landroid/net/ConnectivityThread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
