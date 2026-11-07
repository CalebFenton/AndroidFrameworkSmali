.class public Lcom/android/internal/util/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ConcurrentUtils$DirectExecutor;
    }
.end annotation


# static fields
.field public static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/internal/util/ConcurrentUtils$DirectExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/ConcurrentUtils$DirectExecutor;-><init>(Lcom/android/internal/util/ConcurrentUtils-IA;)V

    sput-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .registers 4
    .param p0, "nThreads"    # I
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "linuxThreadPriority"    # I

    .line 55
    new-instance v0, Lcom/android/internal/util/ConcurrentUtils$1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/ConcurrentUtils$1;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    .registers 8
    .param p0, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeoutMs"    # J
    .param p3, "description"    # Ljava/lang/String;

    .line 110
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    nop

    .line 117
    return-void

    .line 111
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local p1    # "timeoutMs":J
    .end local p3    # "description":Ljava/lang/String;
    throw v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_23} :catch_23

    .line 113
    .restart local p0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local p1    # "timeoutMs":J
    .restart local p3    # "description":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interrupted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 86
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 90
    :catch_5
    move-exception v0

    .line 91
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1f
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "lock"    # Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    const-string v0, "Lock mustn\'t be held"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_b
    return-void
.end method

.method public static blacklist wtfIfLockNotHeld(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "lock"    # Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 133
    const-string v0, "Lock must be held"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_b
    return-void
.end method
