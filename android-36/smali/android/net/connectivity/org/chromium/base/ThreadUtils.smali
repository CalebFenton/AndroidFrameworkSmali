.class public Landroid/net/connectivity/org/chromium/base/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sInstrumentationThreadForTesting:Ljava/lang/Thread;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sThreadAssertsDisabledForTesting:Z

.field private static volatile blacklist sUiThreadHandler:Landroid/os/Handler;

.field private static blacklist sUiThreadInitializer:Ljava/lang/Throwable;

.field private static volatile blacklist sWillOverride:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstrumentationThreadForTesting()Ljava/lang/Thread;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sInstrumentationThreadForTesting:Ljava/lang/Thread;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadAssertsDisabledForTesting()Z
    .registers 1

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    nop

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist assertOnBackgroundThread()V
    .registers 1

    .line 279
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    if-eqz v0, :cond_5

    return-void

    .line 281
    :cond_5
    nop

    .line 282
    return-void
.end method

.method public static blacklist assertOnUiThread()V
    .registers 1

    .line 255
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    if-eqz v0, :cond_5

    return-void

    .line 257
    :cond_5
    nop

    .line 258
    return-void
.end method

.method public static blacklist checkUiThread()V
    .registers 2

    .line 268
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 269
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_13
    :goto_13
    return-void
.end method

.method public static blacklist clearUiThreadForTesting()V
    .registers 1

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sWillOverride:Z

    .line 114
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->resetUiThreadForTesting()V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    .line 116
    sput-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadInitializer:Ljava/lang/Throwable;

    .line 117
    return-void
.end method

.method public static blacklist getUiThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 158
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    return-object v0

    .line 160
    :cond_7
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sWillOverride:Z

    if-nez v0, :cond_15

    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->setUiThread(Landroid/os/Looper;)V

    .line 164
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    return-object v0

    .line 161
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did not yet override the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getUiThreadLooper()Landroid/os/Looper;
    .registers 1

    .line 328
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hasSubtleSideEffectsSetThreadAssertsDisabledForTesting(Z)V
    .registers 2
    .param p0, "disabled"    # Z

    .line 295
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    .line 296
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method private static blacklist isThreadPriorityAudio(I)Z
    .registers 3
    .param p0, "tid"    # I

    .line 344
    invoke-static {p0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, -0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$hasSubtleSideEffectsSetThreadAssertsDisabledForTesting$0()V
    .registers 1

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    return-void
.end method

.method static synthetic blacklist lambda$setThreadAssertsDisabledForTesting$1()V
    .registers 1

    .line 309
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    return-void
.end method

.method public static blacklist postOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 224
    .local p0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 225
    return-object p0
.end method

.method public static blacklist postOnUiThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 235
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public static blacklist postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 246
    const/4 v0, 0x7

    invoke-static {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    .line 247
    return-void
.end method

.method public static blacklist recordInstrumentationThreadForTesting()V
    .registers 1

    .line 152
    nop

    .line 153
    nop

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sInstrumentationThreadForTesting:Ljava/lang/Thread;

    .line 155
    return-void
.end method

.method public static blacklist runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 202
    .local p0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 203
    return-object p0
.end method

.method public static blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 213
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public static blacklist runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 191
    .local p0, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runSynchronously(ILjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 177
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->runSynchronously(ILjava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public static blacklist runningOnInstrumentationThread()Z
    .registers 2

    .line 323
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sInstrumentationThreadForTesting:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sInstrumentationThreadForTesting:Ljava/lang/Thread;

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 323
    :goto_f
    return v0
.end method

.method public static blacklist runningOnUiThread()Z
    .registers 2

    .line 316
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist setThreadAssertsDisabledForTesting(Z)V
    .registers 2
    .param p0, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sThreadAssertsDisabledForTesting:Z

    .line 309
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public static blacklist setThreadPriorityAudio(I)V
    .registers 2
    .param p0, "tid"    # I

    .line 334
    const/16 v0, -0x10

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 335
    return-void
.end method

.method public static blacklist setUiThread(Landroid/os/Looper;)V
    .registers 5
    .param p0, "looper"    # Landroid/os/Looper;

    .line 121
    nop

    .line 122
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_4
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_20

    .line 124
    sget-boolean v1, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v1, :cond_15

    .line 125
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "This is who set sUiThreadHandler."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadInitializer:Ljava/lang/Throwable;

    .line 127
    :cond_15
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    .local v1, "uiThreadHandler":Landroid/os/Handler;
    sput-object v1, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    .line 132
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->onUiThreadReady()V

    .end local v1    # "uiThreadHandler":Landroid/os/Handler;
    goto :goto_69

    .line 133
    :cond_20
    sget-object v1, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, p0, :cond_69

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI thread looper is already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    .line 137
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Main thread looper is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), cannot set to new looper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "exception":Ljava/lang/RuntimeException;
    sget-boolean v2, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v2, :cond_67

    .line 143
    sget-object v2, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadInitializer:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    :cond_67
    nop

    .end local p0    # "looper":Landroid/os/Looper;
    throw v1

    .line 133
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .restart local p0    # "looper":Landroid/os/Looper;
    :cond_69
    :goto_69
    nop

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public static blacklist setWillOverrideUiThread()V
    .registers 3

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sWillOverride:Z

    .line 106
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_16

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    goto :goto_16

    .line 107
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UI Thread already set"

    sget-object v2, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->sUiThreadInitializer:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_16
    :goto_16
    return-void
.end method
