.class public final Landroid/icu/impl/coll/CollationKeys;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;,
        Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;,
        Landroid/icu/impl/coll/CollationKeys$LevelCallback;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CASE_LOWER_FIRST_COMMON_HIGH:I = 0xd

.field private static final blacklist CASE_LOWER_FIRST_COMMON_LOW:I = 0x1

.field private static final blacklist CASE_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x7

.field private static final blacklist CASE_LOWER_FIRST_COMMON_MIDDLE:I = 0x7

.field private static final blacklist CASE_UPPER_FIRST_COMMON_HIGH:I = 0xf

.field private static final blacklist CASE_UPPER_FIRST_COMMON_LOW:I = 0x3

.field private static final blacklist CASE_UPPER_FIRST_COMMON_MAX_COUNT:I = 0xd

.field private static final blacklist QUAT_COMMON_HIGH:I = 0xfc

.field private static final blacklist QUAT_COMMON_LOW:I = 0x1c

.field private static final blacklist QUAT_COMMON_MAX_COUNT:I = 0x71

.field private static final blacklist QUAT_COMMON_MIDDLE:I = 0x8c

.field private static final blacklist QUAT_SHIFTED_LIMIT_BYTE:I = 0x1b

.field static final blacklist SEC_COMMON_HIGH:I = 0x45

.field private static final blacklist SEC_COMMON_LOW:I = 0x5

.field private static final blacklist SEC_COMMON_MAX_COUNT:I = 0x21

.field private static final blacklist SEC_COMMON_MIDDLE:I = 0x25

.field public static final blacklist SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

.field private static final blacklist TER_LOWER_FIRST_COMMON_HIGH:I = 0x45

.field private static final blacklist TER_LOWER_FIRST_COMMON_LOW:I = 0x5

.field private static final blacklist TER_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final blacklist TER_LOWER_FIRST_COMMON_MIDDLE:I = 0x25

.field private static final blacklist TER_ONLY_COMMON_HIGH:I = 0xc5

.field private static final blacklist TER_ONLY_COMMON_LOW:I = 0x5

.field private static final blacklist TER_ONLY_COMMON_MAX_COUNT:I = 0x61

.field private static final blacklist TER_ONLY_COMMON_MIDDLE:I = 0x65

.field private static final blacklist TER_UPPER_FIRST_COMMON_HIGH:I = 0xc5

.field private static final blacklist TER_UPPER_FIRST_COMMON_LOW:I = 0x85

.field private static final blacklist TER_UPPER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final blacklist TER_UPPER_FIRST_COMMON_MIDDLE:I = 0xa5

.field private static final blacklist levelMasks:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    nop

    .line 153
    new-instance v0, Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;-><init>()V

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    .line 324
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    return-void

    :array_12
    .array-data 4
        0x2
        0x6
        0x16
        0x36
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x36
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method private static blacklist getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .registers 3
    .param p0, "levels"    # I
    .param p1, "level"    # I

    .line 268
    and-int v0, p0, p1

    if-eqz v0, :cond_a

    new-instance v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;-><init>()V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public static blacklist writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V
    .registers 54
    .param p0, "iter"    # Landroid/icu/impl/coll/CollationIterator;
    .param p1, "compressibleBytes"    # [Z
    .param p2, "settings"    # Landroid/icu/impl/coll/CollationSettings;
    .param p3, "sink"    # Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
    .param p4, "minLevel"    # I
    .param p5, "callback"    # Landroid/icu/impl/coll/CollationKeys$LevelCallback;
    .param p6, "preflight"    # Z

    .line 344
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 346
    .local v3, "options":I
    sget-object v4, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    aget v4, v4, v5

    .line 347
    .local v4, "levels":I
    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_16

    .line 348
    or-int/lit8 v4, v4, 0x8

    .line 351
    :cond_16
    const/4 v5, 0x1

    shl-int v6, v5, p4

    sub-int/2addr v6, v5

    not-int v6, v6

    and-int/2addr v4, v6

    .line 352
    if-nez v4, :cond_1f

    .line 353
    return-void

    .line 357
    :cond_1f
    and-int/lit8 v6, v3, 0xc

    const-wide/16 v7, 0x1

    if-nez v6, :cond_28

    .line 358
    const-wide/16 v9, 0x0

    .local v9, "variableTop":J
    goto :goto_2b

    .line 361
    .end local v9    # "variableTop":J
    :cond_28
    iget-wide v9, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    add-long/2addr v9, v7

    .line 364
    .restart local v9    # "variableTop":J
    :goto_2b
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v6

    .line 366
    .local v6, "tertiaryMask":I
    const/4 v11, 0x3

    new-array v12, v11, [B

    .line 367
    .local v12, "p234":[B
    const/16 v13, 0x8

    invoke-static {v4, v13}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v14

    .line 368
    .local v14, "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/4 v15, 0x4

    move-wide/from16 v16, v7

    invoke-static {v4, v15}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v7

    .line 369
    .local v7, "secondaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/16 v8, 0x10

    move/from16 v18, v13

    invoke-static {v4, v8}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v13

    .line 370
    .local v13, "tertiaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    move/from16 v19, v8

    const/16 v8, 0x20

    move/from16 v20, v15

    invoke-static {v4, v8}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v15

    .line 372
    .local v15, "quaternaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const-wide/16 v21, 0x0

    .line 373
    .local v21, "prevReorderedPrimary":J
    const/16 v23, 0x0

    .line 374
    .local v23, "commonCases":I
    const/16 v24, 0x0

    .line 375
    .local v24, "commonSecondaries":I
    const/16 v25, 0x0

    .line 376
    .local v25, "commonTertiaries":I
    const/16 v26, 0x0

    .line 378
    .local v26, "commonQuaternaries":I
    const/16 v27, 0x0

    .line 379
    .local v27, "prevSecondary":I
    const/16 v28, 0x0

    move-wide/from16 v29, v9

    move/from16 v10, v27

    move-wide/from16 v45, v21

    move/from16 v21, v8

    move-wide/from16 v8, v45

    .line 383
    .end local v9    # "variableTop":J
    .end local v21    # "prevReorderedPrimary":J
    .end local v27    # "prevSecondary":I
    .local v8, "prevReorderedPrimary":J
    .local v10, "prevSecondary":I
    .local v28, "secSegmentStart":I
    .local v29, "variableTop":J
    :goto_69
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v31

    .line 385
    .local v31, "ce":J
    ushr-long v33, v31, v21

    .line 386
    .local v33, "p":J
    cmp-long v22, v33, v29

    const-wide/16 v35, 0x0

    const-wide/32 v37, 0x2000000

    if-gez v22, :cond_ee

    cmp-long v22, v33, v37

    if-lez v22, :cond_ee

    .line 389
    if-eqz v26, :cond_a1

    .line 390
    add-int/lit8 v26, v26, -0x1

    move/from16 v22, v5

    move/from16 v5, v26

    .line 391
    .end local v26    # "commonQuaternaries":I
    .local v5, "commonQuaternaries":I
    :goto_87
    const/16 v11, 0x71

    if-lt v5, v11, :cond_94

    .line 392
    const/16 v11, 0x8c

    invoke-virtual {v15, v11}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 393
    add-int/lit8 v5, v5, -0x71

    const/4 v11, 0x3

    goto :goto_87

    .line 396
    :cond_94
    add-int/lit8 v11, v5, 0x1c

    invoke-virtual {v15, v11}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 397
    const/16 v26, 0x0

    move v11, v4

    move/from16 v39, v26

    move-wide/from16 v4, v33

    .end local v5    # "commonQuaternaries":I
    .restart local v26    # "commonQuaternaries":I
    goto :goto_a8

    .line 389
    :cond_a1
    move/from16 v22, v5

    move v11, v4

    move/from16 v39, v26

    move-wide/from16 v4, v33

    .line 400
    .end local v26    # "commonQuaternaries":I
    .end local v33    # "p":J
    .local v4, "p":J
    .local v11, "levels":I
    .local v39, "commonQuaternaries":I
    :goto_a8
    and-int/lit8 v26, v11, 0x20

    if-eqz v26, :cond_ca

    .line 401
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v26

    if-eqz v26, :cond_b6

    .line 402
    invoke-virtual {v0, v4, v5}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v4

    .line 404
    :cond_b6
    move/from16 v40, v6

    .end local v6    # "tertiaryMask":I
    .local v40, "tertiaryMask":I
    long-to-int v6, v4

    ushr-int/lit8 v6, v6, 0x18

    move/from16 v41, v11

    .end local v11    # "levels":I
    .local v41, "levels":I
    const/16 v11, 0x1b

    if-lt v6, v11, :cond_c6

    .line 407
    const/16 v6, 0x1b

    invoke-virtual {v15, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 409
    :cond_c6
    invoke-virtual {v15, v4, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight32(J)V

    goto :goto_ce

    .line 400
    .end local v40    # "tertiaryMask":I
    .end local v41    # "levels":I
    .restart local v6    # "tertiaryMask":I
    .restart local v11    # "levels":I
    :cond_ca
    move/from16 v40, v6

    move/from16 v41, v11

    .line 412
    .end local v6    # "tertiaryMask":I
    .end local v11    # "levels":I
    .restart local v40    # "tertiaryMask":I
    .restart local v41    # "levels":I
    :cond_ce
    :goto_ce
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v31

    .line 413
    ushr-long v4, v31, v21

    .line 414
    cmp-long v6, v4, v35

    if-eqz v6, :cond_ce

    .line 415
    cmp-long v6, v4, v29

    if-gez v6, :cond_e6

    cmp-long v6, v4, v37

    if-gtz v6, :cond_e1

    goto :goto_e6

    :cond_e1
    move/from16 v6, v40

    move/from16 v11, v41

    goto :goto_a8

    .line 421
    :cond_e6
    :goto_e6
    move-object v11, v13

    move-object v6, v14

    move/from16 v26, v39

    move-wide v13, v4

    move-wide/from16 v4, v31

    goto :goto_fa

    .line 386
    .end local v39    # "commonQuaternaries":I
    .end local v40    # "tertiaryMask":I
    .end local v41    # "levels":I
    .local v4, "levels":I
    .restart local v6    # "tertiaryMask":I
    .restart local v26    # "commonQuaternaries":I
    .restart local v33    # "p":J
    :cond_ee
    move/from16 v41, v4

    move/from16 v22, v5

    move/from16 v40, v6

    .line 421
    .end local v4    # "levels":I
    .end local v6    # "tertiaryMask":I
    .restart local v40    # "tertiaryMask":I
    .restart local v41    # "levels":I
    move-object v11, v13

    move-object v6, v14

    move-wide/from16 v13, v33

    move-wide/from16 v4, v31

    .end local v14    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v31    # "ce":J
    .end local v33    # "p":J
    .local v4, "ce":J
    .local v6, "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .local v11, "tertiaries":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .local v13, "p":J
    :goto_fa
    cmp-long v31, v13, v16

    move-object/from16 v32, v6

    .end local v6    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .local v32, "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    if-lez v31, :cond_173

    and-int/lit8 v31, v41, 0x2

    if-eqz v31, :cond_173

    .line 423
    long-to-int v6, v13

    ushr-int/lit8 v6, v6, 0x18

    aget-boolean v6, p1, v6

    .line 424
    .local v6, "isCompressible":Z
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v33

    if-eqz v33, :cond_113

    .line 425
    invoke-virtual {v0, v13, v14}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v13

    .line 427
    :cond_113
    long-to-int v0, v13

    ushr-int/lit8 v0, v0, 0x18

    .line 428
    .local v0, "p1":I
    if-eqz v6, :cond_120

    move/from16 v33, v6

    .end local v6    # "isCompressible":Z
    .local v33, "isCompressible":Z
    long-to-int v6, v8

    ushr-int/lit8 v6, v6, 0x18

    if-eq v0, v6, :cond_140

    goto :goto_122

    .end local v33    # "isCompressible":Z
    .restart local v6    # "isCompressible":Z
    :cond_120
    move/from16 v33, v6

    .line 429
    .end local v6    # "isCompressible":Z
    .restart local v33    # "isCompressible":Z
    :goto_122
    cmp-long v6, v8, v35

    if-eqz v6, :cond_137

    .line 430
    cmp-long v6, v13, v8

    if-gez v6, :cond_132

    .line 433
    const/4 v6, 0x2

    if-le v0, v6, :cond_137

    .line 434
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    goto :goto_137

    .line 437
    :cond_132
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 440
    :cond_137
    :goto_137
    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 441
    if-eqz v33, :cond_13e

    .line 442
    move-wide v8, v13

    goto :goto_140

    .line 444
    :cond_13e
    const-wide/16 v8, 0x0

    .line 447
    :cond_140
    :goto_140
    move-wide/from16 v42, v8

    .end local v8    # "prevReorderedPrimary":J
    .local v42, "prevReorderedPrimary":J
    ushr-long v8, v13, v19

    long-to-int v6, v8

    int-to-byte v6, v6

    .line 448
    .local v6, "p2":B
    if-eqz v6, :cond_168

    .line 449
    const/4 v8, 0x0

    aput-byte v6, v12, v8

    .line 450
    ushr-long v8, v13, v18

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v12, v22

    .line 451
    long-to-int v8, v13

    int-to-byte v8, v8

    const/16 v31, 0x2

    aput-byte v8, v12, v31

    .line 452
    aget-byte v8, v12, v22

    if-nez v8, :cond_15e

    move/from16 v8, v22

    goto :goto_165

    :cond_15e
    aget-byte v8, v12, v31

    if-nez v8, :cond_164

    const/4 v8, 0x2

    goto :goto_165

    :cond_164
    const/4 v8, 0x3

    :goto_165
    invoke-virtual {v1, v12, v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    .line 457
    :cond_168
    if-nez p6, :cond_171

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Overflowed()Z

    move-result v8

    if-eqz v8, :cond_171

    .line 462
    return-void

    .line 466
    .end local v0    # "p1":I
    .end local v6    # "p2":B
    .end local v33    # "isCompressible":Z
    :cond_171
    move-wide/from16 v8, v42

    .end local v42    # "prevReorderedPrimary":J
    .restart local v8    # "prevReorderedPrimary":J
    :cond_173
    long-to-int v0, v4

    .line 467
    .local v0, "lower32":I
    if-nez v0, :cond_184

    .line 468
    move-object/from16 v0, p2

    move-object v13, v11

    move/from16 v5, v22

    move-object/from16 v14, v32

    move/from16 v6, v40

    move/from16 v4, v41

    const/4 v11, 0x3

    goto/16 :goto_69

    .line 471
    :cond_184
    and-int/lit8 v6, v41, 0x4

    move/from16 v33, v0

    .end local v0    # "lower32":I
    .local v33, "lower32":I
    const/16 v0, 0x500

    if-eqz v6, :cond_238

    .line 472
    ushr-int/lit8 v6, v33, 0x10

    .line 473
    .local v6, "s":I
    if-nez v6, :cond_194

    move-wide/from16 v43, v4

    goto/16 :goto_23a

    .line 475
    :cond_194
    if-ne v6, v0, :cond_1a4

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_19e

    cmp-long v0, v13, v37

    if-eqz v0, :cond_1a4

    .line 480
    :cond_19e
    add-int/lit8 v24, v24, 0x1

    move-wide/from16 v43, v4

    goto/16 :goto_23a

    .line 481
    :cond_1a4
    and-int/lit16 v0, v3, 0x800

    if-nez v0, :cond_1d4

    .line 482
    if-eqz v24, :cond_1cd

    .line 483
    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    .line 484
    .end local v24    # "commonSecondaries":I
    .local v0, "commonSecondaries":I
    :goto_1ae
    move-wide/from16 v43, v4

    const/16 v4, 0x21

    .end local v4    # "ce":J
    .local v43, "ce":J
    if-lt v0, v4, :cond_1be

    .line 485
    const/16 v4, 0x25

    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 486
    add-int/lit8 v0, v0, -0x21

    move-wide/from16 v4, v43

    goto :goto_1ae

    .line 489
    :cond_1be
    const/16 v4, 0x500

    if-ge v6, v4, :cond_1c5

    .line 490
    add-int/lit8 v4, v0, 0x5

    .local v4, "b":I
    goto :goto_1c7

    .line 492
    .end local v4    # "b":I
    :cond_1c5
    rsub-int/lit8 v4, v0, 0x45

    .line 494
    .restart local v4    # "b":I
    :goto_1c7
    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 495
    const/16 v24, 0x0

    .end local v0    # "commonSecondaries":I
    .restart local v24    # "commonSecondaries":I
    goto :goto_1cf

    .line 482
    .end local v43    # "ce":J
    .local v4, "ce":J
    :cond_1cd
    move-wide/from16 v43, v4

    .line 497
    .end local v4    # "ce":J
    .restart local v43    # "ce":J
    :goto_1cf
    invoke-virtual {v7, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_23a

    .line 499
    .end local v43    # "ce":J
    .restart local v4    # "ce":J
    :cond_1d4
    move-wide/from16 v43, v4

    .end local v4    # "ce":J
    .restart local v43    # "ce":J
    if-eqz v24, :cond_1f4

    .line 500
    add-int/lit8 v24, v24, -0x1

    .line 502
    rem-int/lit8 v0, v24, 0x21

    .line 504
    .local v0, "remainder":I
    const/16 v4, 0x500

    if-ge v10, v4, :cond_1e3

    .line 505
    add-int/lit8 v4, v0, 0x5

    .local v4, "b":I
    goto :goto_1e5

    .line 507
    .end local v4    # "b":I
    :cond_1e3
    rsub-int/lit8 v4, v0, 0x45

    .line 509
    .restart local v4    # "b":I
    :goto_1e5
    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 510
    sub-int v24, v24, v0

    .line 512
    :goto_1ea
    if-lez v24, :cond_1f4

    .line 513
    const/16 v5, 0x25

    invoke-virtual {v7, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 514
    add-int/lit8 v24, v24, -0x21

    goto :goto_1ea

    .line 518
    .end local v0    # "remainder":I
    .end local v4    # "b":I
    :cond_1f4
    cmp-long v0, v35, v13

    if-gez v0, :cond_232

    cmp-long v0, v13, v37

    if-gtz v0, :cond_232

    .line 521
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->data()[B

    move-result-object v0

    .line 522
    .local v0, "secs":[B
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, v28

    .line 523
    .end local v28    # "secSegmentStart":I
    .local v4, "last":I
    .local v5, "secSegmentStart":I
    :goto_208
    if-ge v5, v4, :cond_21a

    .line 524
    aget-byte v28, v0, v5

    .line 525
    .local v28, "b":B
    add-int/lit8 v37, v5, 0x1

    .end local v5    # "secSegmentStart":I
    .local v37, "secSegmentStart":I
    aget-byte v38, v0, v4

    aput-byte v38, v0, v5

    .line 526
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "last":I
    .local v5, "last":I
    aput-byte v28, v0, v4

    .line 527
    .end local v28    # "b":B
    move v4, v5

    move/from16 v5, v37

    goto :goto_208

    .line 528
    .end local v37    # "secSegmentStart":I
    .restart local v4    # "last":I
    .local v5, "secSegmentStart":I
    :cond_21a
    cmp-long v28, v13, v16

    if-nez v28, :cond_223

    .line 529
    move-object/from16 v37, v0

    move/from16 v0, v22

    goto :goto_226

    :cond_223
    move-object/from16 v37, v0

    const/4 v0, 0x2

    .line 528
    .end local v0    # "secs":[B
    .local v37, "secs":[B
    :goto_226
    invoke-virtual {v7, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 530
    const/4 v0, 0x0

    .line 531
    .end local v10    # "prevSecondary":I
    .local v0, "prevSecondary":I
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v4

    .line 532
    .end local v5    # "secSegmentStart":I
    .end local v37    # "secs":[B
    .local v4, "secSegmentStart":I
    move v10, v0

    move/from16 v28, v4

    goto :goto_23a

    .line 533
    .end local v0    # "prevSecondary":I
    .end local v4    # "secSegmentStart":I
    .restart local v10    # "prevSecondary":I
    .local v28, "secSegmentStart":I
    :cond_232
    invoke-virtual {v7, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendReverseWeight16(I)V

    .line 534
    move v0, v6

    move v10, v0

    .end local v10    # "prevSecondary":I
    .restart local v0    # "prevSecondary":I
    goto :goto_23a

    .line 471
    .end local v0    # "prevSecondary":I
    .end local v6    # "s":I
    .end local v43    # "ce":J
    .local v4, "ce":J
    .restart local v10    # "prevSecondary":I
    :cond_238
    move-wide/from16 v43, v4

    .line 539
    .end local v4    # "ce":J
    .restart local v43    # "ce":J
    :goto_23a
    and-int/lit8 v0, v41, 0x8

    if-eqz v0, :cond_2e0

    .line 540
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v0

    if-nez v0, :cond_249

    cmp-long v0, v13, v35

    if-nez v0, :cond_251

    goto :goto_24d

    :cond_249
    ushr-int/lit8 v0, v33, 0x10

    if-nez v0, :cond_251

    :goto_24d
    move-object/from16 v5, v32

    goto/16 :goto_2e2

    .line 546
    :cond_251
    ushr-int/lit8 v0, v33, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 547
    .local v0, "c":I
    nop

    .line 548
    and-int/lit16 v4, v0, 0xc0

    if-nez v4, :cond_264

    move/from16 v4, v22

    if-le v0, v4, :cond_264

    .line 549
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v5, v32

    goto/16 :goto_2e2

    .line 551
    :cond_264
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_2b0

    .line 557
    if-eqz v23, :cond_2a2

    const/4 v4, 0x1

    if-gt v0, v4, :cond_279

    .line 558
    invoke-virtual/range {v32 .. v32}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_274

    goto :goto_279

    :cond_274
    move-object/from16 v5, v32

    const/16 v35, 0xd

    goto :goto_2a6

    .line 559
    :cond_279
    :goto_279
    add-int/lit8 v23, v23, -0x1

    move/from16 v4, v23

    .line 560
    .end local v23    # "commonCases":I
    .local v4, "commonCases":I
    :goto_27d
    const/4 v6, 0x7

    if-lt v4, v6, :cond_28c

    .line 561
    const/16 v6, 0x70

    move-object/from16 v5, v32

    const/16 v35, 0xd

    .end local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .local v5, "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 562
    add-int/lit8 v4, v4, -0x7

    goto :goto_27d

    .line 565
    .end local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :cond_28c
    move-object/from16 v5, v32

    const/16 v35, 0xd

    .end local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    const/4 v6, 0x1

    if-gt v0, v6, :cond_296

    .line 566
    add-int/lit8 v6, v4, 0x1

    .local v6, "b":I
    goto :goto_298

    .line 568
    .end local v6    # "b":I
    :cond_296
    rsub-int/lit8 v6, v4, 0xd

    .line 570
    .restart local v6    # "b":I
    :goto_298
    move/from16 v23, v4

    .end local v4    # "commonCases":I
    .restart local v23    # "commonCases":I
    shl-int/lit8 v4, v6, 0x4

    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 571
    const/16 v23, 0x0

    goto :goto_2a6

    .line 557
    .end local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .end local v6    # "b":I
    .restart local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :cond_2a2
    move-object/from16 v5, v32

    const/16 v35, 0xd

    .line 573
    .end local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :goto_2a6
    const/4 v4, 0x1

    if-le v0, v4, :cond_2dc

    .line 574
    ushr-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0xd

    shl-int/lit8 v0, v4, 0x4

    goto :goto_2dc

    .line 581
    .end local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :cond_2b0
    move-object/from16 v5, v32

    const/16 v35, 0xd

    .end local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    if-eqz v23, :cond_2d1

    .line 582
    add-int/lit8 v23, v23, -0x1

    move/from16 v4, v23

    .line 583
    .end local v23    # "commonCases":I
    .restart local v4    # "commonCases":I
    :goto_2ba
    move/from16 v6, v35

    if-lt v4, v6, :cond_2c8

    .line 584
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 585
    add-int/lit8 v4, v4, -0xd

    const/16 v35, 0xd

    goto :goto_2ba

    .line 587
    :cond_2c8
    add-int/lit8 v6, v4, 0x3

    shl-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 588
    const/16 v23, 0x0

    .line 590
    .end local v4    # "commonCases":I
    .restart local v23    # "commonCases":I
    :cond_2d1
    const/4 v4, 0x1

    if-le v0, v4, :cond_2dc

    .line 591
    ushr-int/lit8 v4, v0, 0x6

    const/16 v27, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v0, v4, 0x4

    .line 596
    :cond_2dc
    :goto_2dc
    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto :goto_2e2

    .line 539
    .end local v0    # "c":I
    .end local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :cond_2e0
    move-object/from16 v5, v32

    .line 601
    .end local v32    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .restart local v5    # "cases":Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    :goto_2e2
    and-int/lit8 v0, v41, 0x10

    if-eqz v0, :cond_38f

    .line 602
    and-int v0, v33, v40

    .line 603
    .local v0, "t":I
    nop

    .line 604
    const/16 v6, 0x500

    if-ne v0, v6, :cond_2f1

    .line 605
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_38f

    .line 606
    :cond_2f1
    const v6, 0x8000

    and-int v6, v40, v6

    if-nez v6, :cond_325

    .line 609
    if-eqz v25, :cond_318

    .line 610
    add-int/lit8 v25, v25, -0x1

    move/from16 v6, v25

    .line 611
    .end local v25    # "commonTertiaries":I
    .local v6, "commonTertiaries":I
    :goto_2fe
    const/16 v4, 0x61

    if-lt v6, v4, :cond_30a

    .line 612
    const/16 v4, 0x65

    invoke-virtual {v11, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 613
    add-int/lit8 v6, v6, -0x61

    goto :goto_2fe

    .line 616
    :cond_30a
    const/16 v4, 0x500

    if-ge v0, v4, :cond_311

    .line 617
    add-int/lit8 v4, v6, 0x5

    .local v4, "b":I
    goto :goto_313

    .line 619
    .end local v4    # "b":I
    :cond_311
    rsub-int v4, v6, 0xc5

    .line 621
    .restart local v4    # "b":I
    :goto_313
    invoke-virtual {v11, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 622
    const/16 v25, 0x0

    .line 624
    .end local v4    # "b":I
    .end local v6    # "commonTertiaries":I
    .restart local v25    # "commonTertiaries":I
    :cond_318
    const/16 v4, 0x500

    if-le v0, v4, :cond_320

    .line 625
    const v4, 0xc000

    add-int/2addr v0, v4

    .line 627
    :cond_320
    invoke-virtual {v11, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_38f

    .line 628
    :cond_325
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_353

    .line 631
    if-eqz v25, :cond_349

    .line 632
    add-int/lit8 v25, v25, -0x1

    move/from16 v4, v25

    .line 633
    .end local v25    # "commonTertiaries":I
    .local v4, "commonTertiaries":I
    :goto_32f
    const/16 v6, 0x21

    if-lt v4, v6, :cond_33b

    .line 634
    const/16 v6, 0x25

    invoke-virtual {v11, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 635
    add-int/lit8 v4, v4, -0x21

    goto :goto_32f

    .line 638
    :cond_33b
    const/16 v6, 0x500

    if-ge v0, v6, :cond_342

    .line 639
    add-int/lit8 v6, v4, 0x5

    .local v6, "b":I
    goto :goto_344

    .line 641
    .end local v6    # "b":I
    :cond_342
    rsub-int/lit8 v6, v4, 0x45

    .line 643
    .restart local v6    # "b":I
    :goto_344
    invoke-virtual {v11, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 644
    const/16 v25, 0x0

    .line 646
    .end local v4    # "commonTertiaries":I
    .end local v6    # "b":I
    .restart local v25    # "commonTertiaries":I
    :cond_349
    const/16 v4, 0x500

    if-le v0, v4, :cond_34f

    .line 647
    add-int/lit16 v0, v0, 0x4000

    .line 649
    :cond_34f
    invoke-virtual {v11, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_38f

    .line 664
    :cond_353
    const/16 v4, 0x100

    if-gt v0, v4, :cond_358

    goto :goto_36b

    .line 666
    :cond_358
    ushr-int/lit8 v4, v33, 0x10

    if-eqz v4, :cond_368

    .line 668
    const v4, 0xc000

    xor-int/2addr v0, v4

    .line 669
    const v4, 0xc500

    if-ge v0, v4, :cond_36b

    .line 670
    add-int/lit16 v0, v0, -0x4000

    goto :goto_36b

    .line 674
    :cond_368
    nop

    .line 675
    add-int/lit16 v0, v0, 0x4000

    .line 677
    :cond_36b
    :goto_36b
    if-eqz v25, :cond_38c

    .line 678
    add-int/lit8 v25, v25, -0x1

    move/from16 v4, v25

    .line 679
    .end local v25    # "commonTertiaries":I
    .restart local v4    # "commonTertiaries":I
    :goto_371
    const/16 v6, 0x21

    if-lt v4, v6, :cond_37d

    .line 680
    const/16 v6, 0xa5

    invoke-virtual {v11, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 681
    add-int/lit8 v4, v4, -0x21

    goto :goto_371

    .line 684
    :cond_37d
    const v6, 0x8500

    if-ge v0, v6, :cond_385

    .line 685
    add-int/lit16 v6, v4, 0x85

    .restart local v6    # "b":I
    goto :goto_387

    .line 687
    .end local v6    # "b":I
    :cond_385
    rsub-int v6, v4, 0xc5

    .line 689
    .restart local v6    # "b":I
    :goto_387
    invoke-virtual {v11, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 690
    const/16 v25, 0x0

    .line 692
    .end local v4    # "commonTertiaries":I
    .end local v6    # "b":I
    .restart local v25    # "commonTertiaries":I
    :cond_38c
    invoke-virtual {v11, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    .line 696
    .end local v0    # "t":I
    :cond_38f
    :goto_38f
    and-int/lit8 v0, v41, 0x20

    if-eqz v0, :cond_3e7

    .line 697
    const v0, 0xffff

    and-int v0, v33, v0

    .line 698
    .local v0, "q":I
    and-int/lit16 v4, v0, 0xc0

    if-nez v4, :cond_3a3

    const/16 v4, 0x100

    if-le v0, v4, :cond_3a5

    .line 699
    add-int/lit8 v26, v26, 0x1

    goto :goto_3e7

    .line 698
    :cond_3a3
    const/16 v4, 0x100

    .line 700
    :cond_3a5
    if-ne v0, v4, :cond_3b6

    and-int/lit8 v4, v3, 0xc

    if-nez v4, :cond_3b6

    .line 702
    invoke-virtual {v15}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3b6

    .line 712
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto :goto_3e7

    .line 714
    :cond_3b6
    const/16 v4, 0x100

    if-ne v0, v4, :cond_3bc

    .line 715
    const/4 v0, 0x1

    goto :goto_3c4

    .line 717
    :cond_3bc
    ushr-int/lit8 v4, v0, 0x6

    const/16 v27, 0x3

    and-int/lit8 v4, v4, 0x3

    add-int/lit16 v0, v4, 0xfc

    .line 719
    :goto_3c4
    if-eqz v26, :cond_3e4

    .line 720
    add-int/lit8 v26, v26, -0x1

    move/from16 v4, v26

    .line 721
    .end local v26    # "commonQuaternaries":I
    .local v4, "commonQuaternaries":I
    :goto_3ca
    const/16 v6, 0x71

    if-lt v4, v6, :cond_3d6

    .line 722
    const/16 v6, 0x8c

    invoke-virtual {v15, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 723
    add-int/lit8 v4, v4, -0x71

    goto :goto_3ca

    .line 726
    :cond_3d6
    const/16 v6, 0x1c

    if-ge v0, v6, :cond_3dd

    .line 727
    add-int/lit8 v6, v4, 0x1c

    .restart local v6    # "b":I
    goto :goto_3df

    .line 729
    .end local v6    # "b":I
    :cond_3dd
    rsub-int v6, v4, 0xfc

    .line 731
    .restart local v6    # "b":I
    :goto_3df
    invoke-virtual {v15, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 732
    const/16 v26, 0x0

    .line 734
    .end local v4    # "commonQuaternaries":I
    .end local v6    # "b":I
    .restart local v26    # "commonQuaternaries":I
    :cond_3e4
    invoke-virtual {v15, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 738
    .end local v0    # "q":I
    :cond_3e7
    :goto_3e7
    ushr-int/lit8 v0, v33, 0x18

    const/4 v4, 0x1

    if-ne v0, v4, :cond_45b

    .line 739
    nop

    .line 745
    .end local v13    # "p":J
    .end local v33    # "lower32":I
    .end local v43    # "ce":J
    and-int/lit8 v0, v41, 0x4

    if-eqz v0, :cond_400

    .line 746
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_3f9

    .line 747
    return-void

    .line 750
    :cond_3f9
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 751
    invoke-virtual {v7, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    .line 754
    :cond_400
    and-int/lit8 v0, v41, 0x8

    if-eqz v0, :cond_433

    .line 755
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_40c

    .line 756
    return-void

    .line 759
    :cond_40c
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 761
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 762
    .local v0, "length":I
    const/4 v4, 0x0

    .line 763
    .local v4, "b":B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_417
    if-ge v6, v0, :cond_42e

    .line 764
    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->getAt(I)B

    move-result v13

    .line 765
    .local v13, "c":B
    nop

    .line 766
    if-nez v4, :cond_422

    .line 767
    move v4, v13

    goto :goto_42b

    .line 769
    :cond_422
    shr-int/lit8 v14, v13, 0x4

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v14, v4

    invoke-virtual {v1, v14}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 770
    const/4 v4, 0x0

    .line 763
    .end local v13    # "c":B
    :goto_42b
    add-int/lit8 v6, v6, 0x1

    goto :goto_417

    .line 773
    .end local v6    # "i":I
    :cond_42e
    if-eqz v4, :cond_433

    .line 774
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 778
    .end local v0    # "length":I
    .end local v4    # "b":B
    :cond_433
    and-int/lit8 v0, v41, 0x10

    if-eqz v0, :cond_447

    .line 779
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_440

    .line 780
    return-void

    .line 783
    :cond_440
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 784
    invoke-virtual {v11, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    .line 787
    :cond_447
    and-int/lit8 v0, v41, 0x20

    if-eqz v0, :cond_45a

    .line 788
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_453

    .line 789
    return-void

    .line 792
    :cond_453
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 793
    invoke-virtual {v15, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    .line 800
    :cond_45a
    return-void

    .line 738
    .local v13, "p":J
    .restart local v33    # "lower32":I
    .restart local v43    # "ce":J
    :cond_45b
    move/from16 v0, v20

    const/4 v6, 0x3

    .line 741
    .end local v13    # "p":J
    .end local v33    # "lower32":I
    .end local v43    # "ce":J
    move-object v14, v5

    move-object v13, v11

    move-object/from16 v0, p2

    move v5, v4

    move v11, v6

    move/from16 v6, v40

    move/from16 v4, v41

    goto/16 :goto_69
.end method
