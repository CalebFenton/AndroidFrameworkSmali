.class final Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final array:[I

.field final fence:I

.field final function:Ljava/util/function/IntBinaryOperator;

.field final hi:I

.field in:I

.field left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final lo:I

.field final origin:I

.field out:I

.field right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .locals 4
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 539
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@5
    .line 540
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    #@7
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    #@9
    .line 541
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    #@b
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    #@d
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    #@f
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    #@11
    .line 544
    sub-int v2, p5, p4

    #@13
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    #@16
    move-result v3

    #@17
    shl-int/lit8 v3, v3, 0x3

    #@19
    div-int v0, v2, v3

    #@1b
    .local v0, "p":I
    if-gt v0, v1, :cond_0

    #@1d
    move v0, v1

    #@1e
    .line 543
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    #@20
    .line 538
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    #@0
    .prologue
    .line 552
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 553
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    #@5
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    #@7
    .line 554
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    #@9
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    #@b
    .line 555
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    #@d
    .line 556
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    #@f
    iput p8, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    #@11
    .line 551
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 33

    #@0
    .prologue
    .line 562
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    #@4
    .local v5, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v5, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    #@a
    .local v6, "a":[I
    if-nez v6, :cond_1

    #@c
    .line 563
    .end local v6    # "a":[I
    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v13

    #@12
    .line 564
    .restart local v6    # "a":[I
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget v9, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    #@16
    .local v9, "th":I
    move-object/from16 v0, p0

    #@18
    iget v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    #@1a
    .local v7, "org":I
    move-object/from16 v0, p0

    #@1c
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    #@1e
    .line 565
    .local v8, "fnc":I
    move-object/from16 v4, p0

    #@20
    .line 566
    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    #@22
    move/from16 v19, v0

    #@24
    .local v19, "l":I
    if-ltz v19, :cond_7

    #@26
    iget v11, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    #@28
    .local v11, "h":I
    array-length v13, v6

    #@29
    if-gt v11, v13, :cond_7

    #@2b
    .line 567
    sub-int v13, v11, v19

    #@2d
    if-le v13, v9, :cond_c

    #@2f
    .line 568
    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@31
    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@33
    .line 569
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v12, :cond_4

    #@35
    .line 570
    add-int v13, v19, v11

    #@37
    ushr-int/lit8 v10, v13, 0x1

    #@39
    .line 572
    .local v10, "mid":I
    new-instance v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@3b
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    #@3e
    .line 571
    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@40
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object/from16 v23, v3

    #@42
    .line 574
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@44
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v13, v4

    #@45
    move-object v14, v5

    #@46
    move-object v15, v6

    #@47
    move/from16 v16, v7

    #@49
    move/from16 v17, v8

    #@4b
    move/from16 v18, v9

    #@4d
    move/from16 v20, v10

    #@4f
    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    #@52
    .line 573
    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@54
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v4, v12

    #@55
    .line 606
    .end local v10    # "mid":I
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_3
    if-eqz v23, :cond_2

    #@57
    .line 607
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@5a
    goto :goto_0

    #@5b
    .line 577
    :cond_4
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    #@5d
    move/from16 v29, v0

    #@5f
    .line 578
    .local v29, "pin":I
    move/from16 v0, v29

    #@61
    iput v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    #@63
    .line 579
    const/4 v4, 0x0

    #@64
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    const/16 v23, 0x0

    #@66
    .line 580
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_6

    #@68
    .line 581
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    #@6a
    move/from16 v26, v0

    #@6c
    .line 582
    .local v26, "lout":I
    move/from16 v0, v19

    #@6e
    if-ne v0, v7, :cond_8

    #@70
    .end local v26    # "lout":I
    :goto_1
    move/from16 v0, v26

    #@72
    iput v0, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    #@74
    .line 585
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@77
    move-result v22

    #@78
    .local v22, "c":I
    and-int/lit8 v13, v22, 0x1

    #@7a
    if-eqz v13, :cond_9

    #@7c
    .line 594
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@7f
    move-result v22

    #@80
    .restart local v22    # "c":I
    and-int/lit8 v13, v22, 0x1

    #@82
    if-eqz v13, :cond_a

    #@84
    .line 603
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_3
    if-nez v4, :cond_3

    #@86
    .line 559
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v11    # "h":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_7
    :goto_4
    return-void

    #@87
    .line 583
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v11    # "h":I
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    .restart local v29    # "pin":I
    :cond_8
    move/from16 v0, v29

    #@89
    move/from16 v1, v26

    #@8b
    invoke-interface {v5, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@8e
    move-result v26

    #@8f
    goto :goto_1

    #@90
    .line 587
    .end local v26    # "lout":I
    .restart local v22    # "c":I
    :cond_9
    or-int/lit8 v13, v22, 0x1

    #@92
    move/from16 v0, v22

    #@94
    invoke-virtual {v3, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@97
    move-result v13

    #@98
    if-eqz v13, :cond_5

    #@9a
    .line 588
    move-object v4, v3

    #@9b
    .line 589
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_2

    #@9c
    .line 596
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_a
    or-int/lit8 v13, v22, 0x1

    #@9e
    move/from16 v0, v22

    #@a0
    invoke-virtual {v12, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@a3
    move-result v13

    #@a4
    if-eqz v13, :cond_6

    #@a6
    .line 597
    if-eqz v4, :cond_b

    #@a8
    .line 598
    move-object/from16 v23, v4

    #@aa
    .line 599
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_b
    move-object v4, v12

    #@ab
    .line 600
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_3

    #@ac
    .line 612
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_c
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@af
    move-result v21

    #@b0
    .local v21, "b":I
    and-int/lit8 v13, v21, 0x4

    #@b2
    if-nez v13, :cond_7

    #@b4
    .line 614
    and-int/lit8 v13, v21, 0x1

    #@b6
    if-eqz v13, :cond_d

    #@b8
    const/16 v31, 0x4

    #@ba
    .line 616
    .local v31, "state":I
    :goto_5
    or-int v13, v21, v31

    #@bc
    move/from16 v0, v21

    #@be
    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@c1
    move-result v13

    #@c2
    if-eqz v13, :cond_c

    #@c4
    .line 621
    const/4 v13, 0x2

    #@c5
    move/from16 v0, v31

    #@c7
    if-eq v0, v13, :cond_10

    #@c9
    .line 623
    move/from16 v0, v19

    #@cb
    if-ne v0, v7, :cond_f

    #@cd
    .line 624
    aget v32, v6, v7

    #@cf
    .line 625
    .local v32, "sum":I
    add-int/lit8 v24, v7, 0x1

    #@d1
    .line 631
    .local v24, "first":I
    :goto_6
    move/from16 v25, v24

    #@d3
    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    #@d5
    if-ge v0, v11, :cond_12

    #@d7
    .line 632
    aget v13, v6, v25

    #@d9
    move/from16 v0, v32

    #@db
    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@de
    move-result v32

    #@df
    aput v32, v6, v25

    #@e1
    .line 631
    add-int/lit8 v25, v25, 0x1

    #@e3
    goto :goto_7

    #@e4
    .line 615
    .end local v24    # "first":I
    .end local v25    # "i":I
    .end local v31    # "state":I
    .end local v32    # "sum":I
    :cond_d
    move/from16 v0, v19

    #@e6
    if-le v0, v7, :cond_e

    #@e8
    const/16 v31, 0x2

    #@ea
    goto :goto_5

    #@eb
    :cond_e
    const/16 v31, 0x6

    #@ed
    goto :goto_5

    #@ee
    .line 628
    .restart local v31    # "state":I
    :cond_f
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    #@f0
    move/from16 v32, v0

    #@f2
    .line 629
    .restart local v32    # "sum":I
    move/from16 v24, v19

    #@f4
    .restart local v24    # "first":I
    goto :goto_6

    #@f5
    .line 634
    .end local v24    # "first":I
    .end local v32    # "sum":I
    :cond_10
    if-ge v11, v8, :cond_11

    #@f7
    .line 635
    aget v32, v6, v19

    #@f9
    .line 636
    .restart local v32    # "sum":I
    add-int/lit8 v25, v19, 0x1

    #@fb
    .restart local v25    # "i":I
    :goto_8
    move/from16 v0, v25

    #@fd
    if-ge v0, v11, :cond_12

    #@ff
    .line 637
    aget v13, v6, v25

    #@101
    move/from16 v0, v32

    #@103
    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@106
    move-result v32

    #@107
    .line 636
    add-int/lit8 v25, v25, 0x1

    #@109
    goto :goto_8

    #@10a
    .line 640
    .end local v25    # "i":I
    .end local v32    # "sum":I
    :cond_11
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    #@10c
    move/from16 v32, v0

    #@10e
    .line 641
    .restart local v32    # "sum":I
    :cond_12
    move/from16 v0, v32

    #@110
    iput v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    #@112
    .line 643
    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    #@115
    move-result-object v28

    #@116
    check-cast v28, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@118
    .local v28, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v28, :cond_14

    #@11a
    .line 644
    and-int/lit8 v13, v31, 0x4

    #@11c
    if-eqz v13, :cond_7

    #@11e
    .line 645
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    #@121
    goto/16 :goto_4

    #@123
    .line 648
    :cond_14
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@126
    move-result v21

    #@127
    .line 649
    and-int v13, v21, v31

    #@129
    and-int/lit8 v13, v13, 0x4

    #@12b
    if-eqz v13, :cond_15

    #@12d
    .line 650
    move-object/from16 v4, v28

    #@12f
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_9

    #@130
    .line 651
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_15
    and-int v13, v21, v31

    #@132
    and-int/lit8 v13, v13, 0x2

    #@134
    if-eqz v13, :cond_1a

    #@136
    .line 653
    move-object/from16 v0, v28

    #@138
    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@13a
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v12, :cond_16

    #@13c
    .line 654
    move-object/from16 v0, v28

    #@13e
    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    #@140
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_16

    #@142
    .line 655
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    #@144
    move/from16 v26, v0

    #@146
    .line 656
    .restart local v26    # "lout":I
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    #@148
    if-ne v13, v8, :cond_18

    #@14a
    .end local v26    # "lout":I
    :goto_a
    move/from16 v0, v26

    #@14c
    move-object/from16 v1, v28

    #@14e
    iput v0, v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    #@150
    .line 659
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_16
    and-int/lit8 v13, v21, 0x1

    #@152
    if-nez v13, :cond_19

    #@154
    .line 660
    move-object/from16 v0, v28

    #@156
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    #@158
    if-ne v13, v7, :cond_19

    #@15a
    const/16 v30, 0x1

    #@15c
    .line 661
    .local v30, "refork":I
    :goto_b
    or-int v13, v21, v31

    #@15e
    or-int v27, v13, v30

    #@160
    .local v27, "nextState":I
    move/from16 v0, v27

    #@162
    move/from16 v1, v21

    #@164
    if-eq v0, v1, :cond_17

    #@166
    .line 662
    move-object/from16 v0, v28

    #@168
    move/from16 v1, v21

    #@16a
    move/from16 v2, v27

    #@16c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@16f
    move-result v13

    #@170
    .line 661
    if-eqz v13, :cond_13

    #@172
    .line 663
    :cond_17
    const/16 v31, 0x2

    #@174
    .line 664
    move-object/from16 v4, v28

    #@176
    .line 665
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v30, :cond_13

    #@178
    .line 666
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@17b
    goto :goto_9

    #@17c
    .line 657
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v27    # "nextState":I
    .end local v30    # "refork":I
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    :cond_18
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    #@17e
    move/from16 v0, v26

    #@180
    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@183
    move-result v26

    #@184
    goto :goto_a

    #@185
    .line 660
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v26    # "lout":I
    :cond_19
    const/16 v30, 0x0

    #@187
    goto :goto_b

    #@188
    .line 669
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1a
    or-int v13, v21, v31

    #@18a
    move-object/from16 v0, v28

    #@18c
    move/from16 v1, v21

    #@18e
    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@191
    move-result v13

    #@192
    if-eqz v13, :cond_13

    #@194
    goto/16 :goto_4
.end method
