.class public Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mThread:Landroid/os/HandlerThread;

.field private blacklist mUnhandledException:Ljava/lang/Throwable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThread(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUnhandledException(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mUnhandledException:Ljava/lang/Throwable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 19
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    .line 31
    return-void
.end method

.method private static blacklist create(Ljava/lang/String;I)Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "priority"    # I

    .line 35
    new-instance v0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private blacklist getUncaughtExceptionIfAny()Ljava/lang/Throwable;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mUnhandledException:Ljava/lang/Throwable;

    return-object v0
.end method

.method private blacklist hasStarted()Z
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isAlive()Z
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    return v0
.end method

.method private blacklist joinThread()V
    .registers 3

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "joined":Z
    :goto_1
    if-nez v0, :cond_c

    .line 83
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_a

    .line 84
    const/4 v0, 0x1

    goto :goto_b

    .line 85
    :catch_a
    move-exception v1

    .line 86
    :goto_b
    goto :goto_1

    .line 88
    :cond_c
    return-void
.end method

.method private blacklist listenForUncaughtExceptionsForTesting()V
    .registers 3

    .line 104
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$3;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$3;-><init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 111
    return-void
.end method

.method private blacklist quitThreadSafely(J)V
    .registers 5
    .param p1, "nativeThread"    # J

    .line 65
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;-><init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;J)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 76
    return-void
.end method

.method private blacklist startAndInitialize(JJ)V
    .registers 13
    .param p1, "nativeThread"    # J
    .param p3, "nativeEvent"    # J

    .line 50
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->maybeStart()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "nativeThread":J
    .end local p3    # "nativeEvent":J
    .local v4, "nativeThread":J
    .local v6, "nativeEvent":J
    invoke-direct/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;-><init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;JJ)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist getLooper()Landroid/os/Looper;
    .registers 2

    .line 39
    nop

    .line 40
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public blacklist maybeStart()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 45
    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    return-void
.end method
