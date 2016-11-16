.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEvent;,
        Landroid/os/UEventObserver$UEventThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UEventObserver"

.field private static sThread:Landroid/os/UEventObserver$UEventThread;


# direct methods
.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    #@0
    invoke-static {}, Landroid/os/UEventObserver;->nativeWaitForNextEvent()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "match"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/UEventObserver;->nativeAddMatch(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "match"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/os/UEventObserver;->nativeRemoveMatch(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3()V
    .locals 0

    #@0
    invoke-static {}, Landroid/os/UEventObserver;->nativeSetup()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    #@0
    .prologue
    .line 65
    const-class v1, Landroid/os/UEventObserver;

    #@2
    monitor-enter v1

    #@3
    .line 66
    :try_start_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 67
    new-instance v0, Landroid/os/UEventObserver$UEventThread;

    #@9
    invoke-direct {v0}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    #@c
    sput-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    #@e
    .line 68
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    #@10
    invoke-virtual {v0}, Landroid/os/UEventObserver$UEventThread;->start()V

    #@13
    .line 70
    :cond_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    .line 65
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private static native nativeAddMatch(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveMatch(Ljava/lang/String;)V
.end method

.method private static native nativeSetup()V
.end method

.method private static native nativeWaitForNextEvent()Ljava/lang/String;
.end method

.method private static peekThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    #@0
    .prologue
    .line 75
    const-class v0, Landroid/os/UEventObserver;

    #@2
    monitor-enter v0

    #@3
    .line 76
    :try_start_0
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 75
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 56
    return-void

    #@7
    .line 59
    :catchall_0
    move-exception v0

    #@8
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 59
    throw v0
.end method

.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final startObserving(Ljava/lang/String;)V
    .locals 3
    .param p1, "match"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 98
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "match substring must be non-empty"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 101
    :cond_1
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    #@14
    move-result-object v0

    #@15
    .line 102
    .local v0, "t":Landroid/os/UEventObserver$UEventThread;
    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V

    #@18
    .line 96
    return-void
.end method

.method public final stopObserving()V
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    #@3
    move-result-object v0

    #@4
    .line 112
    .local v0, "t":Landroid/os/UEventObserver$UEventThread;
    if-eqz v0, :cond_0

    #@6
    .line 113
    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V

    #@9
    .line 110
    :cond_0
    return-void
.end method
