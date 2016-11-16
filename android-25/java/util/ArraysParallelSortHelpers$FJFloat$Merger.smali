.class final Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJFloat;
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
.field final a:[F

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[F

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V
    .locals 0
    .param p2, "a"    # [F
    .param p3, "w"    # [F
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
            "<*>;[F[FIIIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 830
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 831
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    #@7
    .line 832
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    #@b
    .line 833
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    #@f
    .line 834
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    #@11
    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    #@13
    .line 829
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    #@0
    .prologue
    .line 838
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    #@4
    .local v4, "a":[F
    move-object/from16 v0, p0

    #@6
    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    #@8
    .line 839
    .local v5, "w":[F
    move-object/from16 v0, p0

    #@a
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    #@c
    move/from16 v16, v0

    #@e
    .local v16, "lb":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    #@12
    move/from16 v20, v0

    #@14
    .local v20, "ln":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    #@18
    move/from16 v22, v0

    #@1a
    .line 840
    .local v22, "rb":I
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    #@1e
    move/from16 v26, v0

    #@20
    .local v26, "rn":I
    move-object/from16 v0, p0

    #@22
    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    #@24
    .local v14, "k":I
    move-object/from16 v0, p0

    #@26
    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    #@28
    .line 841
    .local v11, "g":I
    if-eqz v4, :cond_0

    #@2a
    if-nez v5, :cond_1

    #@2c
    .line 842
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2e
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@31
    throw v3

    #@32
    .line 841
    :cond_1
    if-ltz v16, :cond_0

    #@34
    if-ltz v22, :cond_0

    #@36
    if-ltz v14, :cond_0

    #@38
    .line 844
    :goto_0
    move/from16 v0, v20

    #@3a
    move/from16 v1, v26

    #@3c
    if-lt v0, v1, :cond_5

    #@3e
    .line 845
    move/from16 v0, v20

    #@40
    if-gt v0, v11, :cond_3

    #@42
    .line 879
    :cond_2
    add-int v17, v16, v20

    #@44
    .local v17, "lf":I
    add-int v23, v22, v26

    #@46
    .local v23, "rf":I
    move v15, v14

    #@47
    .line 880
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
    .line 882
    aget v12, v4, v16

    #@55
    .local v12, "al":F
    aget v13, v4, v22

    #@57
    .local v13, "ar":F
    cmpg-float v3, v12, v13

    #@59
    if-gtz v3, :cond_8

    #@5b
    .line 883
    add-int/lit8 v16, v16, 0x1

    #@5d
    move/from16 v28, v12

    #@5f
    .line 888
    .local v28, "t":F
    :goto_2
    add-int/lit8 v14, v15, 0x1

    #@61
    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput v28, v5, v15

    #@63
    move v15, v14

    #@64
    .end local v14    # "k":I
    .restart local v15    # "k":I
    goto :goto_1

    #@65
    .line 847
    .end local v12    # "al":F
    .end local v13    # "ar":F
    .end local v15    # "k":I
    .end local v17    # "lf":I
    .end local v23    # "rf":I
    .end local v28    # "t":F
    .restart local v14    # "k":I
    :cond_3
    move/from16 v24, v26

    #@67
    .line 848
    .local v24, "rh":I
    ushr-int/lit8 v18, v20, 0x1

    #@69
    .local v18, "lh":I
    add-int v3, v18, v16

    #@6b
    aget v27, v4, v3

    #@6d
    .line 849
    .local v27, "split":F
    const/16 v21, 0x0

    #@6f
    .local v21, "lo":I
    :goto_3
    move/from16 v0, v21

    #@71
    move/from16 v1, v24

    #@73
    if-ge v0, v1, :cond_7

    #@75
    .line 850
    add-int v3, v21, v24

    #@77
    ushr-int/lit8 v25, v3, 0x1

    #@79
    .line 851
    .local v25, "rm":I
    add-int v3, v25, v22

    #@7b
    aget v3, v4, v3

    #@7d
    cmpg-float v3, v27, v3

    #@7f
    if-gtz v3, :cond_4

    #@81
    .line 852
    move/from16 v24, v25

    #@83
    goto :goto_3

    #@84
    .line 854
    :cond_4
    add-int/lit8 v21, v25, 0x1

    #@86
    goto :goto_3

    #@87
    .line 858
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v25    # "rm":I
    .end local v27    # "split":F
    :cond_5
    move/from16 v0, v26

    #@89
    if-le v0, v11, :cond_2

    #@8b
    .line 860
    move/from16 v18, v20

    #@8d
    .line 861
    .restart local v18    # "lh":I
    ushr-int/lit8 v24, v26, 0x1

    #@8f
    .restart local v24    # "rh":I
    add-int v3, v24, v22

    #@91
    aget v27, v4, v3

    #@93
    .line 862
    .restart local v27    # "split":F
    const/16 v21, 0x0

    #@95
    .restart local v21    # "lo":I
    :goto_4
    move/from16 v0, v21

    #@97
    move/from16 v1, v18

    #@99
    if-ge v0, v1, :cond_7

    #@9b
    .line 863
    add-int v3, v21, v18

    #@9d
    ushr-int/lit8 v19, v3, 0x1

    #@9f
    .line 864
    .local v19, "lm":I
    add-int v3, v19, v16

    #@a1
    aget v3, v4, v3

    #@a3
    cmpg-float v3, v27, v3

    #@a5
    if-gtz v3, :cond_6

    #@a7
    .line 865
    move/from16 v18, v19

    #@a9
    goto :goto_4

    #@aa
    .line 867
    :cond_6
    add-int/lit8 v21, v19, 0x1

    #@ac
    goto :goto_4

    #@ad
    .line 870
    .end local v19    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;

    #@af
    add-int v6, v16, v18

    #@b1
    sub-int v7, v20, v18

    #@b3
    .line 871
    add-int v8, v22, v24

    #@b5
    sub-int v9, v26, v24

    #@b7
    .line 872
    add-int v3, v14, v18

    #@b9
    add-int v10, v3, v24

    #@bb
    move-object/from16 v3, p0

    #@bd
    .line 870
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V

    #@c0
    .line 873
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    move/from16 v26, v24

    #@c2
    .line 874
    move/from16 v20, v18

    #@c4
    .line 875
    const/4 v3, 0x1

    #@c5
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@ca
    .line 876
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 886
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    .end local v14    # "k":I
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v27    # "split":F
    .restart local v12    # "al":F
    .restart local v13    # "ar":F
    .restart local v15    # "k":I
    .restart local v17    # "lf":I
    .restart local v23    # "rf":I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    #@d1
    move/from16 v28, v13

    #@d3
    .restart local v28    # "t":F
    goto :goto_2

    #@d4
    .line 890
    .end local v12    # "al":F
    .end local v13    # "ar":F
    .end local v28    # "t":F
    :cond_9
    move/from16 v0, v22

    #@d6
    move/from16 v1, v23

    #@d8
    if-ge v0, v1, :cond_b

    #@da
    .line 891
    sub-int v3, v23, v22

    #@dc
    move/from16 v0, v22

    #@de
    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@e1
    .line 894
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@e4
    .line 837
    return-void

    #@e5
    .line 892
    :cond_b
    move/from16 v0, v16

    #@e7
    move/from16 v1, v17

    #@e9
    if-ge v0, v1, :cond_a

    #@eb
    .line 893
    sub-int v3, v17, v16

    #@ed
    move/from16 v0, v16

    #@ef
    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@f2
    goto :goto_5
.end method
