.class final Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJLong;
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
.field final a:[J

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[J

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V
    .locals 0
    .param p2, "a"    # [J
    .param p3, "w"    # [J
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
            "<*>;[J[JIIIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 719
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 720
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->a:[J

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->w:[J

    #@7
    .line 721
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lbase:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lsize:I

    #@b
    .line 722
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rsize:I

    #@f
    .line 723
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->wbase:I

    #@11
    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->gran:I

    #@13
    .line 718
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    #@0
    .prologue
    .line 727
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->a:[J

    #@4
    .local v4, "a":[J
    move-object/from16 v0, p0

    #@6
    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->w:[J

    #@8
    .line 728
    .local v5, "w":[J
    move-object/from16 v0, p0

    #@a
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lbase:I

    #@c
    move/from16 v18, v0

    #@e
    .local v18, "lb":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lsize:I

    #@12
    move/from16 v22, v0

    #@14
    .local v22, "ln":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rbase:I

    #@18
    move/from16 v24, v0

    #@1a
    .line 729
    .local v24, "rb":I
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rsize:I

    #@1e
    move/from16 v28, v0

    #@20
    .local v28, "rn":I
    move-object/from16 v0, p0

    #@22
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->wbase:I

    #@24
    move/from16 v16, v0

    #@26
    .local v16, "k":I
    move-object/from16 v0, p0

    #@28
    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->gran:I

    #@2a
    .line 730
    .local v11, "g":I
    if-eqz v4, :cond_0

    #@2c
    if-nez v5, :cond_1

    #@2e
    .line 731
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@30
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@33
    throw v3

    #@34
    .line 730
    :cond_1
    if-ltz v18, :cond_0

    #@36
    if-ltz v24, :cond_0

    #@38
    if-ltz v16, :cond_0

    #@3a
    .line 733
    :goto_0
    move/from16 v0, v22

    #@3c
    move/from16 v1, v28

    #@3e
    if-lt v0, v1, :cond_5

    #@40
    .line 734
    move/from16 v0, v22

    #@42
    if-gt v0, v11, :cond_3

    #@44
    .line 768
    :cond_2
    add-int v19, v18, v22

    #@46
    .local v19, "lf":I
    add-int v25, v24, v28

    #@48
    .local v25, "rf":I
    move/from16 v17, v16

    #@4a
    .line 769
    .end local v16    # "k":I
    .local v17, "k":I
    :goto_1
    move/from16 v0, v18

    #@4c
    move/from16 v1, v19

    #@4e
    if-ge v0, v1, :cond_9

    #@50
    move/from16 v0, v24

    #@52
    move/from16 v1, v25

    #@54
    if-ge v0, v1, :cond_9

    #@56
    .line 771
    aget-wide v12, v4, v18

    #@58
    .local v12, "al":J
    aget-wide v14, v4, v24

    #@5a
    .local v14, "ar":J
    cmp-long v3, v12, v14

    #@5c
    if-gtz v3, :cond_8

    #@5e
    .line 772
    add-int/lit8 v18, v18, 0x1

    #@60
    move-wide/from16 v32, v12

    #@62
    .line 777
    .local v32, "t":J
    :goto_2
    add-int/lit8 v16, v17, 0x1

    #@64
    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput-wide v32, v5, v17

    #@66
    move/from16 v17, v16

    #@68
    .end local v16    # "k":I
    .restart local v17    # "k":I
    goto :goto_1

    #@69
    .line 736
    .end local v12    # "al":J
    .end local v14    # "ar":J
    .end local v17    # "k":I
    .end local v19    # "lf":I
    .end local v25    # "rf":I
    .end local v32    # "t":J
    .restart local v16    # "k":I
    :cond_3
    move/from16 v26, v28

    #@6b
    .line 737
    .local v26, "rh":I
    ushr-int/lit8 v20, v22, 0x1

    #@6d
    .local v20, "lh":I
    add-int v3, v20, v18

    #@6f
    aget-wide v30, v4, v3

    #@71
    .line 738
    .local v30, "split":J
    const/16 v23, 0x0

    #@73
    .local v23, "lo":I
    :goto_3
    move/from16 v0, v23

    #@75
    move/from16 v1, v26

    #@77
    if-ge v0, v1, :cond_7

    #@79
    .line 739
    add-int v3, v23, v26

    #@7b
    ushr-int/lit8 v27, v3, 0x1

    #@7d
    .line 740
    .local v27, "rm":I
    add-int v3, v27, v24

    #@7f
    aget-wide v6, v4, v3

    #@81
    cmp-long v3, v30, v6

    #@83
    if-gtz v3, :cond_4

    #@85
    .line 741
    move/from16 v26, v27

    #@87
    goto :goto_3

    #@88
    .line 743
    :cond_4
    add-int/lit8 v23, v27, 0x1

    #@8a
    goto :goto_3

    #@8b
    .line 747
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v27    # "rm":I
    .end local v30    # "split":J
    :cond_5
    move/from16 v0, v28

    #@8d
    if-le v0, v11, :cond_2

    #@8f
    .line 749
    move/from16 v20, v22

    #@91
    .line 750
    .restart local v20    # "lh":I
    ushr-int/lit8 v26, v28, 0x1

    #@93
    .restart local v26    # "rh":I
    add-int v3, v26, v24

    #@95
    aget-wide v30, v4, v3

    #@97
    .line 751
    .restart local v30    # "split":J
    const/16 v23, 0x0

    #@99
    .restart local v23    # "lo":I
    :goto_4
    move/from16 v0, v23

    #@9b
    move/from16 v1, v20

    #@9d
    if-ge v0, v1, :cond_7

    #@9f
    .line 752
    add-int v3, v23, v20

    #@a1
    ushr-int/lit8 v21, v3, 0x1

    #@a3
    .line 753
    .local v21, "lm":I
    add-int v3, v21, v18

    #@a5
    aget-wide v6, v4, v3

    #@a7
    cmp-long v3, v30, v6

    #@a9
    if-gtz v3, :cond_6

    #@ab
    .line 754
    move/from16 v20, v21

    #@ad
    goto :goto_4

    #@ae
    .line 756
    :cond_6
    add-int/lit8 v23, v21, 0x1

    #@b0
    goto :goto_4

    #@b1
    .line 759
    .end local v21    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;

    #@b3
    add-int v6, v18, v20

    #@b5
    sub-int v7, v22, v20

    #@b7
    .line 760
    add-int v8, v24, v26

    #@b9
    sub-int v9, v28, v26

    #@bb
    .line 761
    add-int v3, v16, v20

    #@bd
    add-int v10, v3, v26

    #@bf
    move-object/from16 v3, p0

    #@c1
    .line 759
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V

    #@c4
    .line 762
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
    move/from16 v28, v26

    #@c6
    .line 763
    move/from16 v22, v20

    #@c8
    .line 764
    const/4 v3, 0x1

    #@c9
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    #@ce
    .line 765
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@d1
    goto/16 :goto_0

    #@d3
    .line 775
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
    .end local v16    # "k":I
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v30    # "split":J
    .restart local v12    # "al":J
    .restart local v14    # "ar":J
    .restart local v17    # "k":I
    .restart local v19    # "lf":I
    .restart local v25    # "rf":I
    :cond_8
    add-int/lit8 v24, v24, 0x1

    #@d5
    move-wide/from16 v32, v14

    #@d7
    .restart local v32    # "t":J
    goto :goto_2

    #@d8
    .line 779
    .end local v12    # "al":J
    .end local v14    # "ar":J
    .end local v32    # "t":J
    :cond_9
    move/from16 v0, v24

    #@da
    move/from16 v1, v25

    #@dc
    if-ge v0, v1, :cond_b

    #@de
    .line 780
    sub-int v3, v25, v24

    #@e0
    move/from16 v0, v24

    #@e2
    move/from16 v1, v17

    #@e4
    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@e7
    .line 783
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@ea
    .line 726
    return-void

    #@eb
    .line 781
    :cond_b
    move/from16 v0, v18

    #@ed
    move/from16 v1, v19

    #@ef
    if-ge v0, v1, :cond_a

    #@f1
    .line 782
    sub-int v3, v19, v18

    #@f3
    move/from16 v0, v18

    #@f5
    move/from16 v1, v17

    #@f7
    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@fa
    goto :goto_5
.end method
