.class final Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
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
.field final a:[C

.field final base:I

.field final gran:I

.field final size:I

.field final w:[C

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V
    .locals 0
    .param p2, "a"    # [C
    .param p3, "w"    # [C
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[C[CIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 352
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 353
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    #@7
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    #@b
    .line 354
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    #@f
    .line 351
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 28

    #@0
    .prologue
    .line 357
    move-object/from16 v2, p0

    #@2
    .line 358
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    #@6
    .local v4, "a":[C
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    #@a
    .line 359
    .local v3, "w":[C
    move-object/from16 v0, p0

    #@c
    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    #@e
    .local v9, "b":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    #@12
    move/from16 v22, v0

    #@14
    .local v22, "n":I
    move-object/from16 v0, p0

    #@16
    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    #@18
    .local v5, "wb":I
    move-object/from16 v0, p0

    #@1a
    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    #@1c
    .line 360
    .local v10, "g":I
    :goto_0
    move/from16 v0, v22

    #@1e
    if-le v0, v10, :cond_0

    #@20
    .line 361
    ushr-int/lit8 v6, v22, 0x1

    #@22
    .local v6, "h":I
    ushr-int/lit8 v16, v6, 0x1

    #@24
    .local v16, "q":I
    add-int v27, v6, v16

    #@26
    .line 362
    .local v27, "u":I
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@28
    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    #@2a
    .line 363
    add-int v7, v5, v6

    #@2c
    sub-int v8, v22, v6

    #@2e
    .line 362
    invoke-direct/range {v1 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    #@31
    invoke-direct {v12, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@34
    .line 364
    .local v12, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v26, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@36
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    #@38
    add-int v15, v9, v6

    #@3a
    .line 365
    add-int v17, v9, v27

    #@3c
    sub-int v18, v22, v27

    #@3e
    add-int v19, v5, v6

    #@40
    move-object v13, v4

    #@41
    move-object v14, v3

    #@42
    move/from16 v20, v10

    #@44
    .line 364
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    #@47
    move-object/from16 v0, v26

    #@49
    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@4c
    .line 366
    .local v26, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    #@4e
    add-int v21, v9, v27

    #@50
    sub-int v22, v22, v27

    #@52
    add-int v23, v5, v27

    #@54
    move-object/from16 v18, v26

    #@56
    move-object/from16 v19, v4

    #@58
    move-object/from16 v20, v3

    #@5a
    move/from16 v24, v10

    #@5c
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    #@5f
    .end local v22    # "n":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@62
    .line 367
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    #@64
    add-int v21, v9, v6

    #@66
    add-int v23, v5, v6

    #@68
    move-object/from16 v18, v26

    #@6a
    move-object/from16 v19, v4

    #@6c
    move-object/from16 v20, v3

    #@6e
    move/from16 v22, v16

    #@70
    move/from16 v24, v10

    #@72
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    #@75
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@78
    .line 368
    new-instance v25, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@7a
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    #@7c
    .line 369
    add-int v17, v9, v16

    #@7e
    sub-int v18, v6, v16

    #@80
    move-object v13, v4

    #@81
    move-object v14, v3

    #@82
    move v15, v9

    #@83
    move/from16 v19, v5

    #@85
    move/from16 v20, v10

    #@87
    .line 368
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    #@8a
    move-object/from16 v0, v25

    #@8c
    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@8f
    .line 370
    .local v25, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    #@91
    add-int v21, v9, v16

    #@93
    sub-int v22, v6, v16

    #@95
    add-int v23, v5, v16

    #@97
    move-object/from16 v18, v25

    #@99
    move-object/from16 v19, v4

    #@9b
    move-object/from16 v20, v3

    #@9d
    move/from16 v24, v10

    #@9f
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    #@a2
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@a5
    .line 371
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    #@a7
    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v25

    #@a9
    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@ac
    .line 372
    .restart local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v22, v16

    #@ae
    .restart local v22    # "n":I
    goto/16 :goto_0

    #@b0
    .line 374
    .end local v6    # "h":I
    .end local v12    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "q":I
    .end local v25    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v26    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v27    # "u":I
    :cond_0
    add-int v1, v9, v22

    #@b2
    add-int/lit8 v19, v1, -0x1

    #@b4
    move-object/from16 v17, v4

    #@b6
    move/from16 v18, v9

    #@b8
    move-object/from16 v20, v3

    #@ba
    move/from16 v21, v5

    #@bc
    invoke-static/range {v17 .. v22}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    #@bf
    .line 375
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@c2
    .line 356
    return-void
.end method
