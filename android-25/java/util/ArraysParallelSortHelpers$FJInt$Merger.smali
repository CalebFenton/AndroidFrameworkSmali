.class final Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
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
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[I

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[I

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[I[IIIIIII)V
    .locals 0
    .param p2, "a"    # [I
    .param p3, "w"    # [I
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[I[IIIIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 608
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 609
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->a:[I

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->w:[I

    #@7
    .line 610
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lbase:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lsize:I

    #@b
    .line 611
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rsize:I

    #@f
    .line 612
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->wbase:I

    #@11
    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->gran:I

    #@13
    .line 607
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    #@0
    .prologue
    .line 616
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->a:[I

    #@4
    .local v4, "a":[I
    move-object/from16 v0, p0

    #@6
    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->w:[I

    #@8
    .line 617
    .local v5, "w":[I
    move-object/from16 v0, p0

    #@a
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lbase:I

    #@c
    move/from16 v16, v0

    #@e
    .local v16, "lb":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lsize:I

    #@12
    move/from16 v20, v0

    #@14
    .local v20, "ln":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rbase:I

    #@18
    move/from16 v22, v0

    #@1a
    .line 618
    .local v22, "rb":I
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rsize:I

    #@1e
    move/from16 v26, v0

    #@20
    .local v26, "rn":I
    move-object/from16 v0, p0

    #@22
    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->wbase:I

    #@24
    .local v14, "k":I
    move-object/from16 v0, p0

    #@26
    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->gran:I

    #@28
    .line 619
    .local v11, "g":I
    if-eqz v4, :cond_0

    #@2a
    if-nez v5, :cond_1

    #@2c
    .line 620
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2e
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@31
    throw v3

    #@32
    .line 619
    :cond_1
    if-ltz v16, :cond_0

    #@34
    if-ltz v22, :cond_0

    #@36
    if-ltz v14, :cond_0

    #@38
    .line 622
    :goto_0
    move/from16 v0, v20

    #@3a
    move/from16 v1, v26

    #@3c
    if-lt v0, v1, :cond_5

    #@3e
    .line 623
    move/from16 v0, v20

    #@40
    if-gt v0, v11, :cond_3

    #@42
    .line 657
    :cond_2
    add-int v17, v16, v20

    #@44
    .local v17, "lf":I
    add-int v23, v22, v26

    #@46
    .local v23, "rf":I
    move v15, v14

    #@47
    .line 658
    .end local v14    # "k":I
    .local v15, "k":I
    :goto_1
    move/from16 v0, v16

    #@49
    move/from16 v1, v17

    #@4b
    if-ge v0, v1, :cond_9

    #@4d
    move/from16 v0, v22

    #@4f
    move/from16 v1, v23

    #@51
    if-ge v0, v1, :cond_9

    #@53
    .line 660
    aget v12, v4, v16

    #@55
    .local v12, "al":I
    aget v13, v4, v22

    #@57
    .local v13, "ar":I
    if-gt v12, v13, :cond_8

    #@59
    .line 661
    add-int/lit8 v16, v16, 0x1

    #@5b
    move/from16 v28, v12

    #@5d
    .line 666
    .local v28, "t":I
    :goto_2
    add-int/lit8 v14, v15, 0x1

    #@5f
    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput v28, v5, v15

    #@61
    move v15, v14

    #@62
    .end local v14    # "k":I
    .restart local v15    # "k":I
    goto :goto_1

    #@63
    .line 625
    .end local v12    # "al":I
    .end local v13    # "ar":I
    .end local v15    # "k":I
    .end local v17    # "lf":I
    .end local v23    # "rf":I
    .end local v28    # "t":I
    .restart local v14    # "k":I
    :cond_3
    move/from16 v24, v26

    #@65
    .line 626
    .local v24, "rh":I
    ushr-int/lit8 v18, v20, 0x1

    #@67
    .local v18, "lh":I
    add-int v3, v18, v16

    #@69
    aget v27, v4, v3

    #@6b
    .line 627
    .local v27, "split":I
    const/16 v21, 0x0

    #@6d
    .local v21, "lo":I
    :goto_3
    move/from16 v0, v21

    #@6f
    move/from16 v1, v24

    #@71
    if-ge v0, v1, :cond_7

    #@73
    .line 628
    add-int v3, v21, v24

    #@75
    ushr-int/lit8 v25, v3, 0x1

    #@77
    .line 629
    .local v25, "rm":I
    add-int v3, v25, v22

    #@79
    aget v3, v4, v3

    #@7b
    move/from16 v0, v27

    #@7d
    if-gt v0, v3, :cond_4

    #@7f
    .line 630
    move/from16 v24, v25

    #@81
    goto :goto_3

    #@82
    .line 632
    :cond_4
    add-int/lit8 v21, v25, 0x1

    #@84
    goto :goto_3

    #@85
    .line 636
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v25    # "rm":I
    .end local v27    # "split":I
    :cond_5
    move/from16 v0, v26

    #@87
    if-le v0, v11, :cond_2

    #@89
    .line 638
    move/from16 v18, v20

    #@8b
    .line 639
    .restart local v18    # "lh":I
    ushr-int/lit8 v24, v26, 0x1

    #@8d
    .restart local v24    # "rh":I
    add-int v3, v24, v22

    #@8f
    aget v27, v4, v3

    #@91
    .line 640
    .restart local v27    # "split":I
    const/16 v21, 0x0

    #@93
    .restart local v21    # "lo":I
    :goto_4
    move/from16 v0, v21

    #@95
    move/from16 v1, v18

    #@97
    if-ge v0, v1, :cond_7

    #@99
    .line 641
    add-int v3, v21, v18

    #@9b
    ushr-int/lit8 v19, v3, 0x1

    #@9d
    .line 642
    .local v19, "lm":I
    add-int v3, v19, v16

    #@9f
    aget v3, v4, v3

    #@a1
    move/from16 v0, v27

    #@a3
    if-gt v0, v3, :cond_6

    #@a5
    .line 643
    move/from16 v18, v19

    #@a7
    goto :goto_4

    #@a8
    .line 645
    :cond_6
    add-int/lit8 v21, v19, 0x1

    #@aa
    goto :goto_4

    #@ab
    .line 648
    .end local v19    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;

    #@ad
    add-int v6, v16, v18

    #@af
    sub-int v7, v20, v18

    #@b1
    .line 649
    add-int v8, v22, v24

    #@b3
    sub-int v9, v26, v24

    #@b5
    .line 650
    add-int v3, v14, v18

    #@b7
    add-int v10, v3, v24

    #@b9
    move-object/from16 v3, p0

    #@bb
    .line 648
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIIIII)V

    #@be
    .line 651
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
    move/from16 v26, v24

    #@c0
    .line 652
    move/from16 v20, v18

    #@c2
    .line 653
    const/4 v3, 0x1

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@c8
    .line 654
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@cb
    goto/16 :goto_0

    #@cd
    .line 664
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
    .end local v14    # "k":I
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v27    # "split":I
    .restart local v12    # "al":I
    .restart local v13    # "ar":I
    .restart local v15    # "k":I
    .restart local v17    # "lf":I
    .restart local v23    # "rf":I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    #@cf
    move/from16 v28, v13

    #@d1
    .restart local v28    # "t":I
    goto :goto_2

    #@d2
    .line 668
    .end local v12    # "al":I
    .end local v13    # "ar":I
    .end local v28    # "t":I
    :cond_9
    move/from16 v0, v22

    #@d4
    move/from16 v1, v23

    #@d6
    if-ge v0, v1, :cond_b

    #@d8
    .line 669
    sub-int v3, v23, v22

    #@da
    move/from16 v0, v22

    #@dc
    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@df
    .line 672
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@e2
    .line 615
    return-void

    #@e3
    .line 670
    :cond_b
    move/from16 v0, v16

    #@e5
    move/from16 v1, v17

    #@e7
    if-ge v0, v1, :cond_a

    #@e9
    .line 671
    sub-int v3, v17, v16

    #@eb
    move/from16 v0, v16

    #@ed
    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@f0
    goto :goto_5
.end method
