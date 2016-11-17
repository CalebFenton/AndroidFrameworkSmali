.class final Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJByte;
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
.field final a:[B

.field final base:I

.field final gran:I

.field final size:I

.field final w:[B

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V
    .locals 0
    .param p2, "a"    # [B
    .param p3, "w"    # [B
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[B[BIIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 241
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 242
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->a:[B

    #@5
    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->w:[B

    #@7
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->base:I

    #@9
    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->size:I

    #@b
    .line 243
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->wbase:I

    #@d
    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->gran:I

    #@f
    .line 240
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    #@0
    .prologue
    .line 246
    move-object/from16 v2, p0

    #@2
    .line 247
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->a:[B

    #@6
    .local v4, "a":[B
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->w:[B

    #@a
    .line 248
    .local v3, "w":[B
    move-object/from16 v0, p0

    #@c
    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->base:I

    #@e
    .local v9, "b":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->size:I

    #@12
    move/from16 v26, v0

    #@14
    .local v26, "n":I
    move-object/from16 v0, p0

    #@16
    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->wbase:I

    #@18
    .local v5, "wb":I
    move-object/from16 v0, p0

    #@1a
    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->gran:I

    #@1c
    .line 249
    .local v10, "g":I
    :goto_0
    move/from16 v0, v26

    #@1e
    if-le v0, v10, :cond_0

    #@20
    .line 250
    ushr-int/lit8 v6, v26, 0x1

    #@22
    .local v6, "h":I
    ushr-int/lit8 v16, v6, 0x1

    #@24
    .local v16, "q":I
    add-int v28, v6, v16

    #@26
    .line 251
    .local v28, "u":I
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@28
    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    #@2a
    .line 252
    add-int v7, v5, v6

    #@2c
    sub-int v8, v26, v6

    #@2e
    .line 251
    invoke-direct/range {v1 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    #@31
    invoke-direct {v12, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@34
    .line 253
    .local v12, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v27, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@36
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    #@38
    add-int v15, v9, v6

    #@3a
    .line 254
    add-int v17, v9, v28

    #@3c
    sub-int v18, v26, v28

    #@3e
    add-int v19, v5, v6

    #@40
    move-object v13, v4

    #@41
    move-object v14, v3

    #@42
    move/from16 v20, v10

    #@44
    .line 253
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    #@47
    move-object/from16 v0, v27

    #@49
    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@4c
    .line 255
    .local v27, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    #@4e
    add-int v21, v9, v28

    #@50
    sub-int v22, v26, v28

    #@52
    add-int v23, v5, v28

    #@54
    move-object/from16 v18, v27

    #@56
    move-object/from16 v19, v4

    #@58
    move-object/from16 v20, v3

    #@5a
    move/from16 v24, v10

    #@5c
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    #@5f
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@62
    .line 256
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    #@64
    add-int v21, v9, v6

    #@66
    add-int v23, v5, v6

    #@68
    move-object/from16 v18, v27

    #@6a
    move-object/from16 v19, v4

    #@6c
    move-object/from16 v20, v3

    #@6e
    move/from16 v22, v16

    #@70
    move/from16 v24, v10

    #@72
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    #@75
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@78
    .line 257
    new-instance v25, Ljava/util/ArraysParallelSortHelpers$Relay;

    #@7a
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    #@7c
    .line 258
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
    .line 257
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    #@8a
    move-object/from16 v0, v25

    #@8c
    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@8f
    .line 259
    .local v25, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

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
    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    #@a2
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@a5
    .line 260
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    #@a7
    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v25

    #@a9
    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@ac
    .line 261
    .restart local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v26, v16

    #@ae
    goto/16 :goto_0

    #@b0
    .line 263
    .end local v6    # "h":I
    .end local v12    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "q":I
    .end local v25    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v27    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v28    # "u":I
    :cond_0
    add-int v1, v9, v26

    #@b2
    add-int/lit8 v1, v1, -0x1

    #@b4
    invoke-static {v4, v9, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    #@b7
    .line 264
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    #@ba
    .line 245
    return-void
.end method
