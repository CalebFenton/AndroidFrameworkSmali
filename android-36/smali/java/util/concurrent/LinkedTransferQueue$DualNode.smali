.class final Ljava/util/concurrent/LinkedTransferQueue$DualNode;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DualNode"
.end annotation


# static fields
.field static final blacklist ITEM:Ljava/lang/invoke/VarHandle;

.field static final blacklist NEXT:Ljava/lang/invoke/VarHandle;

.field private static final blacklist SPINS:I = 0x80

.field private static final blacklist SPIN_FOR_TIMEOUT_THRESHOLD:J = 0x400L

.field private static final blacklist UNIPROCESSOR_REFRESH_RATE:I = 0x1f

.field private static blacklist isUniprocessor:Z


# instance fields
.field final blacklist isData:Z

.field volatile blacklist item:Ljava/lang/Object;

.field blacklist next:Ljava/util/concurrent/LinkedTransferQueue$DualNode;

.field blacklist waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 404
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    sput-boolean v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isUniprocessor:Z

    .line 491
    :try_start_f
    const-class v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 492
    .local v0, "tn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 493
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "item"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->ITEM:Ljava/lang/invoke/VarHandle;

    .line 494
    const-string v2, "next"

    invoke-virtual {v1, v0, v2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->NEXT:Ljava/lang/invoke/VarHandle;
    :try_end_27
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_f .. :try_end_27} :catch_2b

    .line 497
    .end local v0    # "tn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 500
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 501
    return-void

    .line 495
    :catch_2b
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;)V

    .line 366
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    .line 367
    return-void
.end method

.method private blacklist checkForUniprocessor(Z)V
    .registers 5
    .param p1, "prev"    # Z

    .line 469
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v0

    .line 470
    .local v0, "r":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_19

    .line 471
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 472
    .local v2, "u":Z
    :goto_15
    if-eq v2, p1, :cond_19

    .line 473
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isUniprocessor:Z

    .line 475
    .end local v2    # "u":Z
    :cond_19
    return-void
.end method


# virtual methods
.method final blacklist await(Ljava/lang/Object;JLjava/lang/Object;Z)Ljava/lang/Object;
    .registers 24
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "ns"    # J
    .param p4, "blocker"    # Ljava/lang/Object;
    .param p5, "spin"    # Z

    .line 425
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, p2, v3

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    move v4, v0

    .line 426
    .local v4, "timed":Z
    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long v7, v7, p2

    goto :goto_1e

    :cond_1d
    move-wide v7, v5

    .line 427
    .local v7, "deadline":J
    :goto_1e
    sget-boolean v9, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isUniprocessor:Z

    .line 428
    .local v9, "upc":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    .line 429
    .local v10, "w":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 430
    const/4 v0, 0x0

    move v11, v0

    .end local p5    # "spin":Z
    .local v0, "spin":Z
    goto :goto_2f

    .line 429
    .end local v0    # "spin":Z
    .restart local p5    # "spin":Z
    :cond_2d
    move/from16 v11, p5

    .line 431
    .end local p5    # "spin":Z
    .local v11, "spin":Z
    :goto_2f
    xor-int/lit8 v0, v9, 0x1

    and-int/2addr v0, v11

    if-eqz v0, :cond_36

    const/16 v3, 0x80

    :cond_36
    move-wide/from16 v12, p2

    .line 432
    .end local p2    # "ns":J
    .local v3, "spins":I
    .local v12, "ns":J
    :goto_38
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    move-object v14, v0

    .local v14, "m":Ljava/lang/Object;
    const/4 v15, 0x0

    if-ne v0, v2, :cond_93

    .line 433
    if-ltz v3, :cond_56

    .line 434
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_48

    .line 435
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_38

    .line 437
    :cond_48
    if-eqz v11, :cond_4d

    .line 438
    invoke-direct {v1, v9}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->checkForUniprocessor(Z)V

    .line 439
    :cond_4d
    invoke-static/range {p4 .. p4}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 440
    iput-object v10, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    .line 441
    invoke-static {}, Ljava/lang/invoke/VarHandle;->fullFence()V

    goto :goto_38

    .line 443
    :cond_56
    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_89

    if-eqz v4, :cond_6b

    .line 445
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v7, v16

    move-wide/from16 v12, v16

    cmp-long v0, v16, v5

    if-gtz v0, :cond_6b

    goto :goto_89

    .line 448
    :cond_6b
    if-eqz v4, :cond_7b

    .line 449
    const-wide/16 v15, 0x400

    cmp-long v0, v12, v15

    if-gez v0, :cond_77

    .line 450
    invoke-static {}, Ljava/lang/Thread;->onSpinWait()V

    goto :goto_38

    .line 452
    :cond_77
    invoke-static {v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_38

    .line 453
    :cond_7b
    instance-of v0, v10, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_85

    .line 455
    :try_start_7f
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_82} :catch_83

    .line 456
    :goto_82
    goto :goto_38

    :catch_83
    move-exception v0

    goto :goto_82

    .line 458
    :cond_85
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_38

    .line 446
    :cond_89
    :goto_89
    if-nez v2, :cond_8d

    move-object v0, v1

    goto :goto_8e

    :cond_8d
    move-object v0, v15

    :goto_8e
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->cmpExItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 447
    nop

    .line 460
    :cond_93
    if-gez v3, :cond_9a

    .line 461
    invoke-static {v15}, Ljava/util/concurrent/locks/LockSupport;->setCurrentBlocker(Ljava/lang/Object;)V

    .line 462
    iput-object v15, v1, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->waiter:Ljava/lang/Thread;

    .line 464
    :cond_9a
    return-object v14
.end method

.method public final whitelist test-api block()Z
    .registers 2

    .line 482
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_1

    .line 483
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist cmpExItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 371
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist cmpExNext(Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .registers 4
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    .line 374
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)Ljava/util/concurrent/LinkedTransferQueue$DualNode;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api isReleasable()Z
    .registers 2

    .line 479
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->matched()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method final blacklist matched()Z
    .registers 5

    .line 379
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->isData:Z

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->item:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    if-eq v0, v1, :cond_e

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    return v2
.end method

.method final blacklist selfLinkItem()V
    .registers 2

    .line 388
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$DualNode;->ITEM:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p0}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/LinkedTransferQueue$DualNode;Ljava/util/concurrent/LinkedTransferQueue$DualNode;)V

    .line 389
    return-void
.end method
