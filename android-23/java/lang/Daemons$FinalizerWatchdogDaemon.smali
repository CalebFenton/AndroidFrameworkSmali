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


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 219
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@2
    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    #@5
    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    #@7
    .line 218
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 222
    const-string/jumbo v0, "FinalizerWatchdogDaemon"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    #@6
    .line 221
    return-void
.end method

.method private static finalizerTimedOut(Ljava/lang/Object;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    const-string/jumbo v5, ".finalize() timed out after "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 295
    const-wide/16 v6, 0xa

    #@1a
    .line 294
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 295
    const-string/jumbo v5, " seconds"

    #@21
    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 296
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    #@2b
    invoke-direct {v3, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@2e
    .line 298
    .local v3, "syntheticException":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/Daemons$FinalizerDaemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@39
    .line 299
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@3c
    move-result-object v1

    #@3d
    .line 302
    .local v1, "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    invoke-static {}, Landroid/system/Os;->getpid()I

    #@40
    move-result v4

    #@41
    sget v5, Landroid/system/OsConstants;->SIGQUIT:I

    #@43
    invoke-static {v4, v5}, Landroid/system/Os;->kill(II)V

    #@46
    .line 304
    const-wide/16 v4, 0x1388

    #@48
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 308
    :goto_0
    if-nez v1, :cond_0

    #@4d
    .line 310
    invoke-static {v2, v3}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    .line 311
    const/4 v4, 0x2

    #@51
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    #@54
    .line 316
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@57
    move-result-object v4

    #@58
    invoke-interface {v1, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@5b
    .line 292
    return-void

    #@5c
    .line 305
    :catch_0
    move-exception v0

    #@5d
    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "failed to send SIGQUIT"

    #@60
    invoke-static {v4, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    goto :goto_0
.end method

.method private sleepFor(JJ)V
    .locals 11
    .param p1, "startNanos"    # J
    .param p3, "durationNanos"    # J

    #@0
    .prologue
    .line 266
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v8

    #@4
    sub-long v2, v8, p1

    #@6
    .line 267
    .local v2, "elapsedNanos":J
    sub-long v6, p3, v2

    #@8
    .line 268
    .local v6, "sleepNanos":J
    const-wide/32 v8, 0xf4240

    #@b
    div-long v4, v6, v8

    #@d
    .line 269
    .local v4, "sleepMills":J
    const-wide/16 v8, 0x0

    #@f
    cmp-long v1, v4, v8

    #@11
    if-gtz v1, :cond_1

    #@13
    .line 270
    return-void

    #@14
    .line 273
    :cond_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 274
    :catch_0
    move-exception v0

    #@19
    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 276
    return-void
.end method

.method private waitForFinalization()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 283
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@4
    move-result-object v3

    #@5
    invoke-static {v3}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)J

    #@8
    move-result-wide v0

    #@9
    .line 284
    .local v0, "startTime":J
    const-wide v4, 0x2540be400L

    #@e
    invoke-direct {p0, v0, v1, v4, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(JJ)V

    #@11
    .line 288
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@14
    move-result-object v3

    #@15
    invoke-static {v3}, Ljava/lang/Daemons$FinalizerDaemon;->-get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 289
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v3}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)J

    #@22
    move-result-wide v4

    #@23
    cmp-long v3, v4, v0

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 288
    :cond_0
    :goto_0
    return v2

    #@28
    .line 289
    :cond_1
    const/4 v2, 0x0

    #@29
    goto :goto_0
.end method

.method private waitForObject()Z
    .locals 3

    #@0
    .prologue
    .line 247
    :goto_0
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Ljava/lang/Daemons$FinalizerDaemon;->-get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 248
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@a
    .line 249
    const/4 v2, 0x1

    #@b
    return v2

    #@c
    .line 251
    :cond_0
    monitor-enter p0

    #@d
    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    goto :goto_0

    #@12
    .line 256
    :catch_0
    move-exception v0

    #@13
    .line 258
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    #@14
    monitor-exit p0

    #@15
    return v2

    #@16
    .line 251
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 227
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForObject()Z

    #@9
    move-result v2

    #@a
    .line 228
    .local v2, "waitSuccessful":Z
    if-eqz v2, :cond_0

    #@c
    .line 232
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForFinalization()Z

    #@f
    move-result v0

    #@10
    .line 233
    .local v0, "finalized":Z
    if-nez v0, :cond_0

    #@12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 234
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v3}, Ljava/lang/Daemons$FinalizerDaemon;->-get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .line 237
    .local v1, "finalizedObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@26
    .line 238
    invoke-static {v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimedOut(Ljava/lang/Object;)V

    #@29
    .line 225
    .end local v0    # "finalized":Z
    .end local v1    # "finalizedObject":Ljava/lang/Object;
    .end local v2    # "waitSuccessful":Z
    :cond_1
    return-void
.end method
