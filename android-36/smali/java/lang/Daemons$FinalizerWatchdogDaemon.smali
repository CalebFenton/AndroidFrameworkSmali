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
.field static final blacklist FINALIZER_DAEMON:I = 0x1

.field private static final greylist INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

.field static final blacklist RQ_DAEMON:I = 0x2

.field private static final blacklist TOLERATED_REFERENCE_QUEUE_TIMEOUTS:I = 0x5

.field private static final blacklist VH_ACTION:Ljava/lang/invoke/VarHandle;

.field private static final blacklist observedReferenceQueueTimeouts:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist activeWatchees:I

.field private blacklist finalizerTimeoutNs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmonitoringNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->monitoringNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmonitoringNotNeeded(Ljava/lang/Daemons$FinalizerWatchdogDaemon;I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->monitoringNotNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .registers 1

    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 428
    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    .line 432
    :try_start_7
    const-class v0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;

    .line 434
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->privateLookupIn(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    const-class v1, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;

    const-string v2, "action"

    const-class v3, Ljava/lang/Runnable;

    .line 435
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->VH_ACTION:Ljava/lang/invoke/VarHandle;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_1d} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1d} :catch_27

    .line 439
    nop

    .line 449
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->observedReferenceQueueTimeouts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 437
    :catch_27
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "PhantomCleanableRef should have action field"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 452
    const-string v0, "FinalizerWatchdogDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    .line 444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    .line 453
    return-void
.end method

.method private static blacklist finalizerTimeoutException(Ljava/lang/Object;)Ljava/util/concurrent/TimeoutException;
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;

    .line 655
    if-nez p0, :cond_a

    .line 656
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Unknown finalizer timed out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 658
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v0, "messageBuilder":Ljava/lang/StringBuilder;
    instance-of v1, p0, Ljava/lang/ref/Cleaner$Cleanable;

    if-eqz v1, :cond_26

    .line 661
    sget-object v1, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->VH_ACTION:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 663
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".finalize()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :goto_37
    const-string v1, " timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->getFinalizerTimeoutMs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 671
    .local v1, "syntheticException":Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Daemons$FinalizerDaemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/TimeoutException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 672
    return-object v1
.end method

.method private static blacklist finalizingObjectAsString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 676
    if-nez p0, :cond_5

    .line 677
    const-string v0, "unknown"

    return-object v0

    .line 679
    :cond_5
    instance-of v0, p0, Ljava/lang/ref/Cleaner$Cleanable;

    if-eqz v0, :cond_15

    .line 680
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->VH_ACTION:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 682
    :cond_15
    invoke-static {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized blacklist isActive(I)Z
    .registers 3
    .param p1, "whichDaemon"    # I

    monitor-enter p0

    .line 513
    :try_start_1
    iget v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .line 513
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .end local p1    # "whichDaemon":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private declared-synchronized blacklist monitoringNeeded(I)V
    .registers 4
    .param p1, "whichDaemon"    # I

    monitor-enter p0

    .line 504
    :try_start_1
    iget v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I

    .line 505
    .local v0, "oldWatchees":I
    iget v1, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I

    or-int/2addr v1, p1

    iput v1, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I

    .line 507
    if-nez v0, :cond_d

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 510
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    :cond_d
    monitor-exit p0

    return-void

    .line 503
    .end local v0    # "oldWatchees":I
    .end local p1    # "whichDaemon":I
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private declared-synchronized blacklist monitoringNotNeeded(I)V
    .registers 4
    .param p1, "whichDaemon"    # I

    monitor-enter p0

    .line 497
    :try_start_1
    iget v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 498
    monitor-exit p0

    return-void

    .line 496
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .end local p1    # "whichDaemon":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method private static blacklist refQueueTimeoutException(Ljava/lang/String;)Ljava/util/concurrent/TimeoutException;
    .registers 3
    .param p0, "target"    # Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReferenceQueueDaemon timed out while targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static blacklist safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 553
    invoke-static {p0}, Llibcore/util/NativeAllocationRegistry;->isCleanerThunk(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    return-object v0
.end method

.method private blacklist sleepForNanos(J)Z
    .registers 15
    .param p1, "durationNanos"    # J

    .line 523
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 525
    .local v0, "startNanos":J
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 526
    .local v2, "elapsedNanos":J
    sub-long v4, p1, v2

    .line 527
    .local v4, "sleepNanos":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_13

    .line 528
    const/4 v6, 0x1

    return v6

    .line 532
    :cond_13
    const-wide/32 v6, 0xf4240

    add-long v8, v4, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    div-long/2addr v8, v6

    .line 534
    .local v8, "sleepMillis":J
    const/4 v6, 0x0

    :try_start_1d
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_20} :catch_21

    .line 543
    :goto_20
    goto :goto_32

    .line 539
    :catch_21
    move-exception v7

    .line 540
    .local v7, "ignored":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v10

    if-nez v10, :cond_32

    .line 541
    return v6

    .line 535
    .end local v7    # "ignored":Ljava/lang/OutOfMemoryError;
    :catch_29
    move-exception v7

    .line 536
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v10

    if-nez v10, :cond_31

    .line 537
    return v6

    .line 536
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_31
    goto :goto_20

    .line 544
    .end local v2    # "elapsedNanos":J
    .end local v4    # "sleepNanos":J
    .end local v8    # "sleepMillis":J
    :cond_32
    :goto_32
    goto :goto_4
.end method

.method private declared-synchronized greylist-max-o sleepUntilNeeded()Z
    .registers 3

    monitor-enter p0

    .line 479
    nop

    :goto_2
    :try_start_2
    iget v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->activeWatchees:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_14

    if-nez v0, :cond_11

    .line 481
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 487
    goto :goto_2

    .line 485
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    :catch_b
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    monitor-exit p0

    return v0

    .line 482
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    :catch_e
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    return v0

    .line 489
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_11
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 478
    .end local p0    # "this":Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static blacklist timedOut(Ljava/util/concurrent/TimeoutException;)V
    .registers 3
    .param p0, "exception"    # Ljava/util/concurrent/TimeoutException;

    .line 694
    :try_start_0
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->SIGQUIT:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V

    .line 696
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    .line 699
    :catch_f
    move-exception v0

    goto :goto_18

    .line 697
    :catch_11
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to send SIGQUIT"

    invoke-static {v1, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    nop

    .line 714
    :goto_18
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 715
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 717
    invoke-virtual {p0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 724
    :cond_2f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->dispatchUncaughtException(Ljava/lang/Throwable;)V

    .line 725
    return-void
.end method

.method private blacklist waitForProgress()Ljava/util/concurrent/TimeoutException;
    .registers 19

    .line 569
    move-object/from16 v0, p0

    iget-wide v1, v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    .line 570
    nop

    .line 571
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getFinalizerTimeoutMs()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iput-wide v1, v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    .line 573
    iget-wide v1, v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    invoke-static {v1, v2}, Ljava/lang/Daemons;->-$$Nest$sfputMAX_FINALIZE_NANOS(J)V

    .line 578
    :cond_1e
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 579
    .local v1, "finalizerStartCount":I
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v3

    .line 580
    .local v3, "monitorFinalizer":Z
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$ReferenceQueueDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 581
    .local v4, "refQueueStartCount":I
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v6

    .line 583
    .local v6, "monitorRefQueue":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 584
    .local v7, "startMillis":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 591
    .local v9, "startNanos":J
    const/4 v11, 0x5

    .line 592
    .local v11, "NUM_WAKEUPS":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_4a
    const/4 v14, 0x5

    if-gt v12, v14, :cond_a5

    .line 593
    const/4 v15, 0x0

    iget-wide v13, v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    const-wide/16 v16, 0x5

    div-long v13, v13, v16

    invoke-direct {v0, v13, v14}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepForNanos(J)Z

    move-result v13

    if-nez v13, :cond_5b

    .line 595
    return-object v15

    .line 597
    :cond_5b
    if-eqz v3, :cond_74

    invoke-direct {v0, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v13

    if-eqz v13, :cond_74

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    .line 598
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-ne v13, v1, :cond_74

    .line 600
    move/from16 v16, v3

    goto :goto_a0

    .line 602
    :cond_74
    if-eqz v6, :cond_8d

    invoke-direct {v0, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v13

    if-eqz v13, :cond_8d

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$ReferenceQueueDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    .line 603
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-ne v13, v4, :cond_8d

    .line 605
    move/from16 v16, v3

    goto :goto_a0

    .line 609
    :cond_8d
    const/4 v13, 0x5

    if-ge v12, v13, :cond_9e

    .line 610
    iget-wide v13, v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutNs:J

    div-long v13, v13, v16

    rsub-int/lit8 v2, v12, 0x5

    move/from16 v16, v3

    .end local v3    # "monitorFinalizer":Z
    .local v16, "monitorFinalizer":Z
    int-to-long v2, v2

    mul-long/2addr v13, v2

    invoke-direct {v0, v13, v14}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepForNanos(J)Z

    .line 611
    return-object v15

    .line 609
    .end local v16    # "monitorFinalizer":Z
    .restart local v3    # "monitorFinalizer":Z
    :cond_9e
    move/from16 v16, v3

    .line 592
    .end local v3    # "monitorFinalizer":Z
    .restart local v16    # "monitorFinalizer":Z
    :goto_a0
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_4a

    .end local v16    # "monitorFinalizer":Z
    .restart local v3    # "monitorFinalizer":Z
    :cond_a5
    move/from16 v16, v3

    const/4 v15, 0x0

    .line 616
    .end local v3    # "monitorFinalizer":Z
    .end local v12    # "i":I
    .restart local v16    # "monitorFinalizer":Z
    if-eqz v16, :cond_143

    invoke-direct {v0, v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_143

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v1, :cond_143

    .line 618
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    iget v2, v2, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    sget v3, Ljava/lang/Daemons$FinalizerDaemon;->LOGGING:I

    if-ne v2, v3, :cond_d0

    .line 620
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    sget v3, Ljava/lang/Daemons$FinalizerDaemon;->TIMED_OUT:I

    iput v3, v2, Ljava/lang/Daemons$FinalizerDaemon;->exceptionLoggingState:I

    .line 626
    :cond_d0
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$fgetfinalizingObject(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v2

    .line 627
    .local v2, "finalizing":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Was finalizing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizingObjectAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", now finalizing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Daemons$FinalizerDaemon;->-$$Nest$fgetfinalizingObject(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v5

    .line 629
    invoke-static {v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizingObjectAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-static {v3}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total elapsed millis: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-static {v3}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total elapsed nanos: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 634
    invoke-static {v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimeoutException(Ljava/lang/Object;)Ljava/util/concurrent/TimeoutException;

    move-result-object v3

    return-object v3

    .line 636
    .end local v2    # "finalizing":Ljava/lang/Object;
    :cond_143
    if-eqz v6, :cond_19d

    invoke-direct {v0, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_19d

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$fgetprogressCounter(Ljava/lang/Daemons$ReferenceQueueDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 637
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v4, :cond_19d

    .line 642
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-$$Nest$sfgetINSTANCE()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Daemons$ReferenceQueueDaemon;->currentlyProcessing()Ljava/lang/Object;

    move-result-object v2

    .line 643
    .local v2, "current":Ljava/lang/Object;
    if-nez v2, :cond_166

    const-string v3, "unknown"

    goto :goto_16a

    :cond_166
    invoke-static {v2}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "currentTarget":Ljava/lang/String;
    :goto_16a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ReferenceQueueDaemon timed out while targeting "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ". Total nanos: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 645
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-static {v5}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 646
    sget-object v5, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->observedReferenceQueueTimeouts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    const/4 v13, 0x5

    if-le v5, v13, :cond_19d

    .line 648
    invoke-static {v3}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->refQueueTimeoutException(Ljava/lang/String;)Ljava/util/concurrent/TimeoutException;

    move-result-object v5

    return-object v5

    .line 651
    .end local v2    # "current":Ljava/lang/Object;
    .end local v3    # "currentTarget":Ljava/lang/String;
    :cond_19d
    return-object v15
.end method


# virtual methods
.method blacklist resetTimeouts()V
    .registers 3

    .line 456
    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->observedReferenceQueueTimeouts:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 457
    return-void
.end method

.method public greylist-max-o runInternal()V
    .registers 3

    .line 460
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 461
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepUntilNeeded()Z

    move-result v0

    if-nez v0, :cond_e

    .line 463
    goto :goto_1

    .line 465
    :cond_e
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForProgress()Ljava/util/concurrent/TimeoutException;

    move-result-object v0

    .line 466
    .local v0, "exception":Ljava/util/concurrent/TimeoutException;
    if-eqz v0, :cond_1e

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 467
    invoke-static {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->timedOut(Ljava/util/concurrent/TimeoutException;)V

    .line 468
    goto :goto_1f

    .line 470
    .end local v0    # "exception":Ljava/util/concurrent/TimeoutException;
    :cond_1e
    goto :goto_1

    .line 471
    :cond_1f
    :goto_1f
    return-void
.end method
