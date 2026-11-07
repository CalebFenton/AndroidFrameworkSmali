.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$Aux;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist ABNORMAL:I = 0x10000

.field private static final blacklist AUX:J

.field static final blacklist DONE:I = -0x80000000

.field static final blacklist INTERRUPTIBLE:I = 0x2

.field static final blacklist POOLSUBMIT:I = 0x40000

.field static final blacklist RAN:I = 0x1

.field static final greylist-max-o SMASK:I = 0xffff

.field private static final greylist-max-o STATUS:J

.field static final blacklist THROWN:I = 0x20000

.field static final blacklist TIMED:I = 0x4

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field static final blacklist UNCOMPENSATE:I = 0x10000

.field private static final whitelist serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field private volatile transient blacklist aux:Ljava/util/concurrent/ForkJoinTask$Aux;

.field volatile greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1617
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    .line 1618
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    const-string v1, "status"

    const-class v2, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v2, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    .line 1619
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    const-string v1, "aux"

    invoke-virtual {v0, v2, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinTask;->AUX:J

    .line 1620
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1621
    .local v0, "dep1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 1622
    .end local v0    # "dep1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 375
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1532
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static whitelist test-api adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1546
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1560
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static whitelist test-api adaptInterruptible(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1579
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private blacklist awaitDone(IJ)I
    .registers 25
    .param p1, "how"    # I
    .param p2, "deadline"    # J

    .line 412
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 413
    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    move v2, v3

    .line 414
    .local v2, "timed":Z
    :goto_b
    const/4 v4, 0x0

    .local v4, "owned":Z
    const/4 v5, 0x0

    .line 415
    .local v5, "uncompensate":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v7, v6

    .local v7, "t":Ljava/lang/Thread;
    instance-of v6, v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    const/high16 v8, 0x40000

    if-eqz v6, :cond_22

    .line 416
    const/4 v4, 0x1

    .line 417
    move-object v6, v7

    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v9, v6

    .local v9, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 418
    iget-object v6, v9, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v6, "p":Ljava/util/concurrent/ForkJoinPool;
    goto :goto_32

    .line 420
    .end local v6    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v9    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_22
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v9, v6

    .local v9, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v6, :cond_31

    and-int v6, p1, v8

    if-nez v6, :cond_31

    .line 421
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinPool;->externalQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v1

    move-object v6, v9

    goto :goto_32

    .line 422
    :cond_31
    move-object v6, v9

    .end local v9    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v6    # "p":Ljava/util/concurrent/ForkJoinPool;
    :goto_32
    if-eqz v1, :cond_5b

    if-eqz v6, :cond_5b

    .line 423
    instance-of v9, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v9, :cond_3f

    .line 424
    invoke-virtual {v6, v0, v1, v4, v2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;ZZ)I

    move-result v3

    .local v3, "s":I
    goto :goto_53

    .line 425
    .end local v3    # "s":I
    :cond_3f
    and-int/lit8 v9, p1, 0x1

    if-nez v9, :cond_4d

    .line 426
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;Z)I

    move-result v9

    move v10, v9

    .local v10, "s":I
    if-ltz v9, :cond_4b

    goto :goto_4d

    :cond_4b
    move v3, v10

    goto :goto_53

    .line 427
    .end local v10    # "s":I
    :cond_4d
    :goto_4d
    if-eqz v4, :cond_53

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpJoin(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool$WorkQueue;Z)I

    move-result v3

    .line 428
    .restart local v3    # "s":I
    :cond_53
    :goto_53
    if-gez v3, :cond_56

    .line 429
    return v3

    .line 430
    :cond_56
    const/high16 v9, 0x10000

    if-ne v3, v9, :cond_5b

    .line 431
    const/4 v5, 0x1

    .line 433
    .end local v3    # "s":I
    :cond_5b
    const/4 v3, 0x0

    .line 434
    .local v3, "node":Ljava/util/concurrent/ForkJoinTask$Aux;
    const-wide/16 v9, 0x0

    .line 435
    .local v9, "ns":J
    const/4 v11, 0x0

    .local v11, "interrupted":Z
    const/4 v12, 0x0

    .line 438
    .local v12, "queued":Z
    :goto_60
    iget v13, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v14, v13

    .local v14, "s":I
    const/4 v15, 0x0

    if-gez v13, :cond_68

    .line 439
    goto/16 :goto_cd

    .line 440
    :cond_68
    if-nez v3, :cond_79

    .line 441
    new-instance v13, Ljava/util/concurrent/ForkJoinTask$Aux;

    move/from16 v16, v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-direct {v13, v8, v15}, Ljava/util/concurrent/ForkJoinTask$Aux;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    move-object v3, v13

    move/from16 v8, v16

    goto :goto_60

    .line 442
    :cond_79
    move/from16 v16, v8

    if-nez v12, :cond_99

    .line 443
    iget-object v8, v0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v13, v8

    .local v13, "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-eqz v8, :cond_8a

    iget-object v8, v13, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    if-nez v8, :cond_87

    goto :goto_8a

    :cond_87
    move/from16 v8, v16

    goto :goto_60

    :cond_8a
    :goto_8a
    iput-object v13, v3, Ljava/util/concurrent/ForkJoinTask$Aux;->next:Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 444
    invoke-direct {v0, v13, v3}, Ljava/util/concurrent/ForkJoinTask;->casAux(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z

    move-result v8

    move v12, v8

    if-eqz v8, :cond_96

    .line 445
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 438
    .end local v13    # "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    .end local v14    # "s":I
    :cond_96
    :goto_96
    move/from16 v8, v16

    goto :goto_60

    .line 447
    .restart local v14    # "s":I
    :cond_99
    if-eqz v2, :cond_ab

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v17, p2, v17

    move-wide/from16 v9, v17

    const-wide/16 v19, 0x0

    cmp-long v8, v17, v19

    if-gtz v8, :cond_ab

    .line 448
    const/4 v14, 0x0

    .line 449
    goto :goto_cd

    .line 451
    :cond_ab
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 452
    const/4 v11, 0x1

    .line 453
    and-int v8, p1, v16

    if-eqz v8, :cond_c0

    if-eqz v6, :cond_c0

    iget v8, v6, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v8, :cond_c0

    .line 454
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    goto :goto_96

    .line 455
    :cond_c0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_96

    .line 456
    const/high16 v14, 0x10000

    .line 457
    goto :goto_cd

    .line 460
    :cond_c7
    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v14, v8

    if-gez v8, :cond_109

    .line 461
    nop

    .line 467
    :goto_cd
    if-eqz v5, :cond_d2

    .line 468
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinPool;->uncompensate()V

    .line 470
    :cond_d2
    if-eqz v12, :cond_108

    .line 471
    invoke-static {v15}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 472
    if-ltz v14, :cond_fc

    .line 473
    :goto_d9
    iget-object v8, v0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v13, v8

    .restart local v13    # "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-eqz v8, :cond_fb

    iget-object v8, v13, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    if-nez v8, :cond_fb

    .line 474
    const/4 v8, 0x0

    .line 475
    .local v8, "trail":Ljava/util/concurrent/ForkJoinTask$Aux;
    :goto_e3
    iget-object v15, v13, Ljava/util/concurrent/ForkJoinTask$Aux;->next:Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 476
    .local v15, "next":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-ne v13, v3, :cond_f5

    .line 477
    if-eqz v8, :cond_ed

    .line 478
    invoke-virtual {v8, v8, v15}, Ljava/util/concurrent/ForkJoinTask$Aux;->casNext(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z

    goto :goto_f4

    .line 479
    :cond_ed
    invoke-direct {v0, v13, v15}, Ljava/util/concurrent/ForkJoinTask;->casAux(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z

    move-result v16

    if-eqz v16, :cond_f4

    .line 480
    goto :goto_108

    .line 487
    .end local v8    # "trail":Ljava/util/concurrent/ForkJoinTask$Aux;
    .end local v15    # "next":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_f4
    :goto_f4
    goto :goto_d9

    .line 483
    .restart local v8    # "trail":Ljava/util/concurrent/ForkJoinTask$Aux;
    .restart local v15    # "next":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_f5
    move-object v8, v13

    .line 484
    move-object v13, v15

    if-nez v15, :cond_fa

    .line 485
    goto :goto_108

    .line 487
    .end local v15    # "next":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_fa
    goto :goto_e3

    .end local v8    # "trail":Ljava/util/concurrent/ForkJoinTask$Aux;
    .end local v13    # "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_fb
    goto :goto_108

    .line 491
    :cond_fc
    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinTask;->signalWaiters()V

    .line 492
    if-eqz v11, :cond_108

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 496
    :cond_108
    :goto_108
    return v14

    .line 462
    :cond_109
    if-eqz v2, :cond_10f

    .line 463
    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_96

    .line 465
    :cond_10f
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_96
.end method

.method static final blacklist cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 505
    .local p0, "t":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p0, :cond_8

    .line 507
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 509
    goto :goto_8

    .line 508
    :catchall_7
    move-exception v0

    .line 511
    :cond_8
    :goto_8
    return-void
.end method

.method private blacklist casAux(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/ForkJoinTask$Aux;
    .param p2, "v"    # Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 293
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->AUX:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/ForkJoinTask$Aux;
    .end local p2    # "v":Ljava/util/concurrent/ForkJoinTask$Aux;
    .local v4, "c":Ljava/util/concurrent/ForkJoinTask$Aux;
    .local v5, "v":Ljava/util/concurrent/ForkJoinTask$Aux;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist casStatus(II)Z
    .registers 9
    .param p1, "c"    # I
    .param p2, "v"    # I

    .line 290
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "c":I
    .end local p2    # "v":I
    .local v4, "c":I
    .local v5, "v":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method private blacklist getAndBitwiseOrStatus(I)I
    .registers 5
    .param p1, "v"    # I

    .line 287
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->getAndBitwiseOrInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method private blacklist getException(I)Ljava/lang/Throwable;
    .registers 4
    .param p1, "s"    # I

    .line 560
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    .line 561
    .local v0, "ex":Ljava/lang/Throwable;
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_13

    .line 562
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    move-object v0, v1

    .line 563
    :cond_13
    return-object v0
.end method

.method public static whitelist test-api getPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 2

    .line 1140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_f

    .line 1141
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 1140
    :goto_10
    return-object v0
.end method

.method public static whitelist test-api getQueuedTaskCount()I
    .registers 3

    .line 1185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_f

    .line 1186
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_13

    .line 1188
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_f
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1189
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_13
    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    :goto_1b
    return v2
.end method

.method public static whitelist test-api getSurplusQueuedTaskCount()I
    .registers 1

    .line 1206
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getThrowableException()Ljava/lang/Throwable;
    .registers 13

    .line 529
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-nez v0, :cond_8

    .line 530
    const/4 v0, 0x0

    .local v0, "ex":Ljava/lang/Throwable;
    goto/16 :goto_60

    .line 531
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_8
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    move-object v2, v0

    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_5f

    iget-object v0, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v0, v3, :cond_5f

    .line 533
    const/4 v0, 0x0

    .local v0, "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 534
    .local v3, "oneArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_22
    if-ge v7, v5, :cond_3e

    aget-object v8, v4, v7

    .line 535
    .local v8, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 536
    .local v9, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v9

    if-nez v10, :cond_2f

    .line 537
    move-object v0, v8

    goto :goto_3b

    .line 538
    :cond_2f
    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3b

    aget-object v10, v9, v6

    const-class v11, Ljava/lang/Throwable;

    if-ne v10, v11, :cond_3b

    .line 539
    move-object v3, v8

    .line 540
    goto :goto_3e

    .line 534
    .end local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3b
    :goto_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 543
    :cond_3e
    :goto_3e
    if-eqz v3, :cond_4c

    .line 544
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    move-object v0, v4

    .end local v2    # "ex":Ljava/lang/Throwable;
    .local v4, "ex":Ljava/lang/Throwable;
    goto :goto_5d

    .line 545
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_4c
    if-eqz v0, :cond_5c

    .line 546
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 547
    .local v4, "rx":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_59} :catch_5e

    .line 548
    move-object v2, v4

    move-object v0, v2

    goto :goto_5d

    .line 545
    .end local v4    # "rx":Ljava/lang/Throwable;
    :cond_5c
    move-object v0, v2

    .line 551
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "oneArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_5d
    goto :goto_60

    .line 550
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :catch_5e
    move-exception v0

    .line 553
    :cond_5f
    move-object v0, v2

    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :goto_60
    return-object v0
.end method

.method public static whitelist test-api helpQuiesce()V
    .registers 4

    .line 1105
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool;JZ)I

    .line 1106
    return-void
.end method

.method public static whitelist test-api inForkJoinPool()Z
    .registers 1

    .line 1153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static whitelist test-api invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 786
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_b

    goto/16 :goto_83

    .line 791
    :cond_b
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 793
    .local v0, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v2, 0x0

    .line 794
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 795
    .local v3, "last":I
    move v5, v3

    .local v5, "i":I
    :goto_16
    const-wide/16 v6, 0x0

    const/high16 v8, 0x10000

    if-ltz v5, :cond_48

    .line 797
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/ForkJoinTask;

    move-object v10, v9

    .local v10, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v9, :cond_2c

    .line 798
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    move-object v2, v4

    .line 799
    goto :goto_48

    .line 801
    :cond_2c
    if-nez v5, :cond_42

    .line 803
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v9

    move v11, v9

    .local v11, "s":I
    if-ltz v9, :cond_39

    .line 804
    invoke-direct {v10, v4, v6, v7}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v11

    .line 805
    :cond_39
    and-int v4, v11, v8

    if-eqz v4, :cond_48

    .line 806
    invoke-direct {v10, v11}, Ljava/util/concurrent/ForkJoinTask;->getException(I)Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_48

    .line 809
    .end local v11    # "s":I
    :cond_42
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 795
    .end local v10    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 811
    .end local v5    # "i":I
    :cond_48
    :goto_48
    if-nez v2, :cond_6e

    .line 812
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_4b
    if-gt v4, v3, :cond_6e

    .line 814
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinTask;

    move-object v9, v5

    .local v9, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_6b

    .line 816
    iget v5, v9, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v10, v5

    .local v10, "s":I
    if-ltz v5, :cond_5f

    .line 817
    invoke-direct {v9, v1, v6, v7}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v10

    .line 818
    :cond_5f
    and-int v5, v10, v8

    if-eqz v5, :cond_6b

    invoke-direct {v9, v10}, Ljava/util/concurrent/ForkJoinTask;->getException(I)Ljava/lang/Throwable;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_6b

    .line 819
    goto :goto_6e

    .line 812
    .end local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "s":I
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 823
    .end local v4    # "i":I
    :cond_6e
    :goto_6e
    if-eqz v2, :cond_82

    .line 824
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_71
    if-gt v1, v3, :cond_7f

    .line 825
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-static {v4}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 826
    .end local v1    # "i":I
    :cond_7f
    invoke-static {v2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 828
    :cond_82
    return-object p0

    .line 787
    .end local v0    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "last":I
    :cond_83
    :goto_83
    new-array v0, v1, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 788
    return-object p0
.end method

.method public static whitelist test-api invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 697
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    .line 699
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 700
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    .local v1, "s1":I
    const-wide/16 v2, 0x0

    if-ltz v0, :cond_15

    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v1

    .line 702
    :cond_15
    const/high16 v0, 0x10000

    and-int v4, v1, v0

    if-eqz v4, :cond_22

    .line 703
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .line 704
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    goto :goto_32

    .line 707
    :cond_22
    iget v4, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v5, v4

    .local v5, "s2":I
    if-ltz v4, :cond_2c

    .line 708
    const/4 v4, 0x0

    invoke-direct {p1, v4, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v5

    .line 709
    :cond_2c
    and-int/2addr v0, v5

    if-eqz v0, :cond_32

    .line 710
    invoke-direct {p1, v5}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 712
    .end local v5    # "s2":I
    :cond_32
    :goto_32
    return-void

    .line 698
    .end local v1    # "s1":I
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static varargs whitelist test-api invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 730
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 731
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 732
    .local v1, "last":I
    move v3, v1

    .local v3, "i":I
    :goto_5
    const-wide/16 v4, 0x0

    const/high16 v6, 0x10000

    if-ltz v3, :cond_33

    .line 734
    aget-object v7, p0, v3

    move-object v8, v7

    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v7, :cond_17

    .line 735
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    move-object v0, v2

    .line 736
    goto :goto_33

    .line 738
    :cond_17
    if-nez v3, :cond_2d

    .line 740
    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v7

    move v9, v7

    .local v9, "s":I
    if-ltz v7, :cond_24

    .line 741
    invoke-direct {v8, v2, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v9

    .line 742
    :cond_24
    and-int v2, v9, v6

    if-eqz v2, :cond_33

    .line 743
    invoke-direct {v8, v9}, Ljava/util/concurrent/ForkJoinTask;->getException(I)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_33

    .line 746
    .end local v9    # "s":I
    :cond_2d
    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 732
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 748
    .end local v3    # "i":I
    :cond_33
    :goto_33
    if-nez v0, :cond_56

    .line 749
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_36
    if-gt v2, v1, :cond_56

    .line 751
    aget-object v3, p0, v2

    move-object v7, v3

    .local v7, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_53

    .line 753
    iget v3, v7, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v8, v3

    .local v8, "s":I
    if-ltz v3, :cond_47

    .line 754
    const/4 v3, 0x0

    invoke-direct {v7, v3, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v8

    .line 755
    :cond_47
    and-int v3, v8, v6

    if-eqz v3, :cond_53

    invoke-direct {v7, v8}, Ljava/util/concurrent/ForkJoinTask;->getException(I)Ljava/lang/Throwable;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_53

    .line 756
    goto :goto_56

    .line 749
    .end local v7    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "s":I
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 760
    .end local v2    # "i":I
    :cond_56
    :goto_56
    if-eqz v0, :cond_66

    .line 761
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_59
    if-gt v2, v1, :cond_63

    .line 762
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/Future;)V

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 763
    .end local v2    # "i":I
    :cond_63
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 765
    :cond_66
    return-void
.end method

.method static blacklist isExceptionalStatus(I)Z
    .registers 2
    .param p0, "s"    # I

    .line 378
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected static whitelist test-api peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_f

    .line 1261
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_13

    .line 1263
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_f
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1264
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_13
    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    :goto_1b
    return-object v2
.end method

.method protected static whitelist test-api pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1278
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_13

    .line 1279
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1278
    :goto_14
    return-object v0
.end method

.method protected static greylist-max-o pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_13

    .line 1317
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1316
    :goto_14
    return-object v0
.end method

.method protected static whitelist test-api pollTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_16

    .line 1298
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_17

    .line 1299
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_16
    const/4 v0, 0x0

    .line 1297
    :goto_17
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1610
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1611
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1612
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 1613
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->trySetThrown(Ljava/lang/Throwable;)I

    .line 1614
    :cond_f
    return-void
.end method

.method private greylist-max-o reportException(I)V
    .registers 3
    .param p1, "s"    # I

    .line 571
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method private blacklist reportExecutionException(I)V
    .registers 5
    .param p1, "s"    # I

    .line 579
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    .line 580
    .local v0, "ex":Ljava/lang/Throwable;
    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_c

    .line 581
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    move-object v0, v1

    goto :goto_22

    .line 582
    :cond_c
    if-ltz p1, :cond_15

    .line 583
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    move-object v0, v1

    goto :goto_22

    .line 584
    :cond_15
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    move-object v2, v1

    .local v2, "rx":Ljava/lang/Throwable;
    if-eqz v1, :cond_22

    .line 585
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 586
    .end local v2    # "rx":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 587
    return-void
.end method

.method static greylist-max-o rethrow(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 594
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 595
    return-void
.end method

.method private blacklist setDone()I
    .registers 3

    .line 321
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->getAndBitwiseOrStatus(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 322
    .local v0, "s":I
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->signalWaiters()V

    .line 323
    return v0
.end method

.method private blacklist signalWaiters()V
    .registers 5

    .line 305
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-eqz v0, :cond_25

    iget-object v0, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    if-nez v0, :cond_25

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinTask;->casAux(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :goto_11
    if-eqz v1, :cond_24

    .line 308
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->thread:Ljava/lang/Thread;

    move-object v2, v0

    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v0, v3, :cond_21

    if-eqz v2, :cond_21

    .line 309
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 307
    :cond_21
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->next:Ljava/util/concurrent/ForkJoinTask$Aux;

    goto :goto_11

    .line 311
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_24
    nop

    .line 314
    .end local v1    # "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_25
    return-void
.end method

.method private blacklist trySetCancelled()I
    .registers 4

    .line 333
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    nop

    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_11

    const/high16 v0, -0x7fff0000

    or-int/2addr v0, v1

    move v2, v0

    .end local v1    # "s":I
    .local v2, "s":I
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinTask;->casStatus(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 334
    .end local v2    # "s":I
    .restart local v1    # "s":I
    :cond_11
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->signalWaiters()V

    .line 335
    return v1
.end method

.method static greylist-max-o uncheckedThrow(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 605
    if-nez p0, :cond_8

    .line 606
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    move-object p0, v0

    .line 607
    :cond_8
    throw p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1597
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1598
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v1, v0

    .local v1, "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1599
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .line 859
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->trySetCancelled()I

    move-result v0

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final whitelist test-api compareAndSetForkJoinTaskTag(SS)Z
    .registers 6
    .param p1, "expect"    # S
    .param p2, "update"    # S

    .line 1362
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    nop

    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    int-to-short v0, v0

    if-eq v0, p1, :cond_9

    .line 1363
    const/4 v0, 0x0

    return v0

    .line 1364
    :cond_9
    const/high16 v0, -0x10000

    and-int/2addr v0, v1

    const v2, 0xffff

    and-int/2addr v2, p2

    or-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ForkJoinTask;->casStatus(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 959
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 963
    nop

    .line 964
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->setDone()I

    .line 965
    return-void

    .line 960
    :catchall_8
    move-exception v0

    .line 961
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->trySetException(Ljava/lang/Throwable;)I

    .line 962
    return-void
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 939
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_9

    goto :goto_f

    .line 941
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 940
    :cond_f
    :goto_f
    move-object v0, p1

    .line 939
    :goto_10
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->trySetException(Ljava/lang/Throwable;)I

    .line 942
    return-void
.end method

.method final greylist-max-o doExec()I
    .registers 4

    .line 389
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_17

    .line 391
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    .line 395
    .local v0, "completed":Z
    goto :goto_11

    .line 392
    .end local v0    # "completed":Z
    :catchall_a
    move-exception v0

    .line 393
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->trySetException(Ljava/lang/Throwable;)I

    move-result v1

    .line 394
    const/4 v2, 0x0

    move v0, v2

    .line 396
    .local v0, "completed":Z
    :goto_11
    if-eqz v0, :cond_17

    .line 397
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->setDone()I

    move-result v1

    .line 399
    .end local v0    # "completed":Z
    :cond_17
    return v1
.end method

.method public whitelist test-api exceptionNow()Ljava/lang/Throwable;
    .registers 3

    .line 908
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 910
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 909
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api exec()Z
.end method

.method public final whitelist test-api fork()Ljava/util/concurrent/ForkJoinTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TV;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeStoreFence()V

    .line 631
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_17

    .line 632
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 633
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_1f

    .line 636
    .end local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_17
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v2, v0

    .local v2, "p":Ljava/util/concurrent/ForkJoinPool;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinPool;->submissionQueue(Z)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v3

    .line 637
    .end local v2    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v0    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v3    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_1f
    const/4 v2, 0x1

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinPool;Z)V

    .line 638
    return-object p0
.end method

.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 992
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 993
    const/high16 v0, 0x10000

    .local v0, "s":I
    goto :goto_1b

    .line 994
    .end local v0    # "s":I
    :cond_9
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_1a

    .line 995
    const/high16 v0, 0x40000

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v0

    .end local v1    # "s":I
    .restart local v0    # "s":I
    goto :goto_1b

    .line 994
    .end local v0    # "s":I
    .restart local v1    # "s":I
    :cond_1a
    move v0, v1

    .line 996
    .end local v1    # "s":I
    .restart local v0    # "s":I
    :goto_1b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_23

    .line 997
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportExecutionException(I)V

    .line 998
    :cond_23
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1017
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1019
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1020
    const/high16 v2, 0x10000

    .local v2, "s":I
    goto :goto_2a

    .line 1021
    .end local v2    # "s":I
    :cond_d
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v3, v2

    .local v3, "s":I
    if-ltz v2, :cond_29

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_29

    .line 1022
    const/high16 v2, 0x40000

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x4

    .line 1023
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 1022
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v2

    .end local v3    # "s":I
    .restart local v2    # "s":I
    goto :goto_2a

    .line 1024
    .end local v2    # "s":I
    .restart local v3    # "s":I
    :cond_29
    move v2, v3

    .end local v3    # "s":I
    .restart local v2    # "s":I
    :goto_2a
    if-gez v2, :cond_31

    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_34

    .line 1025
    :cond_31
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->reportExecutionException(I)V

    .line 1026
    :cond_34
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final whitelist test-api getException()Ljava/lang/Throwable;
    .registers 2

    .line 921
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->getException(I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getForkJoinTaskTag()S
    .registers 2

    .line 1329
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract whitelist test-api getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public final whitelist test-api invoke()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 671
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_e

    .line 672
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v1

    .line 673
    :cond_e
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 674
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 675
    :cond_16
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api isCancelled()Z
    .registers 3

    .line 867
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api isCompletedAbnormally()Z
    .registers 3

    .line 876
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist test-api isCompletedNormally()Z
    .registers 3

    .line 887
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x7fff0000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api isDone()Z
    .registers 2

    .line 863
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api join()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 654
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_e

    .line 655
    const/high16 v0, 0x40000

    and-int/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v1

    .line 656
    :cond_e
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 657
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 658
    :cond_16
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist markPoolSubmission()V
    .registers 2

    .line 300
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->getAndBitwiseOrStatus(I)I

    .line 301
    return-void
.end method

.method public final whitelist test-api quietlyComplete()V
    .registers 1

    .line 976
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->setDone()I

    .line 977
    return-void
.end method

.method public final whitelist test-api quietlyInvoke()V
    .registers 5

    .line 1048
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_d

    .line 1049
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    .line 1050
    :cond_d
    return-void
.end method

.method public final whitelist test-api quietlyJoin()V
    .registers 5

    .line 1037
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_d

    .line 1038
    const/high16 v0, 0x40000

    and-int/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    .line 1039
    :cond_d
    return-void
.end method

.method public final whitelist test-api quietlyJoin(JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1067
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1068
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1069
    const/high16 v2, 0x10000

    .local v2, "s":I
    goto :goto_2a

    .line 1070
    .end local v2    # "s":I
    :cond_d
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v3, v2

    .local v3, "s":I
    if-ltz v2, :cond_29

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_29

    .line 1071
    const/high16 v2, 0x40000

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x4

    .line 1072
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 1071
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v2

    .end local v3    # "s":I
    .restart local v2    # "s":I
    goto :goto_2a

    .line 1073
    .end local v2    # "s":I
    .restart local v3    # "s":I
    :cond_29
    move v2, v3

    .end local v3    # "s":I
    .restart local v2    # "s":I
    :goto_2a
    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_34

    .line 1076
    if-gez v2, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    return v3

    .line 1074
    :cond_34
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method

.method public final whitelist test-api quietlyJoinUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1091
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1092
    .local v0, "nanos":J
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v3, v2

    .local v3, "s":I
    if-ltz v2, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1d

    .line 1093
    const/high16 v2, 0x40000

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/ForkJoinTask;->awaitDone(IJ)I

    move-result v3

    .line 1094
    :cond_1d
    if-gez v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2
.end method

.method public whitelist test-api reinitialize()V
    .registers 2

    .line 1125
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 1126
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1127
    return-void
.end method

.method public whitelist test-api resultNow()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 901
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->isCompletedNormally()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 903
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 902
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api setForkJoinTaskTag(S)S
    .registers 6
    .param p1, "newValue"    # S

    .line 1341
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    nop

    :cond_1
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    const/high16 v2, -0x10000

    and-int/2addr v2, v1

    const v3, 0xffff

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ForkJoinTask;->casStatus(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    int-to-short v0, v1

    return v0
.end method

.method protected abstract whitelist test-api setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public whitelist test-api state()Ljava/util/concurrent/Future$State;
    .registers 4

    .line 892
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 893
    .local v0, "s":I
    if-ltz v0, :cond_7

    sget-object v1, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    goto :goto_1c

    .line 894
    :cond_7
    const/high16 v1, -0x7fff0000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    sget-object v1, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;

    goto :goto_1c

    .line 895
    :cond_11
    const/high16 v1, 0x30000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1a

    sget-object v1, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;

    goto :goto_1c

    .line 896
    :cond_1a
    sget-object v1, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    .line 893
    :goto_1c
    return-object v1
.end method

.method blacklist trySetException(Ljava/lang/Throwable;)I
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 369
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->trySetThrown(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method final blacklist trySetThrown(Ljava/lang/Throwable;)I
    .registers 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 347
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$Aux;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/ForkJoinTask$Aux;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .local v0, "h":Ljava/util/concurrent/ForkJoinTask$Aux;
    const/4 v1, 0x0

    .line 348
    .local v1, "p":Ljava/util/concurrent/ForkJoinTask$Aux;
    const/4 v2, 0x0

    .line 350
    .local v2, "installed":Z
    :cond_b
    iget v3, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v4, v3

    .local v4, "s":I
    if-ltz v3, :cond_30

    .line 352
    if-nez v2, :cond_23

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinTask;->aux:Ljava/util/concurrent/ForkJoinTask$Aux;

    move-object v5, v3

    .local v5, "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    if-eqz v3, :cond_1b

    iget-object v3, v5, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    .line 353
    :cond_1b
    invoke-direct {p0, v5, v0}, Ljava/util/concurrent/ForkJoinTask;->casAux(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z

    move-result v3

    move v2, v3

    if-eqz v3, :cond_23

    .line 354
    move-object v1, v5

    .line 355
    .end local v5    # "a":Ljava/util/concurrent/ForkJoinTask$Aux;
    :cond_23
    if-eqz v2, :cond_b

    const/high16 v3, -0x7ffd0000

    or-int/2addr v3, v4

    move v5, v3

    .end local v4    # "s":I
    .local v5, "s":I
    invoke-direct {p0, v4, v3}, Ljava/util/concurrent/ForkJoinTask;->casStatus(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 356
    move v4, v5

    .line 358
    .end local v5    # "s":I
    .restart local v4    # "s":I
    :cond_30
    :goto_30
    if-eqz v1, :cond_3a

    .line 359
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 358
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinTask$Aux;->next:Ljava/util/concurrent/ForkJoinTask$Aux;

    goto :goto_30

    .line 360
    :cond_3a
    return v4
.end method

.method public whitelist test-api tryUnfork()Z
    .registers 5

    .line 1168
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move v2, v0

    .local v2, "owned":Z
    if-eqz v0, :cond_10

    .line 1169
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_14

    .line 1171
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_10
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1172
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3
.end method
