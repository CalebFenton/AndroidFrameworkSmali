.class public Landroid/util/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field private mParams:[F

.field private mType:C


# direct methods
.method static synthetic -get0(Landroid/util/PathParser$PathDataNode;)[F
    .locals 1

    #@0
    iget-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/util/PathParser$PathDataNode;)C
    .locals 1

    #@0
    iget-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/util/PathParser$PathDataNode;C)C
    .locals 0

    #@0
    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    #@2
    return p1
.end method

.method private constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    #@5
    .line 268
    iput-object p2, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@7
    .line 266
    return-void
.end method

.method synthetic constructor <init>(C[FLandroid/util/PathParser$PathDataNode;)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/util/PathParser$PathDataNode;-><init>(C[F)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/util/PathParser$PathDataNode;)V
    .locals 2
    .param p1, "n"    # Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 272
    iget-char v0, p1, Landroid/util/PathParser$PathDataNode;->mType:C

    #@5
    iput-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    #@7
    .line 273
    iget-object v0, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@9
    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@b
    array-length v1, v1

    #@c
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@12
    .line 271
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;)V
    .locals 0
    .param p1, "n"    # Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;)V

    #@3
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 24
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    #@0
    .prologue
    .line 311
    const/16 v22, 0x2

    #@2
    .line 312
    .local v22, "incr":I
    const/4 v3, 0x0

    #@3
    aget v20, p1, v3

    #@5
    .line 313
    .local v20, "currentX":F
    const/4 v3, 0x1

    #@6
    aget v21, p1, v3

    #@8
    .line 314
    .local v21, "currentY":F
    const/4 v3, 0x2

    #@9
    aget v16, p1, v3

    #@b
    .line 315
    .local v16, "ctrlPointX":F
    const/4 v3, 0x3

    #@c
    aget v17, p1, v3

    #@e
    .line 316
    .local v17, "ctrlPointY":F
    const/4 v3, 0x4

    #@f
    aget v18, p1, v3

    #@11
    .line 317
    .local v18, "currentSegmentStartX":F
    const/4 v3, 0x5

    #@12
    aget v19, p1, v3

    #@14
    .line 321
    .local v19, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_0

    #@17
    .line 364
    :goto_0
    const/16 v23, 0x0

    #@19
    .local v23, "k":I
    :goto_1
    move-object/from16 v0, p4

    #@1b
    array-length v3, v0

    #@1c
    move/from16 v0, v23

    #@1e
    if-ge v0, v3, :cond_10

    #@20
    .line 365
    sparse-switch p3, :sswitch_data_1

    #@23
    .line 534
    :goto_2
    move/from16 p2, p3

    #@25
    .line 364
    add-int v23, v23, v22

    #@27
    goto :goto_1

    #@28
    .line 324
    .end local v23    # "k":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    #@2b
    .line 328
    move/from16 v20, v18

    #@2d
    .line 329
    move/from16 v21, v19

    #@2f
    .line 330
    move/from16 v16, v18

    #@31
    .line 331
    move/from16 v17, v19

    #@33
    .line 332
    move-object/from16 v0, p0

    #@35
    move/from16 v1, v20

    #@37
    move/from16 v2, v21

    #@39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    #@3c
    goto :goto_0

    #@3d
    .line 340
    :sswitch_1
    const/16 v22, 0x2

    #@3f
    .line 341
    goto :goto_0

    #@40
    .line 346
    :sswitch_2
    const/16 v22, 0x1

    #@42
    .line 347
    goto :goto_0

    #@43
    .line 350
    :sswitch_3
    const/16 v22, 0x6

    #@45
    .line 351
    goto :goto_0

    #@46
    .line 356
    :sswitch_4
    const/16 v22, 0x4

    #@48
    .line 357
    goto :goto_0

    #@49
    .line 360
    :sswitch_5
    const/16 v22, 0x7

    #@4b
    .line 361
    goto :goto_0

    #@4c
    .line 367
    .restart local v23    # "k":I
    :sswitch_6
    add-int/lit8 v3, v23, 0x0

    #@4e
    aget v3, p4, v3

    #@50
    add-int/lit8 v6, v23, 0x1

    #@52
    aget v6, p4, v6

    #@54
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    #@59
    .line 368
    add-int/lit8 v3, v23, 0x0

    #@5b
    aget v3, p4, v3

    #@5d
    add-float v20, v20, v3

    #@5f
    .line 369
    add-int/lit8 v3, v23, 0x1

    #@61
    aget v3, p4, v3

    #@63
    add-float v21, v21, v3

    #@65
    .line 370
    move/from16 v18, v20

    #@67
    .line 371
    move/from16 v19, v21

    #@69
    .line 372
    goto :goto_2

    #@6a
    .line 374
    :sswitch_7
    add-int/lit8 v3, v23, 0x0

    #@6c
    aget v3, p4, v3

    #@6e
    add-int/lit8 v6, v23, 0x1

    #@70
    aget v6, p4, v6

    #@72
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    #@77
    .line 375
    add-int/lit8 v3, v23, 0x0

    #@79
    aget v20, p4, v3

    #@7b
    .line 376
    add-int/lit8 v3, v23, 0x1

    #@7d
    aget v21, p4, v3

    #@7f
    .line 377
    move/from16 v18, v20

    #@81
    .line 378
    move/from16 v19, v21

    #@83
    .line 379
    goto :goto_2

    #@84
    .line 381
    :sswitch_8
    add-int/lit8 v3, v23, 0x0

    #@86
    aget v3, p4, v3

    #@88
    add-int/lit8 v6, v23, 0x1

    #@8a
    aget v6, p4, v6

    #@8c
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    #@91
    .line 382
    add-int/lit8 v3, v23, 0x0

    #@93
    aget v3, p4, v3

    #@95
    add-float v20, v20, v3

    #@97
    .line 383
    add-int/lit8 v3, v23, 0x1

    #@99
    aget v3, p4, v3

    #@9b
    add-float v21, v21, v3

    #@9d
    .line 384
    goto :goto_2

    #@9e
    .line 386
    :sswitch_9
    add-int/lit8 v3, v23, 0x0

    #@a0
    aget v3, p4, v3

    #@a2
    add-int/lit8 v6, v23, 0x1

    #@a4
    aget v6, p4, v6

    #@a6
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    #@ab
    .line 387
    add-int/lit8 v3, v23, 0x0

    #@ad
    aget v20, p4, v3

    #@af
    .line 388
    add-int/lit8 v3, v23, 0x1

    #@b1
    aget v21, p4, v3

    #@b3
    goto/16 :goto_2

    #@b5
    .line 391
    :sswitch_a
    add-int/lit8 v3, v23, 0x0

    #@b7
    aget v3, p4, v3

    #@b9
    const/4 v6, 0x0

    #@ba
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    #@bf
    .line 392
    add-int/lit8 v3, v23, 0x0

    #@c1
    aget v3, p4, v3

    #@c3
    add-float v20, v20, v3

    #@c5
    .line 393
    goto/16 :goto_2

    #@c7
    .line 395
    :sswitch_b
    add-int/lit8 v3, v23, 0x0

    #@c9
    aget v3, p4, v3

    #@cb
    move-object/from16 v0, p0

    #@cd
    move/from16 v1, v21

    #@cf
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    #@d2
    .line 396
    add-int/lit8 v3, v23, 0x0

    #@d4
    aget v20, p4, v3

    #@d6
    goto/16 :goto_2

    #@d8
    .line 399
    :sswitch_c
    const/4 v3, 0x0

    #@d9
    add-int/lit8 v6, v23, 0x0

    #@db
    aget v6, p4, v6

    #@dd
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    #@e2
    .line 400
    add-int/lit8 v3, v23, 0x0

    #@e4
    aget v3, p4, v3

    #@e6
    add-float v21, v21, v3

    #@e8
    .line 401
    goto/16 :goto_2

    #@ea
    .line 403
    :sswitch_d
    add-int/lit8 v3, v23, 0x0

    #@ec
    aget v3, p4, v3

    #@ee
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, v20

    #@f2
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    #@f5
    .line 404
    add-int/lit8 v3, v23, 0x0

    #@f7
    aget v21, p4, v3

    #@f9
    goto/16 :goto_2

    #@fb
    .line 407
    :sswitch_e
    add-int/lit8 v3, v23, 0x0

    #@fd
    aget v4, p4, v3

    #@ff
    add-int/lit8 v3, v23, 0x1

    #@101
    aget v5, p4, v3

    #@103
    add-int/lit8 v3, v23, 0x2

    #@105
    aget v6, p4, v3

    #@107
    add-int/lit8 v3, v23, 0x3

    #@109
    aget v7, p4, v3

    #@10b
    .line 408
    add-int/lit8 v3, v23, 0x4

    #@10d
    aget v8, p4, v3

    #@10f
    add-int/lit8 v3, v23, 0x5

    #@111
    aget v9, p4, v3

    #@113
    move-object/from16 v3, p0

    #@115
    .line 407
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    #@118
    .line 410
    add-int/lit8 v3, v23, 0x2

    #@11a
    aget v3, p4, v3

    #@11c
    add-float v16, v20, v3

    #@11e
    .line 411
    add-int/lit8 v3, v23, 0x3

    #@120
    aget v3, p4, v3

    #@122
    add-float v17, v21, v3

    #@124
    .line 412
    add-int/lit8 v3, v23, 0x4

    #@126
    aget v3, p4, v3

    #@128
    add-float v20, v20, v3

    #@12a
    .line 413
    add-int/lit8 v3, v23, 0x5

    #@12c
    aget v3, p4, v3

    #@12e
    add-float v21, v21, v3

    #@130
    .line 415
    goto/16 :goto_2

    #@132
    .line 417
    :sswitch_f
    add-int/lit8 v3, v23, 0x0

    #@134
    aget v4, p4, v3

    #@136
    add-int/lit8 v3, v23, 0x1

    #@138
    aget v5, p4, v3

    #@13a
    add-int/lit8 v3, v23, 0x2

    #@13c
    aget v6, p4, v3

    #@13e
    add-int/lit8 v3, v23, 0x3

    #@140
    aget v7, p4, v3

    #@142
    .line 418
    add-int/lit8 v3, v23, 0x4

    #@144
    aget v8, p4, v3

    #@146
    add-int/lit8 v3, v23, 0x5

    #@148
    aget v9, p4, v3

    #@14a
    move-object/from16 v3, p0

    #@14c
    .line 417
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@14f
    .line 419
    add-int/lit8 v3, v23, 0x4

    #@151
    aget v20, p4, v3

    #@153
    .line 420
    add-int/lit8 v3, v23, 0x5

    #@155
    aget v21, p4, v3

    #@157
    .line 421
    add-int/lit8 v3, v23, 0x2

    #@159
    aget v16, p4, v3

    #@15b
    .line 422
    add-int/lit8 v3, v23, 0x3

    #@15d
    aget v17, p4, v3

    #@15f
    goto/16 :goto_2

    #@161
    .line 425
    :sswitch_10
    const/4 v4, 0x0

    #@162
    .line 426
    .local v4, "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    #@163
    .line 427
    .local v5, "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    #@165
    move/from16 v0, p2

    #@167
    if-eq v0, v3, :cond_0

    #@169
    const/16 v3, 0x73

    #@16b
    move/from16 v0, p2

    #@16d
    if-ne v0, v3, :cond_2

    #@16f
    .line 429
    :cond_0
    :goto_3
    sub-float v4, v20, v16

    #@171
    .line 430
    sub-float v5, v21, v17

    #@173
    .line 433
    :cond_1
    add-int/lit8 v3, v23, 0x0

    #@175
    aget v6, p4, v3

    #@177
    add-int/lit8 v3, v23, 0x1

    #@179
    aget v7, p4, v3

    #@17b
    .line 434
    add-int/lit8 v3, v23, 0x2

    #@17d
    aget v8, p4, v3

    #@17f
    add-int/lit8 v3, v23, 0x3

    #@181
    aget v9, p4, v3

    #@183
    move-object/from16 v3, p0

    #@185
    .line 432
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    #@188
    .line 436
    add-int/lit8 v3, v23, 0x0

    #@18a
    aget v3, p4, v3

    #@18c
    add-float v16, v20, v3

    #@18e
    .line 437
    add-int/lit8 v3, v23, 0x1

    #@190
    aget v3, p4, v3

    #@192
    add-float v17, v21, v3

    #@194
    .line 438
    add-int/lit8 v3, v23, 0x2

    #@196
    aget v3, p4, v3

    #@198
    add-float v20, v20, v3

    #@19a
    .line 439
    add-int/lit8 v3, v23, 0x3

    #@19c
    aget v3, p4, v3

    #@19e
    add-float v21, v21, v3

    #@1a0
    .line 440
    goto/16 :goto_2

    #@1a2
    .line 428
    :cond_2
    const/16 v3, 0x43

    #@1a4
    move/from16 v0, p2

    #@1a6
    if-eq v0, v3, :cond_0

    #@1a8
    const/16 v3, 0x53

    #@1aa
    move/from16 v0, p2

    #@1ac
    if-ne v0, v3, :cond_1

    #@1ae
    goto :goto_3

    #@1af
    .line 442
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_11
    move/from16 v4, v20

    #@1b1
    .line 443
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    #@1b3
    .line 444
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    #@1b5
    move/from16 v0, p2

    #@1b7
    if-eq v0, v3, :cond_3

    #@1b9
    const/16 v3, 0x73

    #@1bb
    move/from16 v0, p2

    #@1bd
    if-ne v0, v3, :cond_5

    #@1bf
    .line 446
    :cond_3
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    #@1c1
    mul-float v3, v3, v20

    #@1c3
    sub-float v4, v3, v16

    #@1c5
    .line 447
    const/high16 v3, 0x40000000    # 2.0f

    #@1c7
    mul-float v3, v3, v21

    #@1c9
    sub-float v5, v3, v17

    #@1cb
    .line 450
    :cond_4
    add-int/lit8 v3, v23, 0x0

    #@1cd
    aget v6, p4, v3

    #@1cf
    add-int/lit8 v3, v23, 0x1

    #@1d1
    aget v7, p4, v3

    #@1d3
    add-int/lit8 v3, v23, 0x2

    #@1d5
    aget v8, p4, v3

    #@1d7
    add-int/lit8 v3, v23, 0x3

    #@1d9
    aget v9, p4, v3

    #@1db
    move-object/from16 v3, p0

    #@1dd
    .line 449
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@1e0
    .line 451
    add-int/lit8 v3, v23, 0x0

    #@1e2
    aget v16, p4, v3

    #@1e4
    .line 452
    add-int/lit8 v3, v23, 0x1

    #@1e6
    aget v17, p4, v3

    #@1e8
    .line 453
    add-int/lit8 v3, v23, 0x2

    #@1ea
    aget v20, p4, v3

    #@1ec
    .line 454
    add-int/lit8 v3, v23, 0x3

    #@1ee
    aget v21, p4, v3

    #@1f0
    goto/16 :goto_2

    #@1f2
    .line 445
    :cond_5
    const/16 v3, 0x43

    #@1f4
    move/from16 v0, p2

    #@1f6
    if-eq v0, v3, :cond_3

    #@1f8
    const/16 v3, 0x53

    #@1fa
    move/from16 v0, p2

    #@1fc
    if-ne v0, v3, :cond_4

    #@1fe
    goto :goto_4

    #@1ff
    .line 457
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_12
    add-int/lit8 v3, v23, 0x0

    #@201
    aget v3, p4, v3

    #@203
    add-int/lit8 v6, v23, 0x1

    #@205
    aget v6, p4, v6

    #@207
    add-int/lit8 v7, v23, 0x2

    #@209
    aget v7, p4, v7

    #@20b
    add-int/lit8 v8, v23, 0x3

    #@20d
    aget v8, p4, v8

    #@20f
    move-object/from16 v0, p0

    #@211
    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    #@214
    .line 458
    add-int/lit8 v3, v23, 0x0

    #@216
    aget v3, p4, v3

    #@218
    add-float v16, v20, v3

    #@21a
    .line 459
    add-int/lit8 v3, v23, 0x1

    #@21c
    aget v3, p4, v3

    #@21e
    add-float v17, v21, v3

    #@220
    .line 460
    add-int/lit8 v3, v23, 0x2

    #@222
    aget v3, p4, v3

    #@224
    add-float v20, v20, v3

    #@226
    .line 461
    add-int/lit8 v3, v23, 0x3

    #@228
    aget v3, p4, v3

    #@22a
    add-float v21, v21, v3

    #@22c
    .line 462
    goto/16 :goto_2

    #@22e
    .line 464
    :sswitch_13
    add-int/lit8 v3, v23, 0x0

    #@230
    aget v3, p4, v3

    #@232
    add-int/lit8 v6, v23, 0x1

    #@234
    aget v6, p4, v6

    #@236
    add-int/lit8 v7, v23, 0x2

    #@238
    aget v7, p4, v7

    #@23a
    add-int/lit8 v8, v23, 0x3

    #@23c
    aget v8, p4, v8

    #@23e
    move-object/from16 v0, p0

    #@240
    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@243
    .line 465
    add-int/lit8 v3, v23, 0x0

    #@245
    aget v16, p4, v3

    #@247
    .line 466
    add-int/lit8 v3, v23, 0x1

    #@249
    aget v17, p4, v3

    #@24b
    .line 467
    add-int/lit8 v3, v23, 0x2

    #@24d
    aget v20, p4, v3

    #@24f
    .line 468
    add-int/lit8 v3, v23, 0x3

    #@251
    aget v21, p4, v3

    #@253
    goto/16 :goto_2

    #@255
    .line 471
    :sswitch_14
    const/4 v4, 0x0

    #@256
    .line 472
    .restart local v4    # "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    #@257
    .line 473
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    #@259
    move/from16 v0, p2

    #@25b
    if-eq v0, v3, :cond_6

    #@25d
    const/16 v3, 0x74

    #@25f
    move/from16 v0, p2

    #@261
    if-ne v0, v3, :cond_8

    #@263
    .line 475
    :cond_6
    :goto_5
    sub-float v4, v20, v16

    #@265
    .line 476
    sub-float v5, v21, v17

    #@267
    .line 479
    :cond_7
    add-int/lit8 v3, v23, 0x0

    #@269
    aget v3, p4, v3

    #@26b
    add-int/lit8 v6, v23, 0x1

    #@26d
    aget v6, p4, v6

    #@26f
    .line 478
    move-object/from16 v0, p0

    #@271
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    #@274
    .line 480
    add-float v16, v20, v4

    #@276
    .line 481
    add-float v17, v21, v5

    #@278
    .line 482
    add-int/lit8 v3, v23, 0x0

    #@27a
    aget v3, p4, v3

    #@27c
    add-float v20, v20, v3

    #@27e
    .line 483
    add-int/lit8 v3, v23, 0x1

    #@280
    aget v3, p4, v3

    #@282
    add-float v21, v21, v3

    #@284
    .line 484
    goto/16 :goto_2

    #@286
    .line 474
    :cond_8
    const/16 v3, 0x51

    #@288
    move/from16 v0, p2

    #@28a
    if-eq v0, v3, :cond_6

    #@28c
    const/16 v3, 0x54

    #@28e
    move/from16 v0, p2

    #@290
    if-ne v0, v3, :cond_7

    #@292
    goto :goto_5

    #@293
    .line 486
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_15
    move/from16 v4, v20

    #@295
    .line 487
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    #@297
    .line 488
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    #@299
    move/from16 v0, p2

    #@29b
    if-eq v0, v3, :cond_9

    #@29d
    const/16 v3, 0x74

    #@29f
    move/from16 v0, p2

    #@2a1
    if-ne v0, v3, :cond_b

    #@2a3
    .line 490
    :cond_9
    :goto_6
    const/high16 v3, 0x40000000    # 2.0f

    #@2a5
    mul-float v3, v3, v20

    #@2a7
    sub-float v4, v3, v16

    #@2a9
    .line 491
    const/high16 v3, 0x40000000    # 2.0f

    #@2ab
    mul-float v3, v3, v21

    #@2ad
    sub-float v5, v3, v17

    #@2af
    .line 494
    :cond_a
    add-int/lit8 v3, v23, 0x0

    #@2b1
    aget v3, p4, v3

    #@2b3
    add-int/lit8 v6, v23, 0x1

    #@2b5
    aget v6, p4, v6

    #@2b7
    .line 493
    move-object/from16 v0, p0

    #@2b9
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@2bc
    .line 495
    move/from16 v16, v4

    #@2be
    .line 496
    move/from16 v17, v5

    #@2c0
    .line 497
    add-int/lit8 v3, v23, 0x0

    #@2c2
    aget v20, p4, v3

    #@2c4
    .line 498
    add-int/lit8 v3, v23, 0x1

    #@2c6
    aget v21, p4, v3

    #@2c8
    goto/16 :goto_2

    #@2ca
    .line 489
    :cond_b
    const/16 v3, 0x51

    #@2cc
    move/from16 v0, p2

    #@2ce
    if-eq v0, v3, :cond_9

    #@2d0
    const/16 v3, 0x54

    #@2d2
    move/from16 v0, p2

    #@2d4
    if-ne v0, v3, :cond_a

    #@2d6
    goto :goto_6

    #@2d7
    .line 505
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_16
    add-int/lit8 v3, v23, 0x5

    #@2d9
    aget v3, p4, v3

    #@2db
    add-float v9, v3, v20

    #@2dd
    .line 506
    add-int/lit8 v3, v23, 0x6

    #@2df
    aget v3, p4, v3

    #@2e1
    add-float v10, v3, v21

    #@2e3
    .line 507
    add-int/lit8 v3, v23, 0x0

    #@2e5
    aget v11, p4, v3

    #@2e7
    .line 508
    add-int/lit8 v3, v23, 0x1

    #@2e9
    aget v12, p4, v3

    #@2eb
    .line 509
    add-int/lit8 v3, v23, 0x2

    #@2ed
    aget v13, p4, v3

    #@2ef
    .line 510
    add-int/lit8 v3, v23, 0x3

    #@2f1
    aget v3, p4, v3

    #@2f3
    const/4 v6, 0x0

    #@2f4
    cmpl-float v3, v3, v6

    #@2f6
    if-eqz v3, :cond_c

    #@2f8
    const/4 v14, 0x1

    #@2f9
    .line 511
    :goto_7
    add-int/lit8 v3, v23, 0x4

    #@2fb
    aget v3, p4, v3

    #@2fd
    const/4 v6, 0x0

    #@2fe
    cmpl-float v3, v3, v6

    #@300
    if-eqz v3, :cond_d

    #@302
    const/4 v15, 0x1

    #@303
    :goto_8
    move-object/from16 v6, p0

    #@305
    move/from16 v7, v20

    #@307
    move/from16 v8, v21

    #@309
    .line 502
    invoke-static/range {v6 .. v15}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@30c
    .line 512
    add-int/lit8 v3, v23, 0x5

    #@30e
    aget v3, p4, v3

    #@310
    add-float v20, v20, v3

    #@312
    .line 513
    add-int/lit8 v3, v23, 0x6

    #@314
    aget v3, p4, v3

    #@316
    add-float v21, v21, v3

    #@318
    .line 514
    move/from16 v16, v20

    #@31a
    .line 515
    move/from16 v17, v21

    #@31c
    .line 516
    goto/16 :goto_2

    #@31e
    .line 510
    :cond_c
    const/4 v14, 0x0

    #@31f
    goto :goto_7

    #@320
    .line 511
    :cond_d
    const/4 v15, 0x0

    #@321
    goto :goto_8

    #@322
    .line 521
    :sswitch_17
    add-int/lit8 v3, v23, 0x5

    #@324
    aget v9, p4, v3

    #@326
    .line 522
    add-int/lit8 v3, v23, 0x6

    #@328
    aget v10, p4, v3

    #@32a
    .line 523
    add-int/lit8 v3, v23, 0x0

    #@32c
    aget v11, p4, v3

    #@32e
    .line 524
    add-int/lit8 v3, v23, 0x1

    #@330
    aget v12, p4, v3

    #@332
    .line 525
    add-int/lit8 v3, v23, 0x2

    #@334
    aget v13, p4, v3

    #@336
    .line 526
    add-int/lit8 v3, v23, 0x3

    #@338
    aget v3, p4, v3

    #@33a
    const/4 v6, 0x0

    #@33b
    cmpl-float v3, v3, v6

    #@33d
    if-eqz v3, :cond_e

    #@33f
    const/4 v14, 0x1

    #@340
    .line 527
    :goto_9
    add-int/lit8 v3, v23, 0x4

    #@342
    aget v3, p4, v3

    #@344
    const/4 v6, 0x0

    #@345
    cmpl-float v3, v3, v6

    #@347
    if-eqz v3, :cond_f

    #@349
    const/4 v15, 0x1

    #@34a
    :goto_a
    move-object/from16 v6, p0

    #@34c
    move/from16 v7, v20

    #@34e
    move/from16 v8, v21

    #@350
    .line 518
    invoke-static/range {v6 .. v15}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@353
    .line 528
    add-int/lit8 v3, v23, 0x5

    #@355
    aget v20, p4, v3

    #@357
    .line 529
    add-int/lit8 v3, v23, 0x6

    #@359
    aget v21, p4, v3

    #@35b
    .line 530
    move/from16 v16, v20

    #@35d
    .line 531
    move/from16 v17, v21

    #@35f
    .line 532
    goto/16 :goto_2

    #@361
    .line 526
    :cond_e
    const/4 v14, 0x0

    #@362
    goto :goto_9

    #@363
    .line 527
    :cond_f
    const/4 v15, 0x0

    #@364
    goto :goto_a

    #@365
    .line 536
    :cond_10
    const/4 v3, 0x0

    #@366
    aput v20, p1, v3

    #@368
    .line 537
    const/4 v3, 0x1

    #@369
    aput v21, p1, v3

    #@36b
    .line 538
    const/4 v3, 0x2

    #@36c
    aput v16, p1, v3

    #@36e
    .line 539
    const/4 v3, 0x3

    #@36f
    aput v17, p1, v3

    #@371
    .line 540
    const/4 v3, 0x4

    #@372
    aput v18, p1, v3

    #@374
    .line 541
    const/4 v3, 0x5

    #@375
    aput v19, p1, v3

    #@377
    .line 309
    return-void

    #@378
    .line 321
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    #@3ca
    .line 365
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    #@0
    .prologue
    .line 649
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    #@2
    mul-double v2, v2, p17

    #@4
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    #@9
    div-double/2addr v2, v4

    #@a
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@d
    move-result-wide v2

    #@e
    double-to-int v2, v2

    #@f
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@12
    move-result v36

    #@13
    .line 651
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    #@15
    .line 652
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    #@18
    move-result-wide v18

    #@19
    .line 653
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    #@1c
    move-result-wide v50

    #@1d
    .line 654
    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    #@20
    move-result-wide v14

    #@21
    .line 655
    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    #@24
    move-result-wide v46

    #@25
    .line 656
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    #@27
    neg-double v2, v0

    #@28
    mul-double v2, v2, v18

    #@2a
    mul-double v2, v2, v46

    #@2c
    mul-double v4, p7, v50

    #@2e
    mul-double/2addr v4, v14

    #@2f
    sub-double v24, v2, v4

    #@31
    .line 657
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    #@33
    neg-double v2, v0

    #@34
    mul-double v2, v2, v50

    #@36
    mul-double v2, v2, v46

    #@38
    mul-double v4, p7, v18

    #@3a
    mul-double/2addr v4, v14

    #@3b
    add-double v26, v2, v4

    #@3d
    .line 659
    .local v26, "ep1y":D
    move/from16 v0, v36

    #@3f
    int-to-double v2, v0

    #@40
    div-double v12, p17, v2

    #@42
    .line 660
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    #@43
    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    #@45
    if-ge v9, v0, :cond_0

    #@47
    .line 661
    add-double v34, v32, v12

    #@49
    .line 662
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@4c
    move-result-wide v48

    #@4d
    .line 663
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    #@50
    move-result-wide v16

    #@51
    .line 664
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    #@53
    mul-double v2, v2, v16

    #@55
    add-double v2, v2, p1

    #@57
    mul-double v4, p7, v50

    #@59
    mul-double v4, v4, v48

    #@5b
    sub-double v20, v2, v4

    #@5d
    .line 665
    .local v20, "e2x":D
    mul-double v2, p5, v50

    #@5f
    mul-double v2, v2, v16

    #@61
    add-double v2, v2, p3

    #@63
    mul-double v4, p7, v18

    #@65
    mul-double v4, v4, v48

    #@67
    add-double v22, v2, v4

    #@69
    .line 666
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    #@6b
    neg-double v2, v0

    #@6c
    mul-double v2, v2, v18

    #@6e
    mul-double v2, v2, v48

    #@70
    mul-double v4, p7, v50

    #@72
    mul-double v4, v4, v16

    #@74
    sub-double v28, v2, v4

    #@76
    .line 667
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    #@78
    neg-double v2, v0

    #@79
    mul-double v2, v2, v50

    #@7b
    mul-double v2, v2, v48

    #@7d
    mul-double v4, p7, v18

    #@7f
    mul-double v4, v4, v16

    #@81
    add-double v30, v2, v4

    #@83
    .line 668
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    #@85
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@87
    div-double/2addr v2, v4

    #@88
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    #@8b
    move-result-wide v52

    #@8c
    .line 670
    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    #@8e
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@91
    move-result-wide v2

    #@92
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@94
    mul-double v4, v4, v52

    #@96
    mul-double v4, v4, v52

    #@98
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    #@9a
    add-double/2addr v4, v6

    #@9b
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@9e
    move-result-wide v4

    #@9f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@a1
    sub-double/2addr v4, v6

    #@a2
    mul-double/2addr v2, v4

    #@a3
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    #@a5
    div-double v10, v2, v4

    #@a7
    .line 671
    .local v10, "alpha":D
    mul-double v2, v10, v24

    #@a9
    add-double v38, p9, v2

    #@ab
    .line 672
    .local v38, "q1x":D
    mul-double v2, v10, v26

    #@ad
    add-double v40, p11, v2

    #@af
    .line 673
    .local v40, "q1y":D
    mul-double v2, v10, v28

    #@b1
    sub-double v42, v20, v2

    #@b3
    .line 674
    .local v42, "q2x":D
    mul-double v2, v10, v30

    #@b5
    sub-double v44, v22, v2

    #@b7
    .line 676
    .local v44, "q2y":D
    move-wide/from16 v0, v38

    #@b9
    double-to-float v3, v0

    #@ba
    .line 677
    move-wide/from16 v0, v40

    #@bc
    double-to-float v4, v0

    #@bd
    .line 678
    move-wide/from16 v0, v42

    #@bf
    double-to-float v5, v0

    #@c0
    .line 679
    move-wide/from16 v0, v44

    #@c2
    double-to-float v6, v0

    #@c3
    .line 680
    move-wide/from16 v0, v20

    #@c5
    double-to-float v7, v0

    #@c6
    .line 681
    move-wide/from16 v0, v22

    #@c8
    double-to-float v8, v0

    #@c9
    move-object/from16 v2, p0

    #@cb
    .line 676
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@ce
    .line 682
    move-wide/from16 v32, v34

    #@d0
    .line 683
    move-wide/from16 p9, v20

    #@d2
    .line 684
    move-wide/from16 p11, v22

    #@d4
    .line 685
    move-wide/from16 v24, v28

    #@d6
    .line 686
    move-wide/from16 v26, v30

    #@d8
    .line 660
    add-int/lit8 v9, v9, 0x1

    #@da
    goto/16 :goto_0

    #@dc
    .line 644
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 58
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    #@0
    .prologue
    .line 556
    move/from16 v0, p7

    #@2
    float-to-double v2, v0

    #@3
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    #@6
    move-result-wide v16

    #@7
    .line 558
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    #@a
    move-result-wide v24

    #@b
    .line 559
    .local v24, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    #@e
    move-result-wide v42

    #@f
    .line 562
    .local v42, "sinTheta":D
    move/from16 v0, p1

    #@11
    float-to-double v2, v0

    #@12
    mul-double v2, v2, v24

    #@14
    move/from16 v0, p2

    #@16
    float-to-double v8, v0

    #@17
    mul-double v8, v8, v42

    #@19
    add-double/2addr v2, v8

    #@1a
    move/from16 v0, p5

    #@1c
    float-to-double v8, v0

    #@1d
    div-double v46, v2, v8

    #@1f
    .line 563
    .local v46, "x0p":D
    move/from16 v0, p1

    #@21
    neg-float v2, v0

    #@22
    float-to-double v2, v2

    #@23
    mul-double v2, v2, v42

    #@25
    move/from16 v0, p2

    #@27
    float-to-double v8, v0

    #@28
    mul-double v8, v8, v24

    #@2a
    add-double/2addr v2, v8

    #@2b
    move/from16 v0, p6

    #@2d
    float-to-double v8, v0

    #@2e
    div-double v52, v2, v8

    #@30
    .line 564
    .local v52, "y0p":D
    move/from16 v0, p3

    #@32
    float-to-double v2, v0

    #@33
    mul-double v2, v2, v24

    #@35
    move/from16 v0, p4

    #@37
    float-to-double v8, v0

    #@38
    mul-double v8, v8, v42

    #@3a
    add-double/2addr v2, v8

    #@3b
    move/from16 v0, p5

    #@3d
    float-to-double v8, v0

    #@3e
    div-double v48, v2, v8

    #@40
    .line 565
    .local v48, "x1p":D
    move/from16 v0, p3

    #@42
    neg-float v2, v0

    #@43
    float-to-double v2, v2

    #@44
    mul-double v2, v2, v42

    #@46
    move/from16 v0, p4

    #@48
    float-to-double v8, v0

    #@49
    mul-double v8, v8, v24

    #@4b
    add-double/2addr v2, v8

    #@4c
    move/from16 v0, p6

    #@4e
    float-to-double v8, v0

    #@4f
    div-double v54, v2, v8

    #@51
    .line 568
    .local v54, "y1p":D
    sub-double v30, v46, v48

    #@53
    .line 569
    .local v30, "dx":D
    sub-double v32, v52, v54

    #@55
    .line 570
    .local v32, "dy":D
    add-double v2, v46, v48

    #@57
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@59
    div-double v50, v2, v8

    #@5b
    .line 571
    .local v50, "xm":D
    add-double v2, v52, v54

    #@5d
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@5f
    div-double v56, v2, v8

    #@61
    .line 573
    .local v56, "ym":D
    mul-double v2, v30, v30

    #@63
    mul-double v8, v32, v32

    #@65
    add-double v28, v2, v8

    #@67
    .line 574
    .local v28, "dsq":D
    const-wide/16 v2, 0x0

    #@69
    cmpl-double v2, v28, v2

    #@6b
    if-nez v2, :cond_0

    #@6d
    .line 575
    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    #@6f
    const-string/jumbo v3, " Points are coincident"

    #@72
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 576
    return-void

    #@76
    .line 578
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@78
    div-double v2, v2, v28

    #@7a
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    #@7c
    sub-double v26, v2, v8

    #@7e
    .line 579
    .local v26, "disc":D
    const-wide/16 v2, 0x0

    #@80
    cmpg-double v2, v26, v2

    #@82
    if-gez v2, :cond_1

    #@84
    .line 580
    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    #@86
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v8, "Points are too far apart "

    #@8e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    move-wide/from16 v0, v28

    #@94
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 581
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    #@a2
    move-result-wide v2

    #@a3
    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    #@a8
    div-double/2addr v2, v8

    #@a9
    double-to-float v0, v2

    #@aa
    move/from16 v22, v0

    #@ac
    .line 582
    .local v22, "adjust":F
    mul-float v7, p5, v22

    #@ae
    .line 583
    mul-float v8, p6, v22

    #@b0
    move-object/from16 v2, p0

    #@b2
    move/from16 v3, p1

    #@b4
    move/from16 v4, p2

    #@b6
    move/from16 v5, p3

    #@b8
    move/from16 v6, p4

    #@ba
    move/from16 v9, p7

    #@bc
    move/from16 v10, p8

    #@be
    move/from16 v11, p9

    #@c0
    .line 582
    invoke-static/range {v2 .. v11}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    #@c3
    .line 584
    return-void

    #@c4
    .line 586
    .end local v22    # "adjust":F
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    #@c7
    move-result-wide v36

    #@c8
    .line 587
    .local v36, "s":D
    mul-double v38, v36, v30

    #@ca
    .line 588
    .local v38, "sdx":D
    mul-double v40, v36, v32

    #@cc
    .line 591
    .local v40, "sdy":D
    move/from16 v0, p8

    #@ce
    move/from16 v1, p9

    #@d0
    if-ne v0, v1, :cond_3

    #@d2
    .line 592
    sub-double v4, v50, v40

    #@d4
    .line 593
    .local v4, "cx":D
    add-double v6, v56, v38

    #@d6
    .line 599
    .local v6, "cy":D
    :goto_0
    sub-double v2, v52, v6

    #@d8
    sub-double v8, v46, v4

    #@da
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    #@dd
    move-result-wide v18

    #@de
    .line 601
    .local v18, "eta0":D
    sub-double v2, v54, v6

    #@e0
    sub-double v8, v48, v4

    #@e2
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    #@e5
    move-result-wide v34

    #@e6
    .line 603
    .local v34, "eta1":D
    sub-double v20, v34, v18

    #@e8
    .line 604
    .local v20, "sweep":D
    const-wide/16 v2, 0x0

    #@ea
    cmpl-double v2, v20, v2

    #@ec
    if-ltz v2, :cond_4

    #@ee
    const/4 v2, 0x1

    #@ef
    :goto_1
    move/from16 v0, p9

    #@f1
    if-eq v0, v2, :cond_2

    #@f3
    .line 605
    const-wide/16 v2, 0x0

    #@f5
    cmpl-double v2, v20, v2

    #@f7
    if-lez v2, :cond_5

    #@f9
    .line 606
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    #@fe
    sub-double v20, v20, v2

    #@100
    .line 612
    :cond_2
    :goto_2
    move/from16 v0, p5

    #@102
    float-to-double v2, v0

    #@103
    mul-double/2addr v4, v2

    #@104
    .line 613
    move/from16 v0, p6

    #@106
    float-to-double v2, v0

    #@107
    mul-double/2addr v6, v2

    #@108
    .line 614
    move-wide/from16 v44, v4

    #@10a
    .line 615
    .local v44, "tcx":D
    mul-double v2, v4, v24

    #@10c
    mul-double v8, v6, v42

    #@10e
    sub-double v4, v2, v8

    #@110
    .line 616
    mul-double v2, v44, v42

    #@112
    mul-double v8, v6, v24

    #@114
    add-double v6, v2, v8

    #@116
    .line 618
    move/from16 v0, p5

    #@118
    float-to-double v8, v0

    #@119
    move/from16 v0, p6

    #@11b
    float-to-double v10, v0

    #@11c
    move/from16 v0, p1

    #@11e
    float-to-double v12, v0

    #@11f
    move/from16 v0, p2

    #@121
    float-to-double v14, v0

    #@122
    move-object/from16 v3, p0

    #@124
    invoke-static/range {v3 .. v21}, Landroid/util/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    #@127
    .line 553
    return-void

    #@128
    .line 595
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v34    # "eta1":D
    .end local v44    # "tcx":D
    :cond_3
    add-double v4, v50, v40

    #@12a
    .line 596
    .restart local v4    # "cx":D
    sub-double v6, v56, v38

    #@12c
    .restart local v6    # "cy":D
    goto :goto_0

    #@12d
    .line 604
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v34    # "eta1":D
    :cond_4
    const/4 v2, 0x0

    #@12e
    goto :goto_1

    #@12f
    .line 608
    :cond_5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    #@134
    add-double v20, v20, v2

    #@136
    goto :goto_2
.end method

.method public static nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5
    .param p0, "node"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 283
    const/4 v3, 0x6

    #@1
    new-array v0, v3, [F

    #@3
    .line 284
    .local v0, "current":[F
    const/16 v2, 0x6d

    #@5
    .line 285
    .local v2, "previousCommand":C
    const/4 v1, 0x0

    #@6
    .end local v2    # "previousCommand":C
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 286
    aget-object v3, p0, v1

    #@b
    iget-char v3, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    #@d
    aget-object v4, p0, v1

    #@f
    iget-object v4, v4, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@11
    invoke-static {p1, v0, v2, v3, v4}, Landroid/util/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    #@14
    .line 287
    aget-object v3, p0, v1

    #@16
    iget-char v2, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    #@18
    .line 285
    .local v2, "previousCommand":C
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 282
    .end local v2    # "previousCommand":C
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;F)V
    .locals 4
    .param p1, "nodeFrom"    # Landroid/util/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroid/util/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 303
    iget-object v1, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@8
    iget-object v2, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@a
    aget v2, v2, v0

    #@c
    const/high16 v3, 0x3f800000    # 1.0f

    #@e
    sub-float/2addr v3, p3

    #@f
    mul-float/2addr v2, v3

    #@10
    .line 304
    iget-object v3, p2, Landroid/util/PathParser$PathDataNode;->mParams:[F

    #@12
    aget v3, v3, v0

    #@14
    mul-float/2addr v3, p3

    #@15
    .line 303
    add-float/2addr v2, v3

    #@16
    aput v2, v1, v0

    #@18
    .line 302
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 301
    :cond_0
    return-void
.end method
