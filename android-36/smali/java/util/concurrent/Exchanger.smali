.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Node;,
        Ljava/util/concurrent/Exchanger$Participant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist AA:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o ASHIFT:I = 0x5

.field private static final blacklist BOUND:Ljava/lang/invoke/VarHandle;

.field static final greylist-max-o FULL:I

.field private static final blacklist MATCH:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o MMASK:I = 0xff

.field private static final greylist-max-o NCPU:I

.field private static final greylist-max-o NULL_ITEM:Ljava/lang/Object;

.field private static final greylist-max-o SEQ:I = 0x100

.field private static final blacklist SLOT:Ljava/lang/invoke/VarHandle;

.field private static final greylist-max-o SPINS:I = 0x400

.field private static final greylist-max-o TIMED_OUT:Ljava/lang/Object;


# instance fields
.field private volatile greylist-max-o arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile greylist-max-o bound:I

.field private final greylist-max-o participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile greylist-max-o slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 271
    const-class v0, Ljava/util/concurrent/Exchanger;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 278
    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v2, 0x1fe

    if-lt v1, v2, :cond_15

    const/16 v1, 0xff

    goto :goto_19

    :cond_15
    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    ushr-int/lit8 v1, v1, 0x1

    :goto_19
    sput v1, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 292
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 299
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 639
    :try_start_29
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 640
    .local v1, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-string v2, "bound"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/Exchanger;->BOUND:Ljava/lang/invoke/VarHandle;

    .line 641
    const-string v2, "slot"

    const-class v3, Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/Exchanger;->SLOT:Ljava/lang/invoke/VarHandle;

    .line 642
    const-class v0, Ljava/util/concurrent/Exchanger$Node;

    const-string v2, "match"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/Exchanger;->MATCH:Ljava/lang/invoke/VarHandle;

    .line 643
    const-class v0, [Ljava/util/concurrent/Exchanger$Node;

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;
    :try_end_55
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_29 .. :try_end_55} :catch_57

    .line 646
    .end local v1    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 647
    return-void

    .line 644
    :catch_57
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 524
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    .line 526
    return-void
.end method

.method private final greylist-max-o arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 27
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .line 355
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 356
    .local v2, "a":[Ljava/util/concurrent/Exchanger$Node;
    array-length v3, v2

    .line 357
    .local v3, "alen":I
    iget-object v4, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v4}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Exchanger$Node;

    .line 358
    .local v4, "p":Ljava/util/concurrent/Exchanger$Node;
    iget v5, v4, Ljava/util/concurrent/Exchanger$Node;->index:I

    move v7, v5

    move-wide/from16 v5, p3

    .line 360
    .end local p3    # "ns":J
    .local v5, "ns":J
    .local v7, "i":I
    :goto_14
    shl-int/lit8 v8, v7, 0x5

    add-int/lit8 v8, v8, 0x1f

    .line 361
    .local v8, "j":I
    if-ltz v8, :cond_1c

    if-lt v8, v3, :cond_1e

    .line 362
    :cond_1c
    add-int/lit8 v8, v3, -0x1

    .line 363
    :cond_1e
    sget-object v9, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v9, v2, v8}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/util/concurrent/Exchanger$Node;I)Ljava/util/concurrent/Exchanger$Node;

    move-result-object v9

    .line 364
    .local v9, "q":Ljava/util/concurrent/Exchanger$Node;
    const/4 v10, 0x0

    if-eqz v9, :cond_3d

    sget-object v11, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v11, v2, v8, v9, v10}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/util/concurrent/Exchanger$Node;ILjava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 365
    iget-object v10, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 366
    .local v10, "v":Ljava/lang/Object;
    iput-object v1, v9, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 367
    iget-object v11, v9, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 368
    .local v11, "w":Ljava/lang/Thread;
    if-eqz v11, :cond_3c

    .line 369
    invoke-static {v11}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 370
    :cond_3c
    return-object v10

    .line 372
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "w":Ljava/lang/Thread;
    :cond_3d
    iget v11, v0, Ljava/util/concurrent/Exchanger;->bound:I

    move v12, v11

    .local v12, "b":I
    and-int/lit16 v11, v11, 0xff

    move v13, v11

    .local v13, "m":I
    if-gt v7, v11, :cond_143

    if-nez v9, :cond_143

    .line 373
    iput-object v1, v4, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 374
    sget-object v11, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v11, v2, v8, v10, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/util/concurrent/Exchanger$Node;ILjava/lang/Void;Ljava/util/concurrent/Exchanger$Node;)Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 375
    if-eqz p2, :cond_5d

    if-nez v13, :cond_5d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    add-long v16, v16, v5

    goto :goto_5f

    :cond_5d
    const-wide/16 v16, 0x0

    .line 376
    .local v16, "end":J
    :goto_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    .line 377
    .local v11, "t":Ljava/lang/Thread;
    const-wide/16 p3, 0x0

    iget v14, v4, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .local v14, "h":I
    const/16 v15, 0x400

    .line 378
    .local v15, "spins":I
    :goto_69
    iget-object v10, v4, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 379
    .restart local v10    # "v":Ljava/lang/Object;
    if-eqz v10, :cond_7b

    .line 380
    sget-object v1, Ljava/util/concurrent/Exchanger;->MATCH:Ljava/lang/invoke/VarHandle;

    move/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "alen":I
    .local v19, "alen":I
    invoke-polymorphic {v1, v4, v3}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)V

    .line 381
    iput-object v3, v4, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 382
    iput v14, v4, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 383
    return-object v10

    .line 385
    .end local v19    # "alen":I
    .restart local v3    # "alen":I
    :cond_7b
    move/from16 v19, v3

    .end local v3    # "alen":I
    .restart local v19    # "alen":I
    if-lez v15, :cond_af

    .line 386
    shl-int/lit8 v1, v14, 0x1

    xor-int/2addr v1, v14

    .end local v14    # "h":I
    .local v1, "h":I
    ushr-int/lit8 v3, v1, 0x3

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v1, 0xa

    xor-int/2addr v1, v3

    .line 387
    if-nez v1, :cond_98

    .line 388
    move-wide/from16 v20, v5

    .end local v5    # "ns":J
    .local v20, "ns":J
    invoke-virtual {v11}, Ljava/lang/Thread;->threadId()J

    move-result-wide v5

    long-to-int v3, v5

    or-int/lit16 v1, v3, 0x400

    move v14, v1

    move-wide/from16 v5, v20

    goto/16 :goto_136

    .line 389
    .end local v20    # "ns":J
    .restart local v5    # "ns":J
    :cond_98
    move-wide/from16 v20, v5

    .end local v5    # "ns":J
    .restart local v20    # "ns":J
    if-gez v1, :cond_aa

    add-int/lit8 v15, v15, -0x1

    and-int/lit16 v3, v15, 0x1ff

    if-nez v3, :cond_a5

    .line 391
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 420
    .end local v10    # "v":Ljava/lang/Object;
    :cond_a5
    move v14, v1

    move-wide/from16 v5, v20

    goto/16 :goto_136

    .line 389
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_aa
    move v14, v1

    move-wide/from16 v5, v20

    goto/16 :goto_136

    .line 393
    .end local v1    # "h":I
    .end local v20    # "ns":J
    .restart local v5    # "ns":J
    .restart local v14    # "h":I
    :cond_af
    move-wide/from16 v20, v5

    .end local v5    # "ns":J
    .restart local v20    # "ns":J
    sget-object v1, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, v2, v8}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/util/concurrent/Exchanger$Node;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v4, :cond_c1

    .line 394
    const/16 v1, 0x400

    move v15, v1

    move-wide/from16 v5, v20

    .end local v15    # "spins":I
    .local v1, "spins":I
    goto/16 :goto_136

    .line 395
    .end local v1    # "spins":I
    .restart local v15    # "spins":I
    :cond_c1
    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_f4

    if-nez v13, :cond_f4

    if-eqz p2, :cond_d8

    .line 397
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v5, v16, v5

    move-wide/from16 v20, v5

    cmp-long v1, v5, p3

    if-lez v1, :cond_f6

    goto :goto_da

    .line 395
    :cond_d8
    move-wide/from16 v5, v20

    .line 398
    .end local v20    # "ns":J
    .restart local v5    # "ns":J
    :goto_da
    iput-object v11, v4, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 399
    sget-object v1, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, v2, v8}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/util/concurrent/Exchanger$Node;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_f0

    .line 400
    cmp-long v1, v5, p3

    if-nez v1, :cond_ed

    .line 401
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_f0

    .line 403
    :cond_ed
    invoke-static {v0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 405
    :cond_f0
    :goto_f0
    const/4 v3, 0x0

    iput-object v3, v4, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    goto :goto_136

    .line 407
    .end local v5    # "ns":J
    .restart local v20    # "ns":J
    :cond_f4
    move-wide/from16 v5, v20

    .end local v20    # "ns":J
    .restart local v5    # "ns":J
    :cond_f6
    sget-object v1, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v1, v2, v8}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/util/concurrent/Exchanger$Node;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_136

    sget-object v1, Ljava/util/concurrent/Exchanger;->AA:Ljava/lang/invoke/VarHandle;

    .line 408
    const/4 v3, 0x0

    invoke-polymorphic {v1, v2, v8, v4, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/util/concurrent/Exchanger$Node;ILjava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 409
    if-eqz v13, :cond_115

    .line 410
    sget-object v1, Ljava/util/concurrent/Exchanger;->BOUND:Ljava/lang/invoke/VarHandle;

    add-int/lit16 v3, v12, 0x100

    add-int/lit8 v3, v3, -0x1

    invoke-polymorphic {v1, v0, v12, v3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;II)Z

    .line 411
    :cond_115
    const/4 v3, 0x0

    iput-object v3, v4, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 412
    iput v14, v4, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 413
    iget v1, v4, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, v4, Ljava/util/concurrent/Exchanger$Node;->index:I

    .line 414
    .end local v7    # "i":I
    .local v1, "i":I
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 415
    const/16 v18, 0x0

    return-object v18

    .line 416
    :cond_129
    if-eqz p2, :cond_134

    if-nez v13, :cond_134

    cmp-long v3, v5, p3

    if-gtz v3, :cond_134

    .line 417
    sget-object v3, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    return-object v3

    .line 421
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "t":Ljava/lang/Thread;
    .end local v14    # "h":I
    .end local v15    # "spins":I
    .end local v16    # "end":J
    :cond_134
    move v7, v1

    goto :goto_17f

    .line 420
    .end local v1    # "i":I
    .restart local v7    # "i":I
    .restart local v11    # "t":Ljava/lang/Thread;
    .restart local v14    # "h":I
    .restart local v15    # "spins":I
    .restart local v16    # "end":J
    :cond_136
    :goto_136
    move-object/from16 v1, p1

    move/from16 v3, v19

    const/4 v10, 0x0

    goto/16 :goto_69

    .line 423
    .end local v11    # "t":Ljava/lang/Thread;
    .end local v14    # "h":I
    .end local v15    # "spins":I
    .end local v16    # "end":J
    .end local v19    # "alen":I
    .restart local v3    # "alen":I
    :cond_13d
    move/from16 v19, v3

    .end local v3    # "alen":I
    .restart local v19    # "alen":I
    const/4 v3, 0x0

    iput-object v3, v4, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto :goto_17f

    .line 372
    .end local v19    # "alen":I
    .restart local v3    # "alen":I
    :cond_143
    move/from16 v19, v3

    .line 426
    .end local v3    # "alen":I
    .restart local v19    # "alen":I
    iget v1, v4, Ljava/util/concurrent/Exchanger$Node;->bound:I

    if-eq v1, v12, :cond_158

    .line 427
    iput v12, v4, Ljava/util/concurrent/Exchanger$Node;->bound:I

    .line 428
    const/4 v1, 0x0

    iput v1, v4, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 429
    if-ne v7, v13, :cond_156

    if-nez v13, :cond_153

    goto :goto_156

    :cond_153
    add-int/lit8 v1, v13, -0x1

    goto :goto_157

    :cond_156
    :goto_156
    move v1, v13

    .end local v7    # "i":I
    .restart local v1    # "i":I
    :goto_157
    goto :goto_17c

    .line 431
    .end local v1    # "i":I
    .restart local v7    # "i":I
    :cond_158
    iget v1, v4, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move v3, v1

    .local v3, "c":I
    if-lt v1, v13, :cond_172

    sget v1, Ljava/util/concurrent/Exchanger;->FULL:I

    if-eq v13, v1, :cond_172

    sget-object v1, Ljava/util/concurrent/Exchanger;->BOUND:Ljava/lang/invoke/VarHandle;

    add-int/lit16 v10, v12, 0x100

    add-int/lit8 v10, v10, 0x1

    .line 432
    invoke-polymorphic {v1, v0, v12, v10}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;II)Z

    move-result v1

    if-nez v1, :cond_16f

    goto :goto_172

    .line 437
    :cond_16f
    add-int/lit8 v1, v13, 0x1

    .end local v7    # "i":I
    .restart local v1    # "i":I
    goto :goto_17c

    .line 433
    .end local v1    # "i":I
    .restart local v7    # "i":I
    :cond_172
    :goto_172
    add-int/lit8 v1, v3, 0x1

    iput v1, v4, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 434
    if-nez v7, :cond_17a

    move v1, v13

    goto :goto_17c

    :cond_17a
    add-int/lit8 v1, v7, -0x1

    .line 438
    .end local v3    # "c":I
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :goto_17c
    iput v1, v4, Ljava/util/concurrent/Exchanger$Node;->index:I

    move v7, v1

    .line 440
    .end local v1    # "i":I
    .end local v8    # "j":I
    .end local v9    # "q":Ljava/util/concurrent/Exchanger$Node;
    .end local v12    # "b":I
    .end local v13    # "m":I
    .restart local v7    # "i":I
    :goto_17f
    move-object/from16 v1, p1

    move/from16 v3, v19

    goto/16 :goto_14
.end method

.method private final greylist-max-o slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 23
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .line 454
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Exchanger$Node;

    .line 455
    .local v2, "p":Ljava/util/concurrent/Exchanger$Node;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 456
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    .line 457
    return-object v5

    .line 460
    :cond_18
    :goto_18
    iget-object v4, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object v6, v4

    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    const/4 v7, 0x1

    if-eqz v4, :cond_52

    .line 461
    sget-object v4, Ljava/util/concurrent/Exchanger;->SLOT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0, v6, v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;Ljava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 462
    iget-object v4, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 463
    .local v4, "v":Ljava/lang/Object;
    iput-object v1, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 464
    iget-object v5, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 465
    .local v5, "w":Ljava/lang/Thread;
    if-eqz v5, :cond_32

    .line 466
    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 467
    :cond_32
    return-object v4

    .line 470
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "w":Ljava/lang/Thread;
    :cond_33
    sget v4, Ljava/util/concurrent/Exchanger;->NCPU:I

    if-le v4, v7, :cond_18

    iget v4, v0, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v4, :cond_18

    sget-object v4, Ljava/util/concurrent/Exchanger;->BOUND:Ljava/lang/invoke/VarHandle;

    .line 471
    const/4 v7, 0x0

    const/16 v8, 0x100

    invoke-polymorphic {v4, v0, v7, v8}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;II)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 472
    sget v4, Ljava/util/concurrent/Exchanger;->FULL:I

    add-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x5

    new-array v4, v4, [Ljava/util/concurrent/Exchanger$Node;

    iput-object v4, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    goto :goto_18

    .line 474
    :cond_52
    iget-object v4, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v4, :cond_57

    .line 475
    return-object v5

    .line 477
    :cond_57
    iput-object v1, v2, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 478
    sget-object v4, Ljava/util/concurrent/Exchanger;->SLOT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v4, v0, v5, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;Ljava/lang/Void;Ljava/util/concurrent/Exchanger$Node;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 479
    nop

    .line 485
    .end local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    iget v4, v2, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 486
    .local v4, "h":I
    if-eqz p2, :cond_6e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v10, v10, p3

    goto :goto_70

    :cond_6e
    const-wide/16 v10, 0x0

    .line 487
    .local v10, "end":J
    :goto_70
    sget v6, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v12, 0x400

    if-le v6, v7, :cond_77

    move v7, v12

    :cond_77
    move v13, v7

    move-wide/from16 v6, p3

    .line 489
    .end local p3    # "ns":J
    .local v6, "ns":J
    .local v13, "spins":I
    :cond_7a
    :goto_7a
    iget-object v14, v2, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object v15, v14

    .local v15, "v":Ljava/lang/Object;
    if-nez v14, :cond_f3

    .line 490
    if-lez v13, :cond_a4

    .line 491
    shl-int/lit8 v14, v4, 0x1

    xor-int/2addr v4, v14

    ushr-int/lit8 v14, v4, 0x3

    xor-int/2addr v4, v14

    shl-int/lit8 v14, v4, 0xa

    xor-int/2addr v4, v14

    .line 492
    if-nez v4, :cond_96

    .line 493
    const-wide/16 v16, 0x0

    invoke-virtual {v3}, Ljava/lang/Thread;->threadId()J

    move-result-wide v8

    long-to-int v8, v8

    or-int/lit16 v4, v8, 0x400

    goto :goto_7a

    .line 494
    :cond_96
    const-wide/16 v16, 0x0

    if-gez v4, :cond_7a

    add-int/lit8 v13, v13, -0x1

    and-int/lit16 v8, v13, 0x1ff

    if-nez v8, :cond_7a

    .line 495
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7a

    .line 497
    :cond_a4
    const-wide/16 v16, 0x0

    iget-object v8, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-eq v8, v2, :cond_ad

    .line 498
    const/16 v13, 0x400

    goto :goto_7a

    .line 499
    :cond_ad
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_d8

    iget-object v8, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v8, :cond_d8

    if-eqz p2, :cond_c4

    .line 500
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v10, v8

    move-wide v6, v8

    cmp-long v8, v8, v16

    if-lez v8, :cond_d8

    .line 501
    :cond_c4
    iput-object v3, v2, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 502
    iget-object v8, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-ne v8, v2, :cond_d5

    .line 503
    cmp-long v8, v6, v16

    if-nez v8, :cond_d2

    .line 504
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_d5

    .line 506
    :cond_d2
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 508
    :cond_d5
    :goto_d5
    iput-object v5, v2, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    goto :goto_7a

    .line 510
    :cond_d8
    sget-object v8, Ljava/util/concurrent/Exchanger;->SLOT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v8, v0, v2, v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/Exchanger;Ljava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 511
    if-eqz p2, :cond_f0

    cmp-long v8, v6, v16

    if-gtz v8, :cond_f0

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_f0

    sget-object v8, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    goto :goto_f1

    :cond_f0
    move-object v8, v5

    :goto_f1
    move-object v15, v8

    .line 512
    nop

    .line 515
    :cond_f3
    sget-object v8, Ljava/util/concurrent/Exchanger;->MATCH:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v8, v2, v5}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/Exchanger$Node;Ljava/lang/Void;)V

    .line 516
    iput-object v5, v2, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 517
    iput v4, v2, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 518
    return-object v15

    .line 480
    .end local v4    # "h":I
    .end local v10    # "end":J
    .end local v13    # "spins":I
    .end local v15    # "v":Ljava/lang/Object;
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local p3    # "ns":J
    :cond_fe
    iput-object v5, v2, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_18
.end method


# virtual methods
.method public whitelist test-api exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 565
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 566
    .local v0, "item":Ljava/lang/Object;
    :goto_6
    iget-object v1, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/Exchanger$Node;
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_15

    .line 567
    invoke-direct {p0, v0, v5, v3, v4}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    .local v6, "v":Ljava/lang/Object;
    if-nez v1, :cond_22

    .line 568
    .end local v6    # "v":Ljava/lang/Object;
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 569
    invoke-direct {p0, v0, v5, v3, v4}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    .restart local v6    # "v":Ljava/lang/Object;
    if-eqz v1, :cond_2a

    .line 571
    :cond_22
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v6, v1, :cond_28

    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    move-object v1, v6

    :goto_29
    return-object v1

    .line 570
    .end local v6    # "v":Ljava/lang/Object;
    :cond_2a
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public whitelist test-api exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 620
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 621
    .local v0, "item":Ljava/lang/Object;
    :goto_6
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 622
    .local v1, "ns":J
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    const/4 v4, 0x1

    if-nez v3, :cond_16

    .line 623
    invoke-direct {p0, v0, v4, v1, v2}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;
    if-nez v3, :cond_23

    .line 624
    .end local v5    # "v":Ljava/lang/Object;
    :cond_16
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_35

    .line 625
    invoke-direct {p0, v0, v4, v1, v2}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    .restart local v5    # "v":Ljava/lang/Object;
    if-eqz v3, :cond_35

    .line 627
    :cond_23
    sget-object v3, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    if-eq v5, v3, :cond_2f

    .line 629
    sget-object v3, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v5, v3, :cond_2d

    const/4 v3, 0x0

    goto :goto_2e

    :cond_2d
    move-object v3, v5

    :goto_2e
    return-object v3

    .line 628
    :cond_2f
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3

    .line 626
    .end local v5    # "v":Ljava/lang/Object;
    :cond_35
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method
