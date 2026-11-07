.class public Ljava/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final greylist-max-o COUNTS_MASK:J = 0xffffffffL

.field private static final greylist-max-o EMPTY:I = 0x1

.field private static final greylist-max-o MAX_PARTIES:I = 0xffff

.field private static final greylist-max-o MAX_PHASE:I = 0x7fffffff

.field private static final greylist-max-o NCPU:I

.field private static final greylist-max-o ONE_ARRIVAL:I = 0x1

.field private static final greylist-max-o ONE_DEREGISTER:I = 0x10001

.field private static final greylist-max-o ONE_PARTY:I = 0x10000

.field private static final greylist-max-o PARTIES_MASK:J = 0xffff0000L

.field private static final greylist-max-o PARTIES_SHIFT:I = 0x10

.field private static final greylist-max-o PHASE_SHIFT:I = 0x20

.field static final greylist-max-o SPINS_PER_ARRIVAL:I

.field private static final blacklist STATE:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o TERMINATION_BIT:J = -0x8000000000000000L

.field private static final greylist-max-o UNARRIVED_MASK:I = 0xffff


# instance fields
.field private final greylist-max-o evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o parent:Ljava/util/concurrent/Phaser;

.field private final greylist-max-o root:Ljava/util/concurrent/Phaser;

.field private volatile greylist-max-o state:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1006
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava/util/concurrent/Phaser;->NCPU:I

    .line 1019
    sget v0, Ljava/util/concurrent/Phaser;->NCPU:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_13

    :cond_11
    const/16 v0, 0x100

    :goto_13
    sput v0, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    .line 1144
    :try_start_15
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1145
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/Phaser;

    const-string v2, "state"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;
    :try_end_25
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_15 .. :try_end_25} :catch_29

    .line 1148
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 1152
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1153
    return-void

    .line 1146
    :catch_29
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 511
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "parties"    # I

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 524
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Phaser;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;

    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 533
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Phaser;I)V
    .registers 9
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;
    .param p2, "parties"    # I

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    ushr-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_43

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "phase":I
    iput-object p1, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    .line 552
    if-eqz p1, :cond_20

    .line 553
    iget-object v1, p1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 554
    .local v1, "root":Ljava/util/concurrent/Phaser;
    iput-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 555
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 556
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 557
    if-eqz p2, :cond_1f

    .line 558
    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    .line 559
    .end local v1    # "root":Ljava/util/concurrent/Phaser;
    :cond_1f
    goto :goto_30

    .line 561
    :cond_20
    iput-object p0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 562
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 563
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 565
    :goto_30
    if-nez p2, :cond_35

    const-wide/16 v1, 0x1

    goto :goto_40

    .line 567
    :cond_35
    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p2

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, p2

    or-long/2addr v1, v3

    :goto_40
    iput-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 569
    return-void

    .line 549
    .end local v0    # "phase":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of parties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o abortWait(I)I
    .registers 7
    .param p1, "phase"    # I

    .line 991
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 994
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    .line 995
    .local v1, "q":Ljava/util/concurrent/Phaser$QNode;
    iget-object v2, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v2, v2, Ljava/util/concurrent/Phaser;->state:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    .line 996
    .local v2, "p":I
    if-eqz v1, :cond_34

    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    move-object v4, v3

    .local v4, "t":Ljava/lang/Thread;
    if-eqz v3, :cond_23

    iget v3, v1, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v3, v2, :cond_23

    goto :goto_34

    .line 998
    :cond_23
    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-eqz v4, :cond_33

    .line 999
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1000
    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1002
    .end local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    .end local v2    # "p":I
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_33
    goto :goto_9

    .line 997
    .restart local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    .restart local v2    # "p":I
    :cond_34
    :goto_34
    return v2
.end method

.method private static greylist-max-o arrivedOf(J)I
    .registers 5
    .param p0, "s"    # J

    .line 330
    long-to-int v0, p0

    .line 331
    .local v0, "counts":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_d

    .line 332
    :cond_6
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 331
    :goto_d
    return v1
.end method

.method private greylist-max-o badArrive(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted arrival of unregistered party for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    return-object v0
.end method

.method private greylist-max-o badRegister(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to register more than 65535 parties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    return-object v0
.end method

.method private greylist-max-o doArrive(I)I
    .registers 20
    .param p1, "adjust"    # I

    .line 380
    move-object/from16 v1, p0

    iget-object v6, v1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 382
    .local v6, "root":Ljava/util/concurrent/Phaser;
    :goto_4
    if-ne v6, v1, :cond_9

    iget-wide v2, v1, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_d

    :cond_9
    invoke-direct {v1}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    .line 383
    .local v2, "s":J
    :goto_d
    const/16 v7, 0x20

    ushr-long v4, v2, v7

    long-to-int v8, v4

    .line 384
    .local v8, "phase":I
    if-gez v8, :cond_15

    .line 385
    return v8

    .line 386
    :cond_15
    long-to-int v9, v2

    .line 387
    .local v9, "counts":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1b
    const v0, 0xffff

    and-int/2addr v0, v9

    :goto_1f
    move v11, v0

    .line 388
    .local v11, "unarrived":I
    if-lez v11, :cond_8e

    .line 390
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    move/from16 v12, p1

    int-to-long v4, v12

    sub-long v4, v2, v4

    move-wide v13, v4

    .local v13, "s":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    .end local v2    # "s":J
    if-eqz v0, :cond_8b

    .line 391
    if-ne v11, v10, :cond_89

    .line 392
    const-wide v2, 0xffff0000L

    and-long/2addr v2, v13

    .line 393
    .local v2, "n":J
    long-to-int v0, v2

    ushr-int/lit8 v15, v0, 0x10

    .line 394
    .local v15, "nextUnarrived":I
    const-wide/16 v4, 0x1

    if-ne v6, v1, :cond_65

    .line 395
    invoke-virtual {v1, v8, v15}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 396
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    goto :goto_50

    .line 397
    :cond_4a
    if-nez v15, :cond_4e

    .line 398
    or-long/2addr v2, v4

    goto :goto_50

    .line 400
    :cond_4e
    int-to-long v4, v15

    or-long/2addr v2, v4

    .line 401
    :goto_50
    add-int/lit8 v0, v8, 0x1

    const v4, 0x7fffffff

    and-int v10, v0, v4

    .line 402
    .local v10, "nextPhase":I
    int-to-long v4, v10

    shl-long/2addr v4, v7

    or-long/2addr v4, v2

    .line 403
    .end local v2    # "n":J
    .local v4, "n":J
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    move-wide v2, v13

    .end local v13    # "s":J
    .local v2, "s":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    .line 404
    .end local v2    # "s":J
    .restart local v13    # "s":J
    invoke-direct {v1, v8}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 405
    .end local v10    # "nextPhase":I
    goto :goto_8a

    .line 406
    .end local v4    # "n":J
    .local v2, "n":J
    :cond_65
    if-nez v15, :cond_7d

    .line 407
    iget-object v0, v1, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const v7, 0x10001

    invoke-direct {v0, v7}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v8

    .line 408
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    or-long/2addr v4, v13

    move-wide/from16 v16, v13

    move-wide v13, v2

    move-wide/from16 v2, v16

    .local v2, "s":J
    .local v13, "n":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    goto :goto_8a

    .line 411
    .local v2, "n":J
    .local v13, "s":J
    :cond_7d
    move-wide/from16 v16, v13

    move-wide v13, v2

    move-wide/from16 v2, v16

    .local v2, "s":J
    .local v13, "n":J
    iget-object v0, v1, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-direct {v0, v10}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v8

    goto :goto_8a

    .line 391
    .end local v2    # "s":J
    .end local v15    # "nextUnarrived":I
    .local v13, "s":J
    :cond_89
    move-wide v2, v13

    .line 413
    .end local v13    # "s":J
    .restart local v2    # "s":J
    :goto_8a
    return v8

    .line 390
    .end local v2    # "s":J
    .restart local v13    # "s":J
    :cond_8b
    move-wide v2, v13

    .line 415
    .end local v8    # "phase":I
    .end local v9    # "counts":I
    .end local v11    # "unarrived":I
    .end local v13    # "s":J
    goto/16 :goto_4

    .line 389
    .restart local v2    # "s":J
    .restart local v8    # "phase":I
    .restart local v9    # "counts":I
    .restart local v11    # "unarrived":I
    :cond_8e
    move/from16 v12, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o doRegister(I)I
    .registers 17
    .param p1, "registrations"    # I

    .line 426
    move/from16 v6, p1

    int-to-long v2, v6

    const/16 v0, 0x10

    shl-long/2addr v2, v0

    int-to-long v4, v6

    or-long v7, v2, v4

    .line 427
    .local v7, "adjust":J
    iget-object v9, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    .line 430
    .local v9, "parent":Ljava/util/concurrent/Phaser;
    :goto_b
    if-nez v9, :cond_10

    iget-wide v2, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    .line 431
    .local v2, "s":J
    :goto_14
    long-to-int v10, v2

    .line 432
    .local v10, "counts":I
    ushr-int/lit8 v11, v10, 0x10

    .line 433
    .local v11, "parties":I
    const v0, 0xffff

    and-int v12, v10, v0

    .line 434
    .local v12, "unarrived":I
    sub-int/2addr v0, v11

    if-gt v6, v0, :cond_8b

    .line 436
    const/16 v13, 0x20

    ushr-long v4, v2, v13

    long-to-int v14, v4

    .line 437
    .local v14, "phase":I
    if-gez v14, :cond_28

    .line 438
    goto/16 :goto_85

    .line 439
    :cond_28
    const/4 v0, 0x1

    if-eq v10, v0, :cond_4b

    .line 440
    if-eqz v9, :cond_35

    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_87

    .line 441
    :cond_35
    if-nez v12, :cond_3e

    .line 442
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    const/4 v4, 0x0

    invoke-direct {v0, v14, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    goto :goto_87

    .line 443
    :cond_3e
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    add-long v4, v2, v7

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 444
    goto :goto_85

    .line 447
    :cond_4b
    if-nez v9, :cond_5d

    .line 448
    int-to-long v0, v14

    shl-long/2addr v0, v13

    or-long v4, v0, v7

    .line 449
    .local v4, "next":J
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 450
    goto :goto_85

    .line 451
    .end local v4    # "next":J
    :cond_5c
    goto :goto_87

    .line 453
    :cond_5d
    monitor-enter p0

    .line 454
    :try_start_5e
    iget-wide v4, p0, Ljava/util/concurrent/Phaser;->state:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_86

    .line 455
    invoke-direct {v9, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    move v14, v0

    .line 456
    if-gez v14, :cond_6d

    .line 457
    monitor-exit p0

    goto :goto_85

    .line 461
    :cond_6d
    :goto_6d
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    int-to-long v4, v14

    shl-long/2addr v4, v13

    or-long/2addr v4, v7

    .line 462
    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    if-nez v0, :cond_84

    .line 464
    iget-wide v4, p0, Ljava/util/concurrent/Phaser;->state:J

    move-wide v2, v4

    .line 465
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v4, v0, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v4, v13

    long-to-int v14, v4

    goto :goto_6d

    .line 468
    :cond_84
    monitor-exit p0

    .line 473
    .end local v2    # "s":J
    .end local v10    # "counts":I
    .end local v11    # "parties":I
    .end local v12    # "unarrived":I
    :goto_85
    return v14

    .line 470
    .restart local v2    # "s":J
    .restart local v10    # "counts":I
    .restart local v11    # "parties":I
    .restart local v12    # "unarrived":I
    :cond_86
    monitor-exit p0

    .line 472
    .end local v2    # "s":J
    .end local v10    # "counts":I
    .end local v11    # "parties":I
    .end local v12    # "unarrived":I
    :cond_87
    :goto_87
    goto :goto_b

    .line 470
    .restart local v2    # "s":J
    .restart local v10    # "counts":I
    .restart local v11    # "parties":I
    .restart local v12    # "unarrived":I
    :catchall_88
    move-exception v0

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_5e .. :try_end_8a} :catchall_88

    throw v0

    .line 435
    .end local v14    # "phase":I
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I
    .registers 19
    .param p1, "phase"    # I
    .param p2, "node"    # Ljava/util/concurrent/Phaser$QNode;

    .line 1032
    move-object/from16 v1, p0

    move/from16 v2, p1

    add-int/lit8 v0, v2, -0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "queued":Z
    const/4 v3, 0x0

    .line 1035
    .local v3, "lastUnarrived":I
    sget v4, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    move-object/from16 v7, p2

    move v8, v0

    .line 1038
    .end local v0    # "queued":Z
    .end local p2    # "node":Ljava/util/concurrent/Phaser$QNode;
    .local v4, "spins":I
    .local v7, "node":Ljava/util/concurrent/Phaser$QNode;
    .local v8, "queued":Z
    :goto_10
    iget-wide v5, v1, Ljava/util/concurrent/Phaser;->state:J

    move-wide v9, v5

    .local v9, "s":J
    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    long-to-int v5, v5

    move v11, v5

    .local v11, "p":I
    if-ne v5, v2, :cond_80

    .line 1039
    if-nez v7, :cond_4b

    .line 1040
    long-to-int v0, v9

    const v5, 0xffff

    and-int v12, v0, v5

    .line 1041
    .local v12, "unarrived":I
    if-eq v12, v3, :cond_30

    move v0, v12

    .end local v3    # "lastUnarrived":I
    .local v0, "lastUnarrived":I
    sget v3, Ljava/util/concurrent/Phaser;->NCPU:I

    if-ge v12, v3, :cond_2e

    .line 1043
    sget v3, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    add-int/2addr v4, v3

    move v13, v0

    goto :goto_31

    .line 1041
    :cond_2e
    move v13, v0

    goto :goto_31

    .end local v0    # "lastUnarrived":I
    .restart local v3    # "lastUnarrived":I
    :cond_30
    move v13, v3

    .line 1044
    .end local v3    # "lastUnarrived":I
    .local v13, "lastUnarrived":I
    :goto_31
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v14

    .line 1045
    .local v14, "interrupted":Z
    if-nez v14, :cond_3b

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_49

    :cond_3b
    move v15, v4

    .line 1046
    .end local v4    # "spins":I
    .local v15, "spins":I
    new-instance v0, Ljava/util/concurrent/Phaser$QNode;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 1047
    .end local v7    # "node":Ljava/util/concurrent/Phaser$QNode;
    .local v0, "node":Ljava/util/concurrent/Phaser$QNode;
    iput-boolean v14, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    move-object v7, v0

    move v4, v15

    .line 1052
    .end local v0    # "node":Ljava/util/concurrent/Phaser$QNode;
    .end local v12    # "unarrived":I
    .end local v14    # "interrupted":Z
    .end local v15    # "spins":I
    .restart local v4    # "spins":I
    .restart local v7    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_49
    move v3, v13

    goto :goto_10

    .line 1053
    .end local v13    # "lastUnarrived":I
    .restart local v3    # "lastUnarrived":I
    :cond_4b
    invoke-virtual {v7}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1054
    goto :goto_80

    .line 1055
    :cond_52
    if-nez v8, :cond_77

    .line 1056
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_5b

    iget-object v5, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_5d

    :cond_5b
    iget-object v5, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1057
    .local v5, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_5d
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Phaser$QNode;

    iput-object v6, v7, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    .line 1058
    .local v6, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v6, :cond_6b

    iget v12, v6, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v12, v2, :cond_76

    :cond_6b
    iget-wide v12, v1, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v12, v0

    long-to-int v0, v12

    if-ne v0, v2, :cond_76

    .line 1060
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v8, v0

    .line 1061
    .end local v5    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v6    # "q":Ljava/util/concurrent/Phaser$QNode;
    :cond_76
    goto :goto_10

    .line 1064
    :cond_77
    :try_start_77
    invoke-static {v7}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 1067
    :goto_7a
    goto :goto_10

    .line 1065
    :catch_7b
    move-exception v0

    .line 1066
    .local v0, "cantHappen":Ljava/lang/InterruptedException;
    const/4 v5, 0x1

    iput-boolean v5, v7, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .end local v0    # "cantHappen":Ljava/lang/InterruptedException;
    goto :goto_7a

    .line 1071
    :cond_80
    :goto_80
    if-eqz v7, :cond_a6

    .line 1072
    iget-object v5, v7, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v5, :cond_89

    .line 1073
    const/4 v5, 0x0

    iput-object v5, v7, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1074
    :cond_89
    iget-boolean v5, v7, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v5, :cond_98

    iget-boolean v5, v7, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-nez v5, :cond_98

    .line 1075
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1076
    :cond_98
    if-ne v11, v2, :cond_a6

    iget-wide v5, v1, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v5, v0

    long-to-int v0, v5

    move v11, v0

    if-ne v0, v2, :cond_a6

    .line 1077
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->abortWait(I)I

    move-result v0

    return v0

    .line 1079
    :cond_a6
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 1080
    return v11
.end method

.method private static greylist-max-o partiesOf(J)I
    .registers 3
    .param p0, "s"    # J

    .line 322
    long-to-int v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static greylist-max-o phaseOf(J)I
    .registers 4
    .param p0, "s"    # J

    .line 326
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o reconcileState()J
    .registers 14

    .line 486
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 487
    .local v0, "root":Ljava/util/concurrent/Phaser;
    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 488
    .local v1, "s":J
    if-eq v0, p0, :cond_44

    move-wide v5, v1

    .line 491
    .end local v1    # "s":J
    .local v5, "s":J
    :goto_7
    iget-wide v1, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    move v2, v1

    .local v2, "phase":I
    ushr-long v7, v5, v3

    long-to-int v4, v7

    if-eq v1, v4, :cond_41

    move v1, v3

    sget-object v3, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    int-to-long v7, v2

    shl-long/2addr v7, v1

    .line 496
    if-gez v2, :cond_21

    const-wide v9, 0xffffffffL

    and-long/2addr v9, v5

    goto :goto_32

    .line 497
    :cond_21
    long-to-int v1, v5

    ushr-int/lit8 v1, v1, 0x10

    move v4, v1

    .local v4, "p":I
    if-nez v1, :cond_2a

    const-wide/16 v9, 0x1

    goto :goto_32

    .line 498
    :cond_2a
    const-wide v9, 0xffff0000L

    and-long/2addr v9, v5

    int-to-long v11, v4

    or-long/2addr v9, v11

    .end local v4    # "p":I
    :goto_32
    or-long/2addr v7, v9

    move-wide v9, v7

    .line 494
    .end local v5    # "s":J
    .local v9, "s":J
    move-object v4, p0

    .restart local v5    # "s":J
    invoke-polymorphic/range {v3 .. v8}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v1

    .end local v5    # "s":J
    if-nez v1, :cond_3f

    .line 499
    iget-wide v5, v4, Ljava/util/concurrent/Phaser;->state:J

    .end local v9    # "s":J
    .restart local v5    # "s":J
    goto :goto_7

    .line 494
    .end local v5    # "s":J
    .restart local v9    # "s":J
    :cond_3f
    move-wide v1, v9

    goto :goto_45

    .line 491
    .end local v9    # "s":J
    .restart local v5    # "s":J
    :cond_41
    move-object v4, p0

    move-wide v1, v5

    goto :goto_45

    .line 488
    .end local v2    # "phase":I
    .end local v5    # "s":J
    .restart local v1    # "s":J
    :cond_44
    move-object v4, p0

    .line 501
    :goto_45
    return-wide v1
.end method

.method private greylist-max-o releaseWaiters(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 970
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 971
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    move-object v2, v1

    .local v2, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v1, :cond_32

    iget v1, v2, Ljava/util/concurrent/Phaser$QNode;->phase:I

    iget-object v3, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v3, v3, Ljava/util/concurrent/Phaser;->state:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    if-eq v1, v3, :cond_32

    .line 973
    iget-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    move-object v3, v1

    .local v3, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_9

    .line 975
    const/4 v1, 0x0

    iput-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 976
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_9

    .line 979
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_32
    return-void
.end method

.method private greylist-max-o stateToString(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 957
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->phaseOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 958
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 959
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    return-object v0
.end method

.method private static greylist-max-o unarrivedOf(J)I
    .registers 4
    .param p0, "s"    # J

    .line 317
    long-to-int v0, p0

    .line 318
    .local v0, "counts":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    const v1, 0xffff

    and-int/2addr v1, v0

    :goto_a
    return v1
.end method


# virtual methods
.method public whitelist test-api arrive()I
    .registers 2

    .line 630
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api arriveAndAwaitAdvance()I
    .registers 17

    .line 673
    move-object/from16 v1, p0

    iget-object v6, v1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 675
    .local v6, "root":Ljava/util/concurrent/Phaser;
    :goto_4
    if-ne v6, v1, :cond_9

    iget-wide v2, v1, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_d

    :cond_9
    invoke-direct {v1}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v2

    .line 676
    .local v2, "s":J
    :goto_d
    const/16 v7, 0x20

    ushr-long v4, v2, v7

    long-to-int v8, v4

    .line 677
    .local v8, "phase":I
    if-gez v8, :cond_15

    .line 678
    return v8

    .line 679
    :cond_15
    long-to-int v9, v2

    .line 680
    .local v9, "counts":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1b
    const v0, 0xffff

    and-int/2addr v0, v9

    :goto_1f
    move v11, v0

    .line 681
    .local v11, "unarrived":I
    if-lez v11, :cond_79

    .line 683
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v12, 0x1

    sub-long v4, v2, v12

    move-wide v14, v4

    .local v14, "s":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    .end local v2    # "s":J
    if-eqz v0, :cond_77

    .line 684
    if-le v11, v10, :cond_38

    .line 685
    const/4 v0, 0x0

    invoke-direct {v6, v8, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v0

    return v0

    .line 686
    :cond_38
    if-eq v6, v1, :cond_41

    .line 687
    iget-object v0, v1, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    move-result v0

    return v0

    .line 688
    :cond_41
    const-wide v2, 0xffff0000L

    and-long/2addr v2, v14

    .line 689
    .local v2, "n":J
    long-to-int v0, v2

    ushr-int/lit8 v10, v0, 0x10

    .line 690
    .local v10, "nextUnarrived":I
    invoke-virtual {v1, v8, v10}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 691
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    goto :goto_5a

    .line 692
    :cond_54
    if-nez v10, :cond_58

    .line 693
    or-long/2addr v2, v12

    goto :goto_5a

    .line 695
    :cond_58
    int-to-long v4, v10

    or-long/2addr v2, v4

    .line 696
    :goto_5a
    add-int/lit8 v0, v8, 0x1

    const v4, 0x7fffffff

    and-int v12, v0, v4

    .line 697
    .local v12, "nextPhase":I
    int-to-long v4, v12

    shl-long/2addr v4, v7

    or-long/2addr v4, v2

    .line 698
    .end local v2    # "n":J
    .local v4, "n":J
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    move-wide v2, v14

    .end local v14    # "s":J
    .local v2, "s":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    if-nez v0, :cond_73

    .line 699
    iget-wide v13, v1, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v13, v7

    long-to-int v0, v13

    return v0

    .line 700
    :cond_73
    invoke-direct {v1, v8}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 701
    return v12

    .line 683
    .end local v2    # "s":J
    .end local v4    # "n":J
    .end local v10    # "nextUnarrived":I
    .end local v12    # "nextPhase":I
    .restart local v14    # "s":J
    :cond_77
    move-wide v2, v14

    .line 703
    .end local v8    # "phase":I
    .end local v9    # "counts":I
    .end local v11    # "unarrived":I
    .end local v14    # "s":J
    goto :goto_4

    .line 682
    .restart local v2    # "s":J
    .restart local v8    # "phase":I
    .restart local v9    # "counts":I
    .restart local v11    # "unarrived":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api arriveAndDeregister()I
    .registers 2

    .line 650
    const v0, 0x10001

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api awaitAdvance(I)I
    .registers 7
    .param p1, "phase"    # I

    .line 719
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 720
    .local v0, "root":Ljava/util/concurrent/Phaser;
    if-ne v0, p0, :cond_7

    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    .line 721
    .local v1, "s":J
    :goto_b
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    .line 722
    .local v3, "p":I
    if-gez p1, :cond_13

    .line 723
    return p1

    .line 724
    :cond_13
    if-ne v3, p1, :cond_1b

    .line 725
    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v4

    return v4

    .line 726
    :cond_1b
    return v3
.end method

.method public whitelist test-api awaitAdvanceInterruptibly(I)I
    .registers 13
    .param p1, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 747
    .local v0, "root":Ljava/util/concurrent/Phaser;
    if-ne v0, p0, :cond_7

    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    .line 748
    .local v1, "s":J
    :goto_b
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    .line 749
    .local v3, "p":I
    if-gez p1, :cond_13

    .line 750
    return p1

    .line 751
    :cond_13
    if-ne v3, p1, :cond_2f

    .line 752
    new-instance v4, Ljava/util/concurrent/Phaser$QNode;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    move-object v5, p0

    move v6, p1

    .end local p1    # "phase":I
    .local v6, "phase":I
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 753
    .local v4, "node":Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v0, v6, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v3

    .line 754
    iget-boolean p1, v4, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez p1, :cond_29

    goto :goto_30

    .line 755
    :cond_29
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 751
    .end local v4    # "node":Ljava/util/concurrent/Phaser$QNode;
    .end local v6    # "phase":I
    .restart local p1    # "phase":I
    :cond_2f
    move v6, p1

    .line 757
    .end local p1    # "phase":I
    .restart local v6    # "phase":I
    :goto_30
    return v3
.end method

.method public whitelist test-api awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .registers 16
    .param p1, "phase"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 783
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 784
    .local v5, "nanos":J
    iget-object v7, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 785
    .local v7, "root":Ljava/util/concurrent/Phaser;
    if-ne v7, p0, :cond_b

    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_f
    move-wide v8, v0

    .line 786
    .local v8, "s":J
    const/16 v0, 0x20

    ushr-long v0, v8, v0

    long-to-int v10, v0

    .line 787
    .local v10, "p":I
    if-gez p1, :cond_18

    .line 788
    return p1

    .line 789
    :cond_18
    if-ne v10, p1, :cond_3a

    .line 790
    new-instance v0, Ljava/util/concurrent/Phaser$QNode;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    .end local p1    # "phase":I
    .local v2, "phase":I
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 791
    .local v0, "node":Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v7, v2, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v10

    .line 792
    iget-boolean p1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez p1, :cond_34

    .line 794
    if-eq v10, v2, :cond_2e

    goto :goto_3b

    .line 795
    :cond_2e
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 793
    :cond_34
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 789
    .end local v0    # "node":Ljava/util/concurrent/Phaser$QNode;
    .end local v2    # "phase":I
    .restart local p1    # "phase":I
    :cond_3a
    move v2, p1

    .line 797
    .end local p1    # "phase":I
    .restart local v2    # "phase":I
    :goto_3b
    return v10
.end method

.method public whitelist test-api bulkRegister(I)I
    .registers 3
    .param p1, "parties"    # I

    .line 610
    if-ltz p1, :cond_e

    .line 612
    if-nez p1, :cond_9

    .line 613
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    return v0

    .line 614
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0

    .line 611
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forceTermination()V
    .registers 9

    .line 811
    iget-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 813
    .local v1, "root":Ljava/util/concurrent/Phaser;
    :cond_2
    iget-wide v2, v1, Ljava/util/concurrent/Phaser;->state:J

    move-wide v4, v2

    .local v2, "s":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_20

    .line 814
    sget-object v0, Ljava/util/concurrent/Phaser;->STATE:Ljava/lang/invoke/VarHandle;

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v4, v2

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Phaser;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 818
    return-void

    .line 821
    :cond_20
    return-void
.end method

.method public whitelist test-api getArrivedParties()I
    .registers 3

    .line 853
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getParent()Ljava/util/concurrent/Phaser;
    .registers 2

    .line 873
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public final whitelist test-api getPhase()I
    .registers 4

    .line 833
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getRegisteredParties()I
    .registers 3

    .line 842
    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getRoot()Ljava/util/concurrent/Phaser;
    .registers 2

    .line 883
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public whitelist test-api getUnarrivedParties()I
    .registers 3

    .line 864
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->unarrivedOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isTerminated()Z
    .registers 5

    .line 892
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected whitelist test-api onAdvance(II)Z
    .registers 4
    .param p1, "phase"    # I
    .param p2, "registeredParties"    # I

    .line 936
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist test-api register()I
    .registers 2

    .line 587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 949
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
