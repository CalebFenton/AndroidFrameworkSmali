.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final greylist INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

.field public static blacklist LOGGING:I

.field public static blacklist NONE:I

.field public static blacklist TIMED_OUT:I


# instance fields
.field public volatile blacklist exceptionLoggingState:I

.field private greylist finalizingObject:Ljava/lang/Object;

.field private final greylist-max-o progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final greylist-max-o queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfinalizingObject(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprogressCounter(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;
    .registers 1

    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    .line 306
    const/4 v0, 0x0

    sput v0, Ljava/lang/Daemons$FinalizerDaemon;->NONE:I

    .line 307
    const/4 v0, 0x1

    sput v0, Ljava/lang/Daemons$FinalizerDaemon;->LOGGING:I

    .line 308
    const/4 v0, 0x2

    sput v0, Ljava/lang/Daemons$FinalizerDaemon;->TIMED_OUT:I

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 312
    const-string v0, "FinalizerDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    .line 298
    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 299
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 309
    sget v0, Ljava/lang/Daemons$FinalizerDaemon;->NONE:I

    iput v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    .line 313
    return-void
.end method

.method private blacklist doClean(Ljava/lang/ref/Cleaner$Cleanable;)V
    .registers 4
    .param p1, "cleanable"    # Ljava/lang/ref/Cleaner$Cleanable;

    .line 405
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 409
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_8
    move-exception v1

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 410
    throw v1
.end method

.method private greylist-max-o doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference<",
            "*>;)V"
        }
    .end annotation

    .line 383
    .local p1, "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    .line 384
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    .line 387
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->finalize()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 398
    :goto_e
    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 399
    sget v1, Ljava/lang/Daemons$FinalizerDaemon;->NONE:I

    iput v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    .line 400
    goto :goto_26

    .line 388
    :catchall_15
    move-exception v2

    .line 390
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_16
    sget v3, Ljava/lang/Daemons$FinalizerDaemon;->LOGGING:I

    iput v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    .line 391
    const-string v3, "Uncaught exception thrown by finalizer"

    invoke-static {v3, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    iget v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    sget v4, Ljava/lang/Daemons$FinalizerDaemon;->TIMED_OUT:I

    if-eq v3, v4, :cond_27

    .end local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_e

    .line 401
    :goto_26
    return-void

    .line 394
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_27
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Timed out logging finalizer exception"

    invoke-direct {v3, v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "object":Ljava/lang/Object;
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerDaemon;
    .end local p1    # "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    throw v3
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2f

    .line 398
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "object":Ljava/lang/Object;
    .restart local p0    # "this":Ljava/lang/Daemons$FinalizerDaemon;
    .restart local p1    # "reference":Ljava/lang/ref/FinalizerReference;, "Ljava/lang/ref/FinalizerReference<*>;"
    :catchall_2f
    move-exception v2

    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 399
    sget v1, Ljava/lang/Daemons$FinalizerDaemon;->NONE:I

    iput v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    .line 400
    throw v2
.end method

.method private blacklist processReference(Ljava/lang/Object;)V
    .registers 5
    .param p1, "ref"    # Ljava/lang/Object;

    .line 364
    instance-of v0, p1, Ljava/lang/ref/FinalizerReference;

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Ljava/lang/ref/FinalizerReference;

    .line 365
    .local v0, "finalizingReference":Ljava/lang/ref/FinalizerReference;
    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 367
    :try_start_d
    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_16

    .line 371
    iget-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 372
    goto :goto_29

    .line 371
    :catchall_16
    move-exception v1

    iget-object v2, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 372
    throw v1

    .line 373
    .end local v0    # "finalizingReference":Ljava/lang/ref/FinalizerReference;
    :cond_1d
    instance-of v0, p1, Ljava/lang/ref/Cleaner$Cleanable;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/lang/ref/Cleaner$Cleanable;

    .line 374
    .local v0, "cleanableReference":Ljava/lang/ref/Cleaner$Cleanable;
    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 375
    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doClean(Ljava/lang/ref/Cleaner$Cleanable;)V

    .line 379
    .end local v0    # "cleanableReference":Ljava/lang/ref/Cleaner$Cleanable;
    :goto_29
    return-void

    .line 377
    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class was placed into queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o runInternal()V
    .registers 5

    .line 328
    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 330
    .local v0, "localProgressCounter":I
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 332
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 336
    :try_start_14
    iget-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 337
    .local v1, "nextReference":Ljava/lang/Object;
    if-eqz v1, :cond_27

    .line 338
    iget-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 339
    invoke-direct {p0, v1}, Ljava/lang/Daemons$FinalizerDaemon;->processReference(Ljava/lang/Object;)V

    goto :goto_58

    .line 341
    :cond_27
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    .line 343
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNotNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 347
    iget-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 348
    iget-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v3

    .line 349
    .end local v1    # "nextReference":Ljava/lang/Object;
    .local v3, "nextReference":Ljava/lang/Object;
    iget-object v1, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 350
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-$$Nest$mmonitoringNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V

    .line 352
    invoke-direct {p0, v3}, Ljava/lang/Daemons$FinalizerDaemon;->processReference(Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_4f} :catch_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_4f} :catch_50

    goto :goto_58

    .line 356
    .end local v3    # "nextReference":Ljava/lang/Object;
    :catch_50
    move-exception v1

    .line 358
    .local v1, "ignored":Ljava/lang/OutOfMemoryError;
    const-string v3, "Ignoring unexpected OOME in FinalizerDaemon"

    invoke-static {v3}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .end local v1    # "ignored":Ljava/lang/OutOfMemoryError;
    goto :goto_58

    .line 354
    :catch_57
    move-exception v1

    .line 359
    :goto_58
    goto :goto_e

    .line 361
    :cond_59
    return-void
.end method
