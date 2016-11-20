.class final Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongCumulateTask"
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
.field private static final serialVersionUID:J = -0x466ad3045ec06db1L


# instance fields
.field final array:[J

.field final fence:I

.field final function:Ljava/util/function/LongBinaryOperator;

.field final hi:I

.field in:J

.field left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final lo:I

.field final origin:I

.field out:J

.field right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V
    .locals 4
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 239
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@5
    .line 240
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    #@7
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    #@9
    .line 241
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    #@b
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    #@d
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    #@f
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    #@11
    .line 244
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
    .line 243
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    #@20
    .line 238
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    #@0
    .prologue
    .line 252
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 253
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    #@5
    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    #@7
    .line 254
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    #@9
    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    #@b
    .line 255
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    #@d
    .line 256
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    #@f
    iput p8, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    #@11
    .line 251
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 38

    #@0
    .prologue
    .line 262
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    #@4
    .local v6, "fn":Ljava/util/function/LongBinaryOperator;
    if-eqz v6, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    #@a
    .local v7, "a":[J
    if-nez v7, :cond_1

    #@c
    .line 263
    .end local v7    # "a":[J
    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v14

    #@12
    .line 264
    .restart local v7    # "a":[J
    :cond_1
    move-object/from16 v0, p0

    #@14
    iget v10, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    #@16
    .local v10, "th":I
    move-object/from16 v0, p0

    #@18
    iget v8, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    #@1a
    .local v8, "org":I
    move-object/from16 v0, p0

    #@1c
    iget v9, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    #@1e
    .line 265
    .local v9, "fnc":I
    move-object/from16 v5, p0

    #@20
    .line 266
    :cond_2
    :goto_0
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    #@22
    move/from16 v20, v0

    #@24
    .local v20, "l":I
    if-ltz v20, :cond_7

    #@26
    iget v12, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    #@28
    .local v12, "h":I
    array-length v14, v7

    #@29
    if-gt v12, v14, :cond_7

    #@2b
    .line 267
    sub-int v14, v12, v20

    #@2d
    if-le v14, v10, :cond_c

    #@2f
    .line 268
    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@31
    .local v13, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@33
    .line 269
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v13, :cond_4

    #@35
    .line 270
    add-int v14, v20, v12

    #@37
    ushr-int/lit8 v11, v14, 0x1

    #@39
    .line 272
    .local v11, "mid":I
    new-instance v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@3b
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    #@3e
    .line 271
    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@40
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object/from16 v24, v4

    #@42
    .line 274
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    new-instance v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@44
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v14, v5

    #@45
    move-object v15, v6

    #@46
    move-object/from16 v16, v7

    #@48
    move/from16 v17, v8

    #@4a
    move/from16 v18, v9

    #@4c
    move/from16 v19, v10

    #@4e
    move/from16 v21, v11

    #@50
    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    #@53
    .line 273
    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@55
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v5, v13

    #@56
    .line 306
    .end local v11    # "mid":I
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_3
    if-eqz v24, :cond_2

    #@58
    .line 307
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@5b
    goto :goto_0

    #@5c
    .line 277
    :cond_4
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    #@5e
    move-wide/from16 v32, v0

    #@60
    .line 278
    .local v32, "pin":J
    move-wide/from16 v0, v32

    #@62
    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    #@64
    .line 279
    const/4 v5, 0x0

    #@65
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    const/16 v24, 0x0

    #@67
    .line 280
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_6

    #@69
    .line 281
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    #@6b
    move-wide/from16 v28, v0

    #@6d
    .line 282
    .local v28, "lout":J
    move/from16 v0, v20

    #@6f
    if-ne v0, v8, :cond_8

    #@71
    .end local v28    # "lout":J
    :goto_1
    move-wide/from16 v0, v28

    #@73
    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    #@75
    .line 285
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@78
    move-result v23

    #@79
    .local v23, "c":I
    and-int/lit8 v14, v23, 0x1

    #@7b
    if-eqz v14, :cond_9

    #@7d
    .line 294
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@80
    move-result v23

    #@81
    .restart local v23    # "c":I
    and-int/lit8 v14, v23, 0x1

    #@83
    if-eqz v14, :cond_a

    #@85
    .line 303
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_3
    if-nez v5, :cond_3

    #@87
    .line 259
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v12    # "h":I
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_7
    :goto_4
    return-void

    #@88
    .line 283
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v12    # "h":I
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    .restart local v32    # "pin":J
    :cond_8
    move-wide/from16 v0, v32

    #@8a
    move-wide/from16 v2, v28

    #@8c
    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@8f
    move-result-wide v28

    #@90
    goto :goto_1

    #@91
    .line 287
    .end local v28    # "lout":J
    .restart local v23    # "c":I
    :cond_9
    or-int/lit8 v14, v23, 0x1

    #@93
    move/from16 v0, v23

    #@95
    invoke-virtual {v4, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@98
    move-result v14

    #@99
    if-eqz v14, :cond_5

    #@9b
    .line 288
    move-object v5, v4

    #@9c
    .line 289
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_2

    #@9d
    .line 296
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_a
    or-int/lit8 v14, v23, 0x1

    #@9f
    move/from16 v0, v23

    #@a1
    invoke-virtual {v13, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@a4
    move-result v14

    #@a5
    if-eqz v14, :cond_6

    #@a7
    .line 297
    if-eqz v5, :cond_b

    #@a9
    .line 298
    move-object/from16 v24, v5

    #@ab
    .line 299
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_b
    move-object v5, v13

    #@ac
    .line 300
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_3

    #@ad
    .line 312
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@b0
    move-result v22

    #@b1
    .local v22, "b":I
    and-int/lit8 v14, v22, 0x4

    #@b3
    if-nez v14, :cond_7

    #@b5
    .line 314
    and-int/lit8 v14, v22, 0x1

    #@b7
    if-eqz v14, :cond_d

    #@b9
    const/16 v34, 0x4

    #@bb
    .line 316
    .local v34, "state":I
    :goto_5
    or-int v14, v22, v34

    #@bd
    move/from16 v0, v22

    #@bf
    invoke-virtual {v5, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@c2
    move-result v14

    #@c3
    if-eqz v14, :cond_c

    #@c5
    .line 321
    const/4 v14, 0x2

    #@c6
    move/from16 v0, v34

    #@c8
    if-eq v0, v14, :cond_10

    #@ca
    .line 323
    move/from16 v0, v20

    #@cc
    if-ne v0, v8, :cond_f

    #@ce
    .line 324
    aget-wide v36, v7, v8

    #@d0
    .line 325
    .local v36, "sum":J
    add-int/lit8 v25, v8, 0x1

    #@d2
    .line 331
    .local v25, "first":I
    :goto_6
    move/from16 v26, v25

    #@d4
    .local v26, "i":I
    :goto_7
    move/from16 v0, v26

    #@d6
    if-ge v0, v12, :cond_12

    #@d8
    .line 332
    aget-wide v14, v7, v26

    #@da
    move-wide/from16 v0, v36

    #@dc
    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@df
    move-result-wide v36

    #@e0
    aput-wide v36, v7, v26

    #@e2
    .line 331
    add-int/lit8 v26, v26, 0x1

    #@e4
    goto :goto_7

    #@e5
    .line 315
    .end local v25    # "first":I
    .end local v26    # "i":I
    .end local v34    # "state":I
    .end local v36    # "sum":J
    :cond_d
    move/from16 v0, v20

    #@e7
    if-le v0, v8, :cond_e

    #@e9
    const/16 v34, 0x2

    #@eb
    goto :goto_5

    #@ec
    :cond_e
    const/16 v34, 0x6

    #@ee
    goto :goto_5

    #@ef
    .line 328
    .restart local v34    # "state":I
    :cond_f
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    #@f1
    move-wide/from16 v36, v0

    #@f3
    .line 329
    .restart local v36    # "sum":J
    move/from16 v25, v20

    #@f5
    .restart local v25    # "first":I
    goto :goto_6

    #@f6
    .line 334
    .end local v25    # "first":I
    .end local v36    # "sum":J
    :cond_10
    if-ge v12, v9, :cond_11

    #@f8
    .line 335
    aget-wide v36, v7, v20

    #@fa
    .line 336
    .restart local v36    # "sum":J
    add-int/lit8 v26, v20, 0x1

    #@fc
    .restart local v26    # "i":I
    :goto_8
    move/from16 v0, v26

    #@fe
    if-ge v0, v12, :cond_12

    #@100
    .line 337
    aget-wide v14, v7, v26

    #@102
    move-wide/from16 v0, v36

    #@104
    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@107
    move-result-wide v36

    #@108
    .line 336
    add-int/lit8 v26, v26, 0x1

    #@10a
    goto :goto_8

    #@10b
    .line 340
    .end local v26    # "i":I
    .end local v36    # "sum":J
    :cond_11
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    #@10d
    move-wide/from16 v36, v0

    #@10f
    .line 341
    .restart local v36    # "sum":J
    :cond_12
    move-wide/from16 v0, v36

    #@111
    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    #@113
    .line 343
    :cond_13
    :goto_9
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    #@116
    move-result-object v30

    #@117
    check-cast v30, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@119
    .local v30, "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v30, :cond_14

    #@11b
    .line 344
    and-int/lit8 v14, v34, 0x4

    #@11d
    if-eqz v14, :cond_7

    #@11f
    .line 345
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    #@122
    goto/16 :goto_4

    #@124
    .line 348
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    #@127
    move-result v22

    #@128
    .line 349
    and-int v14, v22, v34

    #@12a
    and-int/lit8 v14, v14, 0x4

    #@12c
    if-eqz v14, :cond_15

    #@12e
    .line 350
    move-object/from16 v5, v30

    #@130
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_9

    #@131
    .line 351
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_15
    and-int v14, v22, v34

    #@133
    and-int/lit8 v14, v14, 0x2

    #@135
    if-eqz v14, :cond_1a

    #@137
    .line 353
    move-object/from16 v0, v30

    #@139
    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@13b
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v13, :cond_16

    #@13d
    .line 354
    move-object/from16 v0, v30

    #@13f
    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    #@141
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_16

    #@143
    .line 355
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    #@145
    move-wide/from16 v28, v0

    #@147
    .line 356
    .restart local v28    # "lout":J
    iget v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    #@149
    if-ne v14, v9, :cond_18

    #@14b
    .end local v28    # "lout":J
    :goto_a
    move-wide/from16 v0, v28

    #@14d
    move-object/from16 v2, v30

    #@14f
    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    #@151
    .line 359
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_16
    and-int/lit8 v14, v22, 0x1

    #@153
    if-nez v14, :cond_19

    #@155
    .line 360
    move-object/from16 v0, v30

    #@157
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    #@159
    if-ne v14, v8, :cond_19

    #@15b
    const/16 v31, 0x1

    #@15d
    .line 361
    .local v31, "refork":I
    :goto_b
    or-int v14, v22, v34

    #@15f
    or-int v27, v14, v31

    #@161
    .local v27, "nextState":I
    move/from16 v0, v27

    #@163
    move/from16 v1, v22

    #@165
    if-eq v0, v1, :cond_17

    #@167
    .line 362
    move-object/from16 v0, v30

    #@169
    move/from16 v1, v22

    #@16b
    move/from16 v2, v27

    #@16d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@170
    move-result v14

    #@171
    .line 361
    if-eqz v14, :cond_13

    #@173
    .line 363
    :cond_17
    const/16 v34, 0x2

    #@175
    .line 364
    move-object/from16 v5, v30

    #@177
    .line 365
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v31, :cond_13

    #@179
    .line 366
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@17c
    goto :goto_9

    #@17d
    .line 357
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    :cond_18
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    #@17f
    move-wide/from16 v0, v28

    #@181
    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@184
    move-result-wide v28

    #@185
    goto :goto_a

    #@186
    .line 360
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v28    # "lout":J
    :cond_19
    const/16 v31, 0x0

    #@188
    goto :goto_b

    #@189
    .line 369
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_1a
    or-int v14, v22, v34

    #@18b
    move-object/from16 v0, v30

    #@18d
    move/from16 v1, v22

    #@18f
    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    #@192
    move-result v14

    #@193
    if-eqz v14, :cond_13

    #@195
    goto/16 :goto_4
.end method
