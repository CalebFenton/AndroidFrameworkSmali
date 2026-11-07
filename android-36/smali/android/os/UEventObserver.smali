.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEventThread;,
        Landroid/os/UEventObserver$UEvent;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UEventObserver"

.field private static greylist-max-o sThread:Landroid/os/UEventObserver$UEventThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeAddMatch(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeAddMatch(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveMatch(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeRemoveMatch(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetup()V
    .registers 0

    invoke-static {}, Landroid/os/UEventObserver;->nativeSetup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWaitForNextEvent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/UEventObserver;->nativeWaitForNextEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static greylist-max-o getThread()Landroid/os/UEventObserver$UEventThread;
    .registers 2

    .line 67
    const-class v0, Landroid/os/UEventObserver;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    if-nez v1, :cond_13

    .line 69
    new-instance v1, Landroid/os/UEventObserver$UEventThread;

    invoke-direct {v1}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    sput-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 70
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v1}, Landroid/os/UEventObserver$UEventThread;->start()V

    .line 72
    :cond_13
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    monitor-exit v0

    return-object v1

    .line 73
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static native greylist-max-o nativeAddMatch(Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeRemoveMatch(Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeSetup()V
.end method

.method private static native greylist-max-o nativeWaitForNextEvent()Ljava/lang/String;
.end method

.method private static greylist-max-o peekThread()Landroid/os/UEventObserver$UEventThread;
    .registers 2

    .line 77
    const-class v0, Landroid/os/UEventObserver;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    monitor-exit v0

    return-object v1

    .line 79
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    throw v0
.end method

.method public abstract greylist onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final greylist startObserving(Ljava/lang/String;)V
    .registers 4
    .param p1, "match"    # Ljava/lang/String;

    .line 100
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 104
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    move-result-object v0

    .line 105
    .local v0, "t":Landroid/os/UEventObserver$UEventThread;
    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V

    .line 106
    return-void

    .line 101
    .end local v0    # "t":Landroid/os/UEventObserver$UEventThread;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "match substring must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist stopObserving()V
    .registers 2

    .line 115
    invoke-static {}, Landroid/os/UEventObserver;->peekThread()Landroid/os/UEventObserver$UEventThread;

    move-result-object v0

    .line 116
    .local v0, "t":Landroid/os/UEventObserver$UEventThread;
    if-eqz v0, :cond_9

    .line 117
    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V

    .line 119
    :cond_9
    return-void
.end method
