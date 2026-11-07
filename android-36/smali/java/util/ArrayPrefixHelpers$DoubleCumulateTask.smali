.class final Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x82541ef9af19ae1L


# instance fields
.field final blacklist array:[D

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/DoubleBinaryOperator;

.field final blacklist hi:I

.field blacklist in:D

.field blacklist left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:D

.field blacklist right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 427
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 428
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 429
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 431
    nop

    .line 433
    sub-int v0, p5, p4

    .line 432
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 433
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 434
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 440
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 441
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 442
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 443
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 444
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 445
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 23

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object v4, v1

    .local v4, "fn":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v1, :cond_1fa

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    move-object v1, v5

    .local v5, "a":[D
    if-eqz v1, :cond_1f8

    .line 452
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v8, "th":I
    iget v6, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v6, "org":I
    iget v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 453
    .local v7, "fnc":I
    move-object/from16 v1, p0

    move-object v3, v1

    .line 454
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_15
    iget v9, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move v1, v9

    .local v1, "l":I
    if-ltz v9, :cond_1f1

    iget v10, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    move v2, v10

    .local v2, "h":I
    array-length v9, v5

    if-gt v10, v9, :cond_1e9

    .line 455
    sub-int v9, v2, v1

    const/4 v10, 0x1

    if-le v9, v8, :cond_b5

    .line 456
    iget-object v11, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v11, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v12, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 457
    .local v12, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v11, :cond_46

    .line 458
    add-int v9, v1, v2

    ushr-int/2addr v9, v10

    .line 459
    .local v9, "mid":I
    move v10, v2

    .end local v2    # "h":I
    .local v10, "h":I
    new-instance v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    move v13, v10

    .end local v10    # "h":I
    .local v13, "h":I
    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v12, v2

    move-object v14, v2

    .line 461
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move v10, v9

    move v9, v1

    .end local v1    # "l":I
    .local v9, "l":I
    .local v10, "mid":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v11, v2

    .line 463
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v10    # "mid":I
    .local v2, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v3, v2

    goto/16 :goto_ab

    .line 465
    .end local v9    # "l":I
    .end local v13    # "h":I
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v1    # "l":I
    .local v2, "h":I
    .restart local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_46
    move v9, v1

    move v13, v2

    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    iget-wide v1, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 466
    .local v1, "pin":D
    iput-wide v1, v11, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 467
    const/4 v14, 0x0

    move-object v3, v14

    .line 468
    .restart local v14    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v12, :cond_7c

    .line 469
    move-object/from16 v16, v14

    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v16, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-wide v14, v11, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 470
    .local v14, "lout":D
    if-ne v9, v6, :cond_5c

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-wide v10, v14

    goto :goto_66

    .line 471
    :cond_5c
    invoke-interface {v4, v1, v2, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v17

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-wide/from16 v10, v17

    .end local v11    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v20, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_66
    iput-wide v10, v12, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 473
    :cond_68
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v10

    move v11, v10

    .local v11, "c":I
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_72

    .line 474
    goto :goto_82

    .line 475
    :cond_72
    or-int/lit8 v10, v11, 0x1

    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 476
    move-object v3, v12

    .line 477
    goto :goto_82

    .line 468
    .end local v16    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v20    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v11, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_7c
    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v16, v14

    .line 482
    .end local v11    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v16    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v20    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_82
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v10

    move v11, v10

    .local v11, "c":I
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8e

    .line 483
    move-object/from16 v14, v20

    goto :goto_9f

    .line 484
    :cond_8e
    or-int/lit8 v10, v11, 0x1

    move-object/from16 v14, v20

    .end local v20    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v14, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    invoke-virtual {v14, v11, v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 485
    if-eqz v3, :cond_9d

    .line 486
    move-object v10, v3

    move-object/from16 v16, v10

    .line 487
    :cond_9d
    move-object v3, v14

    .line 488
    nop

    .line 491
    .end local v11    # "c":I
    :goto_9f
    if-nez v3, :cond_a8

    .line 492
    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    goto/16 :goto_1f7

    .line 491
    :cond_a8
    move-object v11, v14

    move-object/from16 v14, v16

    .line 494
    .end local v1    # "pin":D
    .end local v16    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v11, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_ab
    if-eqz v14, :cond_b0

    .line 495
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 496
    .end local v11    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_b0
    goto/16 :goto_15

    .line 484
    .restart local v1    # "pin":D
    .local v11, "c":I
    .restart local v12    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v14, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v16    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_b2
    move-object/from16 v20, v14

    goto :goto_82

    .line 455
    .end local v9    # "l":I
    .end local v11    # "c":I
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v13    # "h":I
    .end local v14    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v16    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v1, "l":I
    .restart local v2    # "h":I
    :cond_b5
    move v9, v1

    move v13, v2

    move/from16 v19, v10

    .line 500
    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    :goto_b9
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v10, 0x4

    and-int/2addr v1, v10

    if-eqz v1, :cond_c9

    .line 501
    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    goto/16 :goto_1f7

    .line 502
    :cond_c9
    and-int/lit8 v1, v2, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_d0

    move v1, v10

    goto :goto_d5

    .line 503
    :cond_d0
    if-le v9, v6, :cond_d4

    move v1, v11

    goto :goto_d5

    :cond_d4
    const/4 v1, 0x6

    :goto_d5
    nop

    .line 504
    .local v1, "state":I
    or-int v12, v2, v1

    invoke-virtual {v3, v2, v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v12

    if-eqz v12, :cond_1de

    .line 505
    nop

    .line 509
    .end local v2    # "b":I
    if-eq v1, v11, :cond_107

    .line 511
    if-ne v9, v6, :cond_e8

    .line 512
    aget-wide v14, v5, v6

    .line 513
    .local v14, "sum":D
    add-int/lit8 v2, v6, 0x1

    .local v2, "first":I
    goto :goto_eb

    .line 516
    .end local v2    # "first":I
    .end local v14    # "sum":D
    :cond_e8
    iget-wide v14, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 517
    .restart local v14    # "sum":D
    move v2, v9

    .line 519
    .restart local v2    # "first":I
    :goto_eb
    move v12, v2

    .local v12, "i":I
    :goto_ec
    if-ge v12, v13, :cond_102

    .line 520
    move/from16 v16, v10

    move/from16 v17, v11

    aget-wide v10, v5, v12

    invoke-interface {v4, v14, v15, v10, v11}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    move-wide v14, v10

    aput-wide v10, v5, v12

    .line 519
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    goto :goto_ec

    :cond_102
    move/from16 v16, v10

    move/from16 v17, v11

    .line 521
    .end local v2    # "first":I
    .end local v12    # "i":I
    goto :goto_120

    .line 522
    .end local v14    # "sum":D
    :cond_107
    move/from16 v16, v10

    move/from16 v17, v11

    if-ge v13, v7, :cond_11e

    .line 523
    aget-wide v10, v5, v9

    .line 524
    .local v10, "sum":D
    add-int/lit8 v2, v9, 0x1

    move-wide v14, v10

    .end local v10    # "sum":D
    .local v2, "i":I
    .restart local v14    # "sum":D
    :goto_112
    if-ge v2, v13, :cond_11d

    .line 525
    aget-wide v10, v5, v2

    invoke-interface {v4, v14, v15, v10, v11}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    .end local v2    # "i":I
    :cond_11d
    goto :goto_120

    .line 528
    .end local v14    # "sum":D
    :cond_11e
    iget-wide v14, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 529
    .restart local v14    # "sum":D
    :goto_120
    iput-wide v14, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 531
    :goto_122
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v10, v2

    .local v10, "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v2, :cond_144

    .line 532
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_13b

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    goto/16 :goto_1cf

    .line 532
    :cond_13b
    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    goto/16 :goto_1cf

    .line 536
    :cond_144
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    .line 537
    .local v2, "b":I
    and-int v11, v2, v1

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_156

    .line 538
    move-object v3, v10

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    goto/16 :goto_1d5

    .line 539
    :cond_156
    and-int v11, v2, v1

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1be

    .line 541
    iget-object v11, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v12, v11

    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v11, :cond_190

    iget-object v11, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v18, v11

    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v11, :cond_185

    .line 543
    move v11, v1

    .end local v1    # "state":I
    .local v11, "state":I
    iget-wide v0, v12, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 544
    .local v0, "lout":D
    move-object/from16 v20, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v5

    .end local v5    # "a":[D
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "a":[D
    .local v20, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget v5, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v5, v7, :cond_179

    move/from16 v21, v7

    move v5, v8

    move-wide v7, v0

    goto :goto_182

    .line 545
    :cond_179
    move/from16 v21, v7

    move v5, v8

    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .local v21, "fnc":I
    iget-wide v7, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    invoke-interface {v4, v0, v1, v7, v8}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v7

    :goto_182
    iput-wide v7, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    goto :goto_198

    .line 541
    .end local v0    # "lout":D
    .end local v11    # "state":I
    .end local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v21    # "fnc":I
    .restart local v1    # "state":I
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_185
    move v11, v1

    move-object/from16 v20, v3

    move/from16 v21, v7

    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move v5, v8

    .end local v1    # "state":I
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "th":I
    .restart local v11    # "state":I
    .local v18, "a":[D
    .restart local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v21    # "fnc":I
    goto :goto_198

    .end local v11    # "state":I
    .end local v18    # "a":[D
    .end local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v21    # "fnc":I
    .restart local v1    # "state":I
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    :cond_190
    move v11, v1

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    .line 547
    .end local v1    # "state":I
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v11    # "state":I
    .restart local v18    # "a":[D
    .restart local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v21    # "fnc":I
    :goto_198
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_1a3

    iget v0, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v0, v6, :cond_1a3

    .line 548
    move/from16 v0, v19

    goto :goto_1a4

    :cond_1a3
    const/4 v0, 0x0

    .line 549
    .local v0, "refork":I
    :goto_1a4
    or-int v1, v2, v11

    or-int/2addr v1, v0

    move v3, v1

    .local v3, "nextState":I
    if-eq v1, v2, :cond_1b5

    .line 550
    invoke-virtual {v10, v2, v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1b1

    goto :goto_1b5

    :cond_1b1
    move v1, v11

    move-object/from16 v3, v20

    goto :goto_1bd

    .line 551
    :cond_1b5
    :goto_1b5
    const/4 v1, 0x2

    .line 552
    .end local v11    # "state":I
    .restart local v1    # "state":I
    move-object v7, v10

    .line 553
    .end local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v7, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v0, :cond_1bc

    .line 554
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 556
    .end local v0    # "refork":I
    .end local v3    # "nextState":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_1bc
    move-object v3, v7

    .end local v7    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_1bd
    goto :goto_1d5

    .line 557
    .end local v18    # "a":[D
    .end local v21    # "fnc":I
    .local v5, "a":[D
    .local v7, "fnc":I
    .restart local v8    # "th":I
    :cond_1be
    move v11, v1

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    .end local v1    # "state":I
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v11    # "state":I
    .restart local v18    # "a":[D
    .restart local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v21    # "fnc":I
    or-int v0, v2, v11

    invoke-virtual {v10, v2, v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 558
    nop

    .line 562
    .end local v2    # "b":I
    .end local v10    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v11    # "state":I
    .end local v13    # "h":I
    .end local v14    # "sum":D
    .end local v18    # "a":[D
    .end local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v21    # "fnc":I
    .restart local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    :goto_1cf
    move-object/from16 v3, v20

    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v18    # "a":[D
    .restart local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v21    # "fnc":I
    goto :goto_1f7

    .line 557
    .restart local v2    # "b":I
    .restart local v10    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v11    # "state":I
    .restart local v13    # "h":I
    .restart local v14    # "sum":D
    :cond_1d2
    move v1, v11

    move-object/from16 v3, v20

    .line 559
    .end local v2    # "b":I
    .end local v11    # "state":I
    .end local v20    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v1    # "state":I
    .restart local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_1d5
    move-object/from16 v0, p0

    move v8, v5

    move-object/from16 v5, v18

    move/from16 v7, v21

    goto/16 :goto_122

    .line 504
    .end local v10    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v14    # "sum":D
    .end local v18    # "a":[D
    .end local v21    # "fnc":I
    .restart local v2    # "b":I
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    :cond_1de
    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v18    # "a":[D
    .restart local v21    # "fnc":I
    move-object/from16 v0, p0

    move-object/from16 v5, v18

    goto/16 :goto_b9

    .line 454
    .end local v9    # "l":I
    .end local v13    # "h":I
    .end local v18    # "a":[D
    .end local v21    # "fnc":I
    .local v1, "l":I
    .local v2, "h":I
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    :cond_1e9
    move v9, v1

    move v13, v2

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    .end local v1    # "l":I
    .end local v2    # "h":I
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    .restart local v18    # "a":[D
    .restart local v21    # "fnc":I
    goto :goto_1f7

    .end local v9    # "l":I
    .end local v13    # "h":I
    .end local v18    # "a":[D
    .end local v21    # "fnc":I
    .restart local v1    # "l":I
    .local v5, "a":[D
    .restart local v7    # "fnc":I
    .restart local v8    # "th":I
    :cond_1f1
    move v9, v1

    move-object/from16 v18, v5

    move/from16 v21, v7

    move v5, v8

    .line 562
    .end local v1    # "l":I
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .local v5, "th":I
    .restart local v9    # "l":I
    .restart local v18    # "a":[D
    .restart local v21    # "fnc":I
    :goto_1f7
    return-void

    .line 450
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v6    # "org":I
    .end local v9    # "l":I
    .end local v18    # "a":[D
    .end local v21    # "fnc":I
    .local v5, "a":[D
    :cond_1f8
    move-object/from16 v18, v5

    .line 451
    .end local v5    # "a":[D
    :cond_1fa
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
