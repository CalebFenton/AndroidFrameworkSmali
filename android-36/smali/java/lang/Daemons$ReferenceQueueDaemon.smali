.class Ljava/lang/Daemons$ReferenceQueueDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueDaemon"
.end annotation


# static fields
.field private static final greylist INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;


# instance fields
.field private final blacklist progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetprogressCounter(Ljava/lang/Daemons$ReferenceQueueDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Ljava/lang/Daemons$ReferenceQueueDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;
    .registers 1

    sget-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 232
    const-string v0, "ReferenceQueueDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Daemons$ReferenceQueueDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 233
    return-void
.end method


# virtual methods
.method blacklist currentlyProcessing()Ljava/lang/Object;
    .registers 2

    .line 291
    invoke-static {}, Ljava/lang/ref/ReferenceQueue;->getCurrentTarget()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o runInternal()V
    .registers 11

    .line 236
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 239
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->resetTimeouts()V

    .line 241
    invoke-static {}, Ldalvik/system/VMRuntime;->getFullGcCount()J

    move-result-wide v2

    .line 243
    .local v2, "lastGcCount":J
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v4, 0x0

    .line 247
    .local v4, "runPostCleanupCallbacks":Z
    :try_start_1b
    const-class v5, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v5
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1e} :catch_74

    .line 248
    :try_start_1e
    sget-object v6, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v6, :cond_4e

    .line 249
    invoke-static {}, Ldalvik/system/VMRuntime;->getFullGcCount()J

    move-result-wide v6

    .line 250
    .local v6, "gcCount":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_2d

    .line 251
    move-wide v2, v6

    .line 252
    const/4 v4, 0x1

    goto :goto_4e

    .line 254
    :cond_2d
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v8

    invoke-static {v8, v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNotNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 258
    iget-object v8, p0, Ljava/lang/Daemons$ReferenceQueueDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 260
    :cond_39
    const-class v8, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 261
    sget-object v8, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eqz v8, :cond_39

    .line 262
    iget-object v8, p0, Ljava/lang/Daemons$ReferenceQueueDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 263
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v8

    invoke-static {v8, v1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 267
    .end local v6    # "gcCount":J
    :cond_4e
    :goto_4e
    if-nez v4, :cond_5c

    .line 268
    sget-object v6, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;
    :try_end_52
    .catchall {:try_start_1e .. :try_end_52} :catchall_71

    .line 269
    .end local v0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .local v6, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v0, 0x0

    :try_start_53
    sput-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_57

    move-object v0, v6

    goto :goto_5c

    .line 271
    :catchall_57
    move-exception v0

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    goto :goto_72

    .end local v6    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .restart local v0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_5c
    :goto_5c
    :try_start_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_71

    .line 272
    if-eqz v4, :cond_62

    .line 273
    :try_start_5f
    invoke-static {}, Ldalvik/system/VMRuntime;->onPostCleanup()V

    .line 275
    :cond_62
    if-eqz v0, :cond_7c

    .line 276
    iget-object v5, p0, Ljava/lang/Daemons$ReferenceQueueDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v5}, Ljava/lang/ref/ReferenceQueue;->enqueuePending(Ljava/lang/ref/Reference;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 277
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->resetTimeouts()V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_70} :catch_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5f .. :try_end_70} :catch_74

    goto :goto_7c

    .line 271
    :catchall_71
    move-exception v6

    :goto_72
    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    .end local v0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .end local v2    # "lastGcCount":J
    .end local v4    # "runPostCleanupCallbacks":Z
    .end local p0    # "this":Ljava/lang/Daemons$ReferenceQueueDaemon;
    :try_start_73
    throw v6
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_74} :catch_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_73 .. :try_end_74} :catch_74

    .line 281
    .restart local v0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .restart local v2    # "lastGcCount":J
    .restart local v4    # "runPostCleanupCallbacks":Z
    .restart local p0    # "this":Ljava/lang/Daemons$ReferenceQueueDaemon;
    :catch_74
    move-exception v5

    .line 285
    .local v5, "ignored":Ljava/lang/OutOfMemoryError;
    const-string v6, "Ignoring unexpected OOME in ReferenceQueueDaemon"

    invoke-static {v6}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    goto :goto_7d

    .line 279
    .end local v5    # "ignored":Ljava/lang/OutOfMemoryError;
    :catch_7b
    move-exception v5

    .line 286
    :cond_7c
    :goto_7c
    nop

    .line 287
    .end local v0    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .end local v4    # "runPostCleanupCallbacks":Z
    :goto_7d
    goto :goto_13

    .line 288
    :cond_7e
    return-void
.end method
