.class Ljava/lang/Daemons$FinalizerWatchdogDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;


# instance fields
.field private needToWork:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->goToSleep()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->wakeUp()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 239
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@7
    .line 238
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 244
    const-string/jumbo v0, "FinalizerWatchdogDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 241
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z

    #@9
    .line 243
    return-void
.end method

.method private static finalizerTimedOut(Ljava/lang/Object;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, ".finalize() timed out after "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    .line 371
    const-wide/16 v6, 0xa

    #@1a
    .line 370
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    .line 371
    const-string/jumbo v6, " seconds"

    #@21
    .line 370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 372
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    #@2b
    invoke-direct {v4, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@2e
    .line 374
    .local v4, "syntheticException":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/Daemons$FinalizerDaemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@39
    .line 375
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@3c
    move-result-object v1

    #@3d
    .line 378
    .local v1, "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    invoke-static {}, Landroid/system/Os;->getpid()I

    #@40
    move-result v5

    #@41
    sget v6, Landroid/system/OsConstants;->SIGQUIT:I

    #@43
    invoke-static {v5, v6}, Landroid/system/Os;->kill(II)V

    #@46
    .line 380
    const-wide/16 v6, 0x1388

    #@48
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    .line 386
    :goto_0
    if-nez v1, :cond_0

    #@4d
    .line 388
    invoke-static {v3, v4}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    .line 389
    const/4 v5, 0x2

    #@51
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    #@54
    .line 394
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@57
    move-result-object v5

    #@58
    invoke-interface {v1, v5, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@5b
    .line 368
    return-void

    #@5c
    .line 381
    :catch_0
    move-exception v0

    #@5d
    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "failed to send SIGQUIT"

    #@60
    invoke-static {v5, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    goto :goto_0

    #@64
    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@65
    .local v2, "ignored":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private declared-synchronized getNeedToWork()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 297
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private declared-synchronized goToSleep()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 285
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 284
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method private sleepFor(J)Z
    .locals 13
    .param p1, "durationNanos"    # J

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4
    move-result-wide v8

    #@5
    .line 307
    .local v8, "startNanos":J
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8
    move-result-wide v10

    #@9
    sub-long v2, v10, v8

    #@b
    .line 308
    .local v2, "elapsedNanos":J
    sub-long v6, p1, v2

    #@d
    .line 309
    .local v6, "sleepNanos":J
    const-wide/32 v10, 0xf4240

    #@10
    div-long v4, v6, v10

    #@12
    .line 310
    .local v4, "sleepMills":J
    const-wide/16 v10, 0x0

    #@14
    cmp-long v10, v4, v10

    #@16
    if-gtz v10, :cond_1

    #@18
    .line 311
    const/4 v10, 0x1

    #@19
    return v10

    #@1a
    .line 314
    :cond_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@1d
    goto :goto_0

    #@1e
    .line 315
    :catch_0
    move-exception v0

    #@1f
    .line 316
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    #@22
    move-result v10

    #@23
    if-nez v10, :cond_0

    #@25
    .line 317
    return v12

    #@26
    .line 319
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    #@27
    .line 320
    .local v1, "ignored":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    #@2a
    move-result v10

    #@2b
    if-nez v10, :cond_0

    #@2d
    .line 321
    return v12
.end method

.method private declared-synchronized sleepUntilNeeded()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 267
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v2, :cond_0

    #@6
    .line 269
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    goto :goto_0

    #@a
    .line 270
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    #@c
    .line 272
    return v3

    #@d
    .line 273
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    #@e
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    monitor-exit p0

    #@f
    .line 274
    return v3

    #@10
    .line 277
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v2, 0x1

    #@11
    monitor-exit p0

    #@12
    return v2

    #@13
    :catchall_0
    move-exception v2

    #@14
    monitor-exit p0

    #@15
    throw v2
.end method

.method private waitForFinalization()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 334
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c
    move-result v1

    #@d
    int-to-long v2, v1

    #@e
    .line 336
    .local v2, "startCount":J
    const-wide v4, 0x2540be400L

    #@13
    invoke-direct {p0, v4, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(J)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 338
    return-object v6

    #@1a
    .line 340
    :cond_0
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->getNeedToWork()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2b
    move-result v1

    #@2c
    int-to-long v4, v1

    #@2d
    cmp-long v1, v4, v2

    #@2f
    if-nez v1, :cond_1

    #@31
    .line 356
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    .line 357
    .local v0, "finalizing":Ljava/lang/Object;
    const-wide/32 v4, 0x1dcd6500

    #@3c
    invoke-direct {p0, v4, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(J)Z

    #@3f
    .line 360
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->getNeedToWork()Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_1

    #@45
    .line 361
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@48
    move-result-object v1

    #@49
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@50
    move-result v1

    #@51
    int-to-long v4, v1

    #@52
    cmp-long v1, v4, v2

    #@54
    if-nez v1, :cond_1

    #@56
    .line 362
    return-object v0

    #@57
    .line 365
    .end local v0    # "finalizing":Ljava/lang/Object;
    :cond_1
    return-object v6
.end method

.method private declared-synchronized wakeUp()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z

    #@4
    .line 293
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 291
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 249
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepUntilNeeded()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 253
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForFinalization()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 254
    .local v0, "finalizing":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 255
    invoke-static {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimedOut(Ljava/lang/Object;)V

    #@1f
    .line 247
    .end local v0    # "finalizing":Ljava/lang/Object;
    :cond_1
    return-void
.end method
