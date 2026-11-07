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
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final blacklist array:[I

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/IntBinaryOperator;

.field final blacklist hi:I

.field blacklist in:I

.field blacklist left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:I

.field blacklist right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 579
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 580
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 581
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 583
    nop

    .line 585
    sub-int v0, p5, p4

    .line 584
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 585
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 586
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 592
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 593
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 594
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 595
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 596
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 597
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 20

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    move-object v4, v1

    .local v4, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v1, :cond_179

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    move-object v1, v5

    .local v5, "a":[I
    if-eqz v1, :cond_179

    .line 604
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v8, "th":I
    iget v6, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v6, "org":I
    iget v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 605
    .local v7, "fnc":I
    move-object/from16 v1, p0

    move-object v3, v1

    .line 606
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_15
    iget v9, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move v1, v9

    .local v1, "l":I
    if-ltz v9, :cond_177

    iget v10, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    move v2, v10

    .local v2, "h":I
    array-length v9, v5

    if-gt v10, v9, :cond_174

    .line 607
    sub-int v9, v2, v1

    const/4 v10, 0x1

    if-le v9, v8, :cond_9e

    .line 608
    iget-object v11, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v11, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v12, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 609
    .local v12, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v11, :cond_46

    .line 610
    add-int v9, v1, v2

    ushr-int/2addr v9, v10

    .line 611
    .local v9, "mid":I
    move v10, v2

    .end local v2    # "h":I
    .local v10, "h":I
    new-instance v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    move v13, v10

    .end local v10    # "h":I
    .local v13, "h":I
    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v12, v2

    move-object v14, v2

    .line 613
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move v10, v9

    move v9, v1

    .end local v1    # "l":I
    .local v9, "l":I
    .local v10, "mid":I
    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v2, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v11, v2

    .line 615
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v10    # "mid":I
    .local v2, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v3, v2

    goto/16 :goto_97

    .line 617
    .end local v9    # "l":I
    .end local v13    # "h":I
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v1    # "l":I
    .local v2, "h":I
    .restart local v3    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_46
    move v9, v1

    move v13, v2

    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    iget v1, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 618
    .local v1, "pin":I
    iput v1, v11, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 619
    const/4 v2, 0x0

    move-object v3, v2

    .line 620
    .local v2, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v12, :cond_79

    .line 621
    iget v14, v11, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 622
    .local v14, "lout":I
    if-ne v9, v6, :cond_56

    move v15, v14

    goto :goto_5a

    .line 623
    :cond_56
    invoke-interface {v4, v1, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v15

    :goto_5a
    iput v15, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 625
    :goto_5c
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v15

    move/from16 v16, v15

    .local v16, "c":I
    and-int/2addr v15, v10

    if-eqz v15, :cond_68

    .line 626
    move/from16 v17, v10

    goto :goto_7b

    .line 627
    :cond_68
    or-int/lit8 v15, v16, 0x1

    move/from16 v17, v10

    move/from16 v10, v16

    .end local v16    # "c":I
    .local v10, "c":I
    invoke-virtual {v12, v10, v15}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v15

    if-eqz v15, :cond_76

    .line 628
    move-object v3, v12

    .line 629
    goto :goto_7b

    .line 627
    :cond_76
    move/from16 v10, v17

    goto :goto_5c

    .line 620
    .end local v10    # "c":I
    .end local v14    # "lout":I
    :cond_79
    move/from16 v17, v10

    .line 634
    :cond_7b
    :goto_7b
    invoke-virtual {v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v10

    move v14, v10

    .local v14, "c":I
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_86

    .line 635
    move-object v14, v2

    goto :goto_93

    .line 636
    :cond_86
    or-int/lit8 v10, v14, 0x1

    invoke-virtual {v11, v14, v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 637
    if-eqz v3, :cond_91

    .line 638
    move-object v2, v3

    .line 639
    :cond_91
    move-object v3, v11

    .line 640
    move-object v14, v2

    .line 643
    .end local v2    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v14, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_93
    if-nez v3, :cond_97

    .line 644
    goto/16 :goto_178

    .line 646
    .end local v1    # "pin":I
    :cond_97
    :goto_97
    if-eqz v14, :cond_9c

    .line 647
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 648
    .end local v11    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v14    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_9c
    goto/16 :goto_15

    .line 607
    .end local v9    # "l":I
    .end local v13    # "h":I
    .local v1, "l":I
    .local v2, "h":I
    :cond_9e
    move v9, v1

    move v13, v2

    move/from16 v17, v10

    .line 652
    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    :goto_a2
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v10, 0x4

    and-int/2addr v1, v10

    if-eqz v1, :cond_ad

    .line 653
    goto/16 :goto_178

    .line 654
    :cond_ad
    and-int/lit8 v1, v2, 0x1

    const/4 v11, 0x2

    if-eqz v1, :cond_b4

    move v1, v10

    goto :goto_b9

    .line 655
    :cond_b4
    if-le v9, v6, :cond_b8

    move v1, v11

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x6

    :goto_b9
    nop

    .line 656
    .local v1, "state":I
    or-int v12, v2, v1

    invoke-virtual {v3, v2, v12}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v12

    if-eqz v12, :cond_170

    .line 657
    nop

    .line 661
    .end local v2    # "b":I
    if-eq v1, v11, :cond_e0

    .line 663
    if-ne v9, v6, :cond_cc

    .line 664
    aget v2, v5, v6

    .line 665
    .local v2, "sum":I
    add-int/lit8 v12, v6, 0x1

    .local v12, "first":I
    goto :goto_cf

    .line 668
    .end local v2    # "sum":I
    .end local v12    # "first":I
    :cond_cc
    iget v2, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 669
    .restart local v2    # "sum":I
    move v12, v9

    .line 671
    .restart local v12    # "first":I
    :goto_cf
    move v14, v12

    .local v14, "i":I
    :goto_d0
    if-ge v14, v13, :cond_de

    .line 672
    aget v15, v5, v14

    invoke-interface {v4, v2, v15}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v15

    move v2, v15

    aput v15, v5, v14

    .line 671
    add-int/lit8 v14, v14, 0x1

    goto :goto_d0

    .line 673
    .end local v12    # "first":I
    .end local v14    # "i":I
    :cond_de
    move v12, v2

    goto :goto_f6

    .line 674
    .end local v2    # "sum":I
    :cond_e0
    if-ge v13, v7, :cond_f3

    .line 675
    aget v2, v5, v9

    .line 676
    .restart local v2    # "sum":I
    add-int/lit8 v12, v9, 0x1

    .local v12, "i":I
    :goto_e6
    if-ge v12, v13, :cond_f1

    .line 677
    aget v14, v5, v12

    invoke-interface {v4, v2, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    .line 676
    add-int/lit8 v12, v12, 0x1

    goto :goto_e6

    :cond_f1
    move v12, v2

    .end local v12    # "i":I
    goto :goto_f6

    .line 680
    .end local v2    # "sum":I
    :cond_f3
    iget v2, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move v12, v2

    .line 681
    .local v12, "sum":I
    :goto_f6
    iput v12, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 683
    :goto_f8
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v14, v2

    .local v14, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v2, :cond_10a

    .line 684
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_178

    .line 685
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->quietlyComplete()V

    goto/16 :goto_178

    .line 688
    :cond_10a
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v2

    .line 689
    .local v2, "b":I
    and-int v15, v2, v1

    and-int/2addr v15, v10

    if-eqz v15, :cond_115

    .line 690
    move-object v3, v14

    goto :goto_16b

    .line 691
    :cond_115
    and-int v15, v2, v1

    and-int/2addr v15, v11

    if-eqz v15, :cond_162

    .line 693
    iget-object v15, v14, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v16, v15

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v15, :cond_140

    iget-object v15, v14, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v18, v15

    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v15, :cond_13b

    .line 695
    move-object/from16 v15, v16

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v15, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v10, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 696
    .local v10, "lout":I
    move-object/from16 v11, v18

    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v11, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v0, v11, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v0, v7, :cond_132

    move v0, v10

    goto :goto_138

    .line 697
    :cond_132
    iget v0, v11, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    invoke-interface {v4, v10, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    :goto_138
    iput v0, v14, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    goto :goto_142

    .line 693
    .end local v10    # "lout":I
    .end local v11    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v15    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_13b
    move-object/from16 v15, v16

    move-object/from16 v11, v18

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v11    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v15    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_142

    .end local v11    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v15    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_140
    move-object/from16 v15, v16

    .line 699
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v15    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_142
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_14d

    iget v0, v14, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v0, v6, :cond_14d

    .line 700
    move/from16 v0, v17

    goto :goto_14e

    :cond_14d
    const/4 v0, 0x0

    .line 701
    .local v0, "refork":I
    :goto_14e
    or-int v10, v2, v1

    or-int/2addr v10, v0

    move v11, v10

    .local v11, "nextState":I
    if-eq v10, v2, :cond_15a

    .line 702
    invoke-virtual {v14, v2, v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v10

    if-eqz v10, :cond_161

    .line 703
    :cond_15a
    const/4 v1, 0x2

    .line 704
    move-object v3, v14

    .line 705
    if-eqz v0, :cond_161

    .line 706
    invoke-virtual {v14}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 708
    .end local v0    # "refork":I
    .end local v11    # "nextState":I
    .end local v15    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_161
    goto :goto_16b

    .line 709
    :cond_162
    or-int v0, v2, v1

    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 710
    goto :goto_178

    .line 711
    .end local v2    # "b":I
    :cond_16b
    :goto_16b
    const/4 v10, 0x4

    const/4 v11, 0x2

    move-object/from16 v0, p0

    goto :goto_f8

    .line 656
    .end local v12    # "sum":I
    .end local v14    # "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v2    # "b":I
    :cond_170
    move-object/from16 v0, p0

    goto/16 :goto_a2

    .line 606
    .end local v9    # "l":I
    .end local v13    # "h":I
    .local v1, "l":I
    .local v2, "h":I
    :cond_174
    move v9, v1

    move v13, v2

    .end local v1    # "l":I
    .end local v2    # "h":I
    .restart local v9    # "l":I
    .restart local v13    # "h":I
    goto :goto_178

    .end local v9    # "l":I
    .end local v13    # "h":I
    .restart local v1    # "l":I
    :cond_177
    move v9, v1

    .line 714
    .end local v1    # "l":I
    .restart local v9    # "l":I
    :cond_178
    :goto_178
    return-void

    .line 603
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v5    # "a":[I
    .end local v6    # "org":I
    .end local v7    # "fnc":I
    .end local v8    # "th":I
    .end local v9    # "l":I
    :cond_179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
