.class public final Landroid/icu/impl/coll/CollationFastLatin;
.super Ljava/lang/Object;
.source "CollationFastLatin.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist BAIL_OUT:I = 0x1

.field public static final blacklist BAIL_OUT_RESULT:I = -0x2

.field static final blacklist CASE_AND_TERTIARY_MASK:I = 0x1f

.field static final blacklist CASE_MASK:I = 0x18

.field static final blacklist COMMON_SEC:I = 0xa0

.field static final blacklist COMMON_SEC_PLUS_OFFSET:I = 0xc0

.field static final blacklist COMMON_TER:I = 0x0

.field static final blacklist COMMON_TER_PLUS_OFFSET:I = 0x20

.field static final blacklist CONTRACTION:I = 0x400

.field static final blacklist CONTR_CHAR_MASK:I = 0x1ff

.field static final blacklist CONTR_LENGTH_SHIFT:I = 0x9

.field static final blacklist EOS:I = 0x2

.field static final blacklist EXPANSION:I = 0x800

.field static final blacklist INDEX_MASK:I = 0x3ff

.field public static final blacklist LATIN_LIMIT:I = 0x180

.field public static final blacklist LATIN_MAX:I = 0x17f

.field static final blacklist LATIN_MAX_UTF8_LEAD:I = 0xc5

.field static final blacklist LONG_INC:I = 0x8

.field static final blacklist LONG_PRIMARY_MASK:I = 0xfff8

.field static final blacklist LOWER_CASE:I = 0x8

.field static final blacklist MAX_LONG:I = 0xff8

.field static final blacklist MAX_SEC_AFTER:I = 0x160

.field static final blacklist MAX_SEC_BEFORE:I = 0x80

.field static final blacklist MAX_SEC_HIGH:I = 0x3e0

.field static final blacklist MAX_SHORT:I = 0xfc00

.field static final blacklist MAX_TER_AFTER:I = 0x7

.field static final blacklist MERGE_WEIGHT:I = 0x3

.field static final blacklist MIN_LONG:I = 0xc00

.field static final blacklist MIN_SEC_AFTER:I = 0xc0

.field static final blacklist MIN_SEC_BEFORE:I = 0x0

.field static final blacklist MIN_SEC_HIGH:I = 0x180

.field static final blacklist MIN_SHORT:I = 0x1000

.field static final blacklist NUM_FAST_CHARS:I = 0x1c0

.field static final blacklist PUNCT_LIMIT:I = 0x2040

.field static final blacklist PUNCT_START:I = 0x2000

.field static final blacklist SECONDARY_MASK:I = 0x3e0

.field static final blacklist SEC_INC:I = 0x20

.field static final blacklist SEC_OFFSET:I = 0x20

.field static final blacklist SHORT_INC:I = 0x400

.field static final blacklist SHORT_PRIMARY_MASK:I = 0xfc00

.field static final blacklist TERTIARY_MASK:I = 0x7

.field static final blacklist TER_OFFSET:I = 0x20

.field static final blacklist TWO_CASES_MASK:I = 0x180018

.field static final blacklist TWO_COMMON_SEC_PLUS_OFFSET:I = 0xc000c0

.field static final blacklist TWO_COMMON_TER_PLUS_OFFSET:I = 0x200020

.field static final blacklist TWO_LONG_PRIMARIES_MASK:I = -0x70008

.field static final blacklist TWO_LOWER_CASES:I = 0x80008

.field static final blacklist TWO_SECONDARIES_MASK:I = 0x3e003e0

.field static final blacklist TWO_SEC_OFFSETS:I = 0x200020

.field static final blacklist TWO_SHORT_PRIMARIES_MASK:I = -0x3ff0400

.field static final blacklist TWO_TERTIARIES_MASK:I = 0x70007

.field static final blacklist TWO_TER_OFFSETS:I = 0x200020

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 31
    .param p0, "table"    # [C
    .param p1, "primaries"    # [C
    .param p2, "options"    # I
    .param p3, "left"    # Ljava/lang/CharSequence;
    .param p4, "right"    # Ljava/lang/CharSequence;
    .param p5, "startIndex"    # I

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    shr-int/lit8 v3, p2, 0x10

    .line 297
    .local v3, "variableTop":I
    const v4, 0xffff

    and-int v5, p2, v4

    .line 300
    .end local p2    # "options":I
    .local v5, "options":I
    move/from16 v6, p5

    .local v6, "leftIndex":I
    move/from16 v7, p5

    .line 306
    .local v7, "rightIndex":I
    const/4 v8, 0x0

    .local v8, "leftPair":I
    const/4 v9, 0x0

    .line 309
    .local v9, "rightPair":I
    :goto_13
    const/16 v12, 0x30

    const/16 v13, 0x39

    const/16 v14, 0x1000

    const/16 v15, 0x2040

    const/16 v16, -0x2

    move/from16 v17, v4

    const/16 v4, 0x2000

    const-wide/16 v18, 0x0

    const p2, 0xfff8

    const/16 v10, 0x17f

    const v20, 0xfc00

    if-nez v8, :cond_82

    .line 310
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_35

    .line 311
    const/4 v8, 0x2

    .line 312
    goto :goto_82

    .line 314
    :cond_35
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v11, "leftIndex":I
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 315
    .local v6, "c":I
    if-gt v6, v10, :cond_4f

    .line 316
    aget-char v8, p1, v6

    .line 317
    if-eqz v8, :cond_43

    move v6, v11

    goto :goto_82

    .line 318
    :cond_43
    if-gt v6, v13, :cond_4c

    if-lt v6, v12, :cond_4c

    and-int/lit8 v22, v5, 0x2

    if-eqz v22, :cond_4c

    .line 319
    return v16

    .line 321
    :cond_4c
    aget-char v8, v0, v6

    goto :goto_5e

    .line 322
    :cond_4f
    if-gt v4, v6, :cond_5a

    if-ge v6, v15, :cond_5a

    .line 323
    add-int/lit16 v15, v6, -0x2000

    add-int/lit16 v15, v15, 0x180

    aget-char v8, v0, v15

    goto :goto_5e

    .line 325
    :cond_5a
    invoke-static {v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    .line 327
    :goto_5e
    if-lt v8, v14, :cond_64

    .line 328
    and-int v8, v8, v20

    .line 329
    move v6, v11

    goto :goto_82

    .line 330
    :cond_64
    if-le v8, v3, :cond_6a

    .line 331
    and-int v8, v8, p2

    .line 332
    move v6, v11

    goto :goto_82

    .line 334
    :cond_6a
    invoke-static {v0, v6, v8, v1, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    .line 335
    .local v12, "pairAndInc":J
    cmp-long v4, v12, v18

    if-gez v4, :cond_75

    .line 336
    add-int/lit8 v11, v11, 0x1

    .line 337
    not-long v12, v12

    .line 339
    :cond_75
    long-to-int v4, v12

    .line 340
    .end local v8    # "leftPair":I
    .local v4, "leftPair":I
    const/4 v8, 0x1

    if-ne v4, v8, :cond_7a

    return v16

    .line 341
    :cond_7a
    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v8

    .line 343
    .end local v4    # "leftPair":I
    .end local v6    # "c":I
    .end local v12    # "pairAndInc":J
    .restart local v8    # "leftPair":I
    move v6, v11

    move/from16 v4, v17

    goto :goto_13

    .line 345
    .end local v11    # "leftIndex":I
    .local v6, "leftIndex":I
    :cond_82
    :goto_82
    if-nez v9, :cond_dd

    .line 346
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v7, v11, :cond_8c

    .line 347
    const/4 v9, 0x2

    .line 348
    goto :goto_dd

    .line 350
    :cond_8c
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v11, "rightIndex":I
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 351
    .local v7, "c":I
    if-gt v7, v10, :cond_a6

    .line 352
    aget-char v9, p1, v7

    .line 353
    if-eqz v9, :cond_9a

    move v7, v11

    goto :goto_dd

    .line 354
    :cond_9a
    if-gt v7, v13, :cond_a3

    if-lt v7, v12, :cond_a3

    and-int/lit8 v15, v5, 0x2

    if-eqz v15, :cond_a3

    .line 355
    return v16

    .line 357
    :cond_a3
    aget-char v9, v0, v7

    goto :goto_b7

    .line 358
    :cond_a6
    if-gt v4, v7, :cond_b3

    const/16 v15, 0x2040

    if-ge v7, v15, :cond_b3

    .line 359
    add-int/lit16 v15, v7, -0x2000

    add-int/lit16 v15, v15, 0x180

    aget-char v9, v0, v15

    goto :goto_b7

    .line 361
    :cond_b3
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v9

    .line 363
    :goto_b7
    if-lt v9, v14, :cond_bd

    .line 364
    and-int v9, v9, v20

    .line 365
    move v7, v11

    goto :goto_dd

    .line 366
    :cond_bd
    if-le v9, v3, :cond_c3

    .line 367
    and-int v9, v9, p2

    .line 368
    move v7, v11

    goto :goto_dd

    .line 370
    :cond_c3
    invoke-static {v0, v7, v9, v2, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    .line 371
    .restart local v12    # "pairAndInc":J
    cmp-long v24, v12, v18

    if-gez v24, :cond_ce

    .line 372
    add-int/lit8 v11, v11, 0x1

    .line 373
    not-long v12, v12

    .line 375
    :cond_ce
    long-to-int v9, v12

    .line 376
    const/4 v15, 0x1

    if-ne v9, v15, :cond_d3

    return v16

    .line 377
    :cond_d3
    invoke-static {v3, v9}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v9

    .line 379
    .end local v7    # "c":I
    .end local v12    # "pairAndInc":J
    move v7, v11

    const/16 v12, 0x30

    const/16 v13, 0x39

    goto :goto_82

    .line 381
    .end local v11    # "rightIndex":I
    .local v7, "rightIndex":I
    :cond_dd
    :goto_dd
    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v8, v9, :cond_ea

    .line 382
    if-ne v8, v13, :cond_e4

    goto :goto_fa

    .line 383
    :cond_e4
    move v9, v12

    move v8, v12

    .line 384
    move/from16 v4, v17

    goto/16 :goto_13

    .line 386
    :cond_ea
    and-int v15, v8, v17

    .line 387
    .local v15, "leftPrimary":I
    and-int v11, v9, v17

    .line 388
    .local v11, "rightPrimary":I
    if-eq v15, v11, :cond_f8

    .line 390
    if-ge v15, v11, :cond_f5

    const/16 v21, -0x1

    goto :goto_f7

    :cond_f5
    const/16 v21, 0x1

    :goto_f7
    return v21

    .line 392
    :cond_f8
    if-ne v8, v13, :cond_3c0

    .line 402
    .end local v11    # "rightPrimary":I
    .end local v15    # "leftPrimary":I
    :goto_fa
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v11

    const/4 v15, 0x1

    if-lt v11, v15, :cond_1dd

    .line 403
    move/from16 v7, p5

    move/from16 v6, p5

    .line 404
    move v9, v12

    move v8, v12

    .line 406
    :goto_107
    if-nez v8, :cond_158

    .line 407
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_113

    .line 408
    const/4 v8, 0x2

    .line 409
    move/from16 v23, v12

    goto :goto_15a

    .line 411
    :cond_113
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v11, "leftIndex":I
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 412
    .local v6, "c":I
    if-gt v6, v10, :cond_11e

    .line 413
    aget-char v8, v0, v6

    goto :goto_12f

    .line 414
    :cond_11e
    if-gt v4, v6, :cond_12b

    const/16 v15, 0x2040

    if-ge v6, v15, :cond_12b

    .line 415
    add-int/lit16 v15, v6, -0x2000

    add-int/lit16 v15, v15, 0x180

    aget-char v8, v0, v15

    goto :goto_12f

    .line 417
    :cond_12b
    invoke-static {v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    .line 419
    :goto_12f
    if-lt v8, v14, :cond_139

    .line 420
    invoke-static {v8}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v8

    .line 421
    move v6, v11

    move/from16 v23, v12

    goto :goto_15a

    .line 422
    :cond_139
    if-le v8, v3, :cond_141

    .line 423
    const/16 v8, 0xc0

    .line 424
    move v6, v11

    move/from16 v23, v12

    goto :goto_15a

    .line 426
    :cond_141
    move/from16 v23, v12

    invoke-static {v0, v6, v8, v1, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    .line 427
    .restart local v12    # "pairAndInc":J
    cmp-long v15, v12, v18

    if-gez v15, :cond_14e

    .line 428
    add-int/lit8 v11, v11, 0x1

    .line 429
    not-long v12, v12

    .line 431
    :cond_14e
    long-to-int v15, v12

    invoke-static {v3, v15}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v8

    .line 433
    .end local v6    # "c":I
    .end local v12    # "pairAndInc":J
    move v6, v11

    move/from16 v12, v23

    const/4 v13, 0x2

    goto :goto_107

    .line 406
    .end local v11    # "leftIndex":I
    .local v6, "leftIndex":I
    :cond_158
    move/from16 v23, v12

    .line 435
    :goto_15a
    if-nez v9, :cond_1a8

    .line 436
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v7, v11, :cond_166

    .line 437
    const/4 v9, 0x2

    .line 438
    const/16 v15, 0x2040

    goto :goto_1aa

    .line 440
    :cond_166
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v11, "rightIndex":I
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 441
    .local v7, "c":I
    if-gt v7, v10, :cond_173

    .line 442
    aget-char v9, v0, v7

    const/16 v15, 0x2040

    goto :goto_186

    .line 443
    :cond_173
    if-gt v4, v7, :cond_180

    const/16 v15, 0x2040

    if-ge v7, v15, :cond_182

    .line 444
    add-int/lit16 v12, v7, -0x2000

    add-int/lit16 v12, v12, 0x180

    aget-char v9, v0, v12

    goto :goto_186

    .line 443
    :cond_180
    const/16 v15, 0x2040

    .line 446
    :cond_182
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v9

    .line 448
    :goto_186
    if-lt v9, v14, :cond_18e

    .line 449
    invoke-static {v9}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v9

    .line 450
    move v7, v11

    goto :goto_1aa

    .line 451
    :cond_18e
    if-le v9, v3, :cond_194

    .line 452
    const/16 v9, 0xc0

    .line 453
    move v7, v11

    goto :goto_1aa

    .line 455
    :cond_194
    invoke-static {v0, v7, v9, v2, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    .line 456
    .restart local v12    # "pairAndInc":J
    cmp-long v22, v12, v18

    if-gez v22, :cond_19f

    .line 457
    add-int/lit8 v11, v11, 0x1

    .line 458
    not-long v12, v12

    .line 460
    :cond_19f
    long-to-int v4, v12

    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v9

    .line 462
    .end local v7    # "c":I
    .end local v12    # "pairAndInc":J
    move v7, v11

    const/16 v4, 0x2000

    goto :goto_15a

    .line 435
    .end local v11    # "rightIndex":I
    .local v7, "rightIndex":I
    :cond_1a8
    const/16 v15, 0x2040

    .line 464
    :goto_1aa
    if-ne v8, v9, :cond_1bb

    .line 465
    const/4 v4, 0x2

    if-ne v8, v4, :cond_1b0

    goto :goto_1df

    .line 466
    :cond_1b0
    move/from16 v9, v23

    move/from16 v8, v23

    .line 467
    move/from16 v12, v23

    const/16 v4, 0x2000

    const/4 v13, 0x2

    goto/16 :goto_107

    .line 469
    :cond_1bb
    and-int v4, v8, v17

    .line 470
    .local v4, "leftSecondary":I
    and-int v11, v9, v17

    .line 471
    .local v11, "rightSecondary":I
    if-eq v4, v11, :cond_1ce

    .line 472
    and-int/lit16 v10, v5, 0x800

    if-eqz v10, :cond_1c6

    .line 475
    return v16

    .line 477
    :cond_1c6
    if-ge v4, v11, :cond_1cb

    const/16 v21, -0x1

    goto :goto_1cd

    :cond_1cb
    const/16 v21, 0x1

    :goto_1cd
    return v21

    .line 479
    :cond_1ce
    const/4 v12, 0x2

    if-ne v8, v12, :cond_1d2

    goto :goto_1df

    .line 480
    :cond_1d2
    ushr-int/lit8 v8, v8, 0x10

    .line 481
    ushr-int/lit8 v9, v9, 0x10

    .line 482
    .end local v4    # "leftSecondary":I
    .end local v11    # "rightSecondary":I
    move/from16 v12, v23

    const/16 v4, 0x2000

    const/4 v13, 0x2

    goto/16 :goto_107

    .line 402
    :cond_1dd
    move/from16 v23, v12

    .line 485
    :goto_1df
    and-int/lit16 v4, v5, 0x400

    const/16 v12, 0xc00

    if-eqz v4, :cond_280

    .line 486
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    if-nez v4, :cond_1ed

    const/4 v4, 0x1

    goto :goto_1ef

    :cond_1ed
    move/from16 v4, v23

    .line 487
    .local v4, "strengthIsPrimary":Z
    :goto_1ef
    move/from16 v7, p5

    move/from16 v6, p5

    .line 488
    move/from16 v9, v23

    move/from16 v8, v23

    .line 490
    :goto_1f7
    if-nez v8, :cond_224

    .line 491
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_201

    .line 492
    const/4 v8, 0x2

    .line 493
    goto :goto_224

    .line 495
    :cond_201
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v11, "leftIndex":I
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 496
    .local v6, "c":I
    if-gt v6, v10, :cond_20c

    aget-char v13, v0, v6

    goto :goto_210

    :cond_20c
    invoke-static {v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    .line 497
    .end local v8    # "leftPair":I
    .local v13, "leftPair":I
    :goto_210
    if-ge v13, v12, :cond_21e

    .line 498
    invoke-static {v0, v6, v13, v1, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    .line 499
    .local v14, "pairAndInc":J
    cmp-long v8, v14, v18

    if-gez v8, :cond_21d

    .line 500
    add-int/lit8 v11, v11, 0x1

    .line 501
    not-long v14, v14

    .line 503
    :cond_21d
    long-to-int v13, v14

    .line 505
    .end local v14    # "pairAndInc":J
    :cond_21e
    invoke-static {v3, v4, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v8

    .line 506
    .end local v6    # "c":I
    .end local v13    # "leftPair":I
    .restart local v8    # "leftPair":I
    move v6, v11

    goto :goto_1f7

    .line 508
    .end local v11    # "leftIndex":I
    .local v6, "leftIndex":I
    :cond_224
    :goto_224
    if-nez v9, :cond_251

    .line 509
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v7, v11, :cond_22e

    .line 510
    const/4 v9, 0x2

    .line 511
    goto :goto_251

    .line 513
    :cond_22e
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v11, "rightIndex":I
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 514
    .local v7, "c":I
    if-gt v7, v10, :cond_239

    aget-char v13, v0, v7

    goto :goto_23d

    :cond_239
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    .line 515
    .end local v9    # "rightPair":I
    .local v13, "rightPair":I
    :goto_23d
    if-ge v13, v12, :cond_24b

    .line 516
    invoke-static {v0, v7, v13, v2, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    .line 517
    .restart local v14    # "pairAndInc":J
    cmp-long v9, v14, v18

    if-gez v9, :cond_24a

    .line 518
    add-int/lit8 v11, v11, 0x1

    .line 519
    not-long v14, v14

    .line 521
    :cond_24a
    long-to-int v13, v14

    .line 523
    .end local v14    # "pairAndInc":J
    :cond_24b
    invoke-static {v3, v4, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v9

    .line 524
    .end local v7    # "c":I
    .end local v13    # "rightPair":I
    .restart local v9    # "rightPair":I
    move v7, v11

    goto :goto_224

    .line 526
    .end local v11    # "rightIndex":I
    .local v7, "rightIndex":I
    :cond_251
    :goto_251
    if-ne v8, v9, :cond_25c

    .line 527
    const/4 v11, 0x2

    if-ne v8, v11, :cond_257

    goto :goto_280

    .line 528
    :cond_257
    move/from16 v9, v23

    move/from16 v8, v23

    .line 529
    goto :goto_1f7

    .line 531
    :cond_25c
    and-int v11, v8, v17

    .line 532
    .local v11, "leftCase":I
    and-int v13, v9, v17

    .line 533
    .local v13, "rightCase":I
    if-eq v11, v13, :cond_276

    .line 534
    and-int/lit16 v10, v5, 0x100

    if-nez v10, :cond_26e

    .line 535
    if-ge v11, v13, :cond_26b

    const/16 v21, -0x1

    goto :goto_26d

    :cond_26b
    const/16 v21, 0x1

    :goto_26d
    return v21

    .line 537
    :cond_26e
    if-ge v11, v13, :cond_273

    const/16 v21, 0x1

    goto :goto_275

    :cond_273
    const/16 v21, -0x1

    :goto_275
    return v21

    .line 540
    :cond_276
    const/4 v14, 0x2

    if-ne v8, v14, :cond_27a

    goto :goto_280

    .line 541
    :cond_27a
    ushr-int/lit8 v8, v8, 0x10

    .line 542
    ushr-int/lit8 v9, v9, 0x10

    .line 543
    .end local v11    # "leftCase":I
    .end local v13    # "rightCase":I
    goto/16 :goto_1f7

    .line 545
    .end local v4    # "strengthIsPrimary":Z
    :cond_280
    :goto_280
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/4 v13, 0x1

    if-gt v4, v13, :cond_288

    return v23

    .line 548
    :cond_288
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v4

    .line 550
    .local v4, "withCaseBits":Z
    move/from16 v7, p5

    move/from16 v6, p5

    .line 551
    move/from16 v9, v23

    move/from16 v8, v23

    .line 553
    :goto_294
    if-nez v8, :cond_2c4

    .line 554
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_29e

    .line 555
    const/4 v8, 0x2

    .line 556
    goto :goto_2c4

    .line 558
    :cond_29e
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v11, "leftIndex":I
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 559
    .local v6, "c":I
    if-gt v6, v10, :cond_2a9

    aget-char v14, v0, v6

    goto :goto_2ad

    :cond_2a9
    invoke-static {v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v14

    .line 560
    .end local v8    # "leftPair":I
    .local v14, "leftPair":I
    :goto_2ad
    if-ge v14, v12, :cond_2bb

    .line 561
    invoke-static {v0, v6, v14, v1, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    .line 562
    .restart local v12    # "pairAndInc":J
    cmp-long v8, v12, v18

    if-gez v8, :cond_2ba

    .line 563
    add-int/lit8 v11, v11, 0x1

    .line 564
    not-long v12, v12

    .line 566
    :cond_2ba
    long-to-int v14, v12

    .line 568
    .end local v12    # "pairAndInc":J
    :cond_2bb
    invoke-static {v3, v4, v14}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v8

    .line 569
    .end local v6    # "c":I
    .end local v14    # "leftPair":I
    .restart local v8    # "leftPair":I
    move v6, v11

    const/16 v12, 0xc00

    const/4 v13, 0x1

    goto :goto_294

    .line 571
    .end local v11    # "leftIndex":I
    .local v6, "leftIndex":I
    :cond_2c4
    :goto_2c4
    if-nez v9, :cond_2f3

    .line 572
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v7, v11, :cond_2ce

    .line 573
    const/4 v9, 0x2

    .line 574
    goto :goto_2f3

    .line 576
    :cond_2ce
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v11, "rightIndex":I
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 577
    .local v7, "c":I
    if-gt v7, v10, :cond_2d9

    aget-char v12, v0, v7

    goto :goto_2dd

    :cond_2d9
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v12

    .line 578
    .end local v9    # "rightPair":I
    .local v12, "rightPair":I
    :goto_2dd
    const/16 v9, 0xc00

    if-ge v12, v9, :cond_2ed

    .line 579
    invoke-static {v0, v7, v12, v2, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    .line 580
    .local v13, "pairAndInc":J
    cmp-long v9, v13, v18

    if-gez v9, :cond_2ec

    .line 581
    add-int/lit8 v11, v11, 0x1

    .line 582
    not-long v13, v13

    .line 584
    :cond_2ec
    long-to-int v12, v13

    .line 586
    .end local v13    # "pairAndInc":J
    :cond_2ed
    invoke-static {v3, v4, v12}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v9

    .line 587
    .end local v7    # "c":I
    .end local v12    # "rightPair":I
    .restart local v9    # "rightPair":I
    move v7, v11

    goto :goto_2c4

    .line 589
    .end local v11    # "rightIndex":I
    .local v7, "rightIndex":I
    :cond_2f3
    :goto_2f3
    if-ne v8, v9, :cond_302

    .line 590
    const/4 v11, 0x2

    if-ne v8, v11, :cond_2fa

    const/4 v14, 0x2

    goto :goto_322

    .line 591
    :cond_2fa
    move/from16 v9, v23

    move/from16 v8, v23

    .line 592
    const/16 v12, 0xc00

    const/4 v13, 0x1

    goto :goto_294

    .line 594
    :cond_302
    and-int v11, v8, v17

    .line 595
    .local v11, "leftTertiary":I
    and-int v12, v9, v17

    .line 596
    .local v12, "rightTertiary":I
    if-eq v11, v12, :cond_31f

    .line 597
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v10

    if-eqz v10, :cond_317

    .line 601
    const/4 v10, 0x3

    if-le v11, v10, :cond_313

    .line 602
    xor-int/lit8 v11, v11, 0x18

    .line 604
    :cond_313
    if-le v12, v10, :cond_317

    .line 605
    xor-int/lit8 v12, v12, 0x18

    .line 608
    :cond_317
    if-ge v11, v12, :cond_31c

    const/16 v21, -0x1

    goto :goto_31e

    :cond_31c
    const/16 v21, 0x1

    :goto_31e
    return v21

    .line 610
    :cond_31f
    const/4 v14, 0x2

    if-ne v8, v14, :cond_3b6

    .line 614
    .end local v11    # "leftTertiary":I
    .end local v12    # "rightTertiary":I
    :goto_322
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v11

    if-gt v11, v14, :cond_329

    return v23

    .line 616
    :cond_329
    move/from16 v7, p5

    move/from16 v6, p5

    .line 617
    move/from16 v9, v23

    move/from16 v8, v23

    .line 619
    :goto_331
    if-nez v8, :cond_360

    .line 620
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v6, v11, :cond_33b

    .line 621
    const/4 v8, 0x2

    .line 622
    goto :goto_360

    .line 624
    :cond_33b
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "leftIndex":I
    .local v11, "leftIndex":I
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 625
    .local v6, "c":I
    if-gt v6, v10, :cond_346

    aget-char v12, v0, v6

    goto :goto_34a

    :cond_346
    invoke-static {v0, v6}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v12

    .line 626
    .end local v8    # "leftPair":I
    .local v12, "leftPair":I
    :goto_34a
    const/16 v8, 0xc00

    if-ge v12, v8, :cond_35a

    .line 627
    invoke-static {v0, v6, v12, v1, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    .line 628
    .restart local v13    # "pairAndInc":J
    cmp-long v8, v13, v18

    if-gez v8, :cond_359

    .line 629
    add-int/lit8 v11, v11, 0x1

    .line 630
    not-long v13, v13

    .line 632
    :cond_359
    long-to-int v12, v13

    .line 634
    .end local v13    # "pairAndInc":J
    :cond_35a
    invoke-static {v3, v12}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v8

    .line 635
    .end local v6    # "c":I
    .end local v12    # "leftPair":I
    .restart local v8    # "leftPair":I
    move v6, v11

    goto :goto_331

    .line 637
    .end local v11    # "leftIndex":I
    .local v6, "leftIndex":I
    :cond_360
    :goto_360
    if-nez v9, :cond_391

    .line 638
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v7, v11, :cond_36c

    .line 639
    const/4 v9, 0x2

    .line 640
    const/16 v13, 0xc00

    goto :goto_393

    .line 642
    :cond_36c
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "rightIndex":I
    .local v11, "rightIndex":I
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 643
    .local v7, "c":I
    if-gt v7, v10, :cond_377

    aget-char v12, v0, v7

    goto :goto_37b

    :cond_377
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v12

    .line 644
    .end local v9    # "rightPair":I
    .local v12, "rightPair":I
    :goto_37b
    const/16 v13, 0xc00

    if-ge v12, v13, :cond_38b

    .line 645
    invoke-static {v0, v7, v12, v2, v11}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    .line 646
    .local v14, "pairAndInc":J
    cmp-long v9, v14, v18

    if-gez v9, :cond_38a

    .line 647
    add-int/lit8 v11, v11, 0x1

    .line 648
    not-long v14, v14

    .line 650
    :cond_38a
    long-to-int v12, v14

    .line 652
    .end local v14    # "pairAndInc":J
    :cond_38b
    invoke-static {v3, v12}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v9

    .line 653
    .end local v7    # "c":I
    .end local v12    # "rightPair":I
    .restart local v9    # "rightPair":I
    move v7, v11

    goto :goto_360

    .line 637
    .end local v11    # "rightIndex":I
    .local v7, "rightIndex":I
    :cond_391
    const/16 v13, 0xc00

    .line 655
    :goto_393
    if-ne v8, v9, :cond_39e

    .line 656
    const/4 v11, 0x2

    if-ne v8, v11, :cond_399

    goto :goto_3af

    .line 657
    :cond_399
    move/from16 v9, v23

    move/from16 v8, v23

    .line 658
    goto :goto_331

    .line 660
    :cond_39e
    and-int v11, v8, v17

    .line 661
    .local v11, "leftQuaternary":I
    and-int v12, v9, v17

    .line 662
    .local v12, "rightQuaternary":I
    if-eq v11, v12, :cond_3ac

    .line 663
    if-ge v11, v12, :cond_3a9

    const/16 v21, -0x1

    goto :goto_3ab

    :cond_3a9
    const/16 v21, 0x1

    :goto_3ab
    return v21

    .line 665
    :cond_3ac
    const/4 v14, 0x2

    if-ne v8, v14, :cond_3b0

    .line 669
    .end local v11    # "leftQuaternary":I
    .end local v12    # "rightQuaternary":I
    :goto_3af
    return v23

    .line 666
    .restart local v11    # "leftQuaternary":I
    .restart local v12    # "rightQuaternary":I
    :cond_3b0
    ushr-int/lit8 v8, v8, 0x10

    .line 667
    ushr-int/lit8 v9, v9, 0x10

    .line 668
    .end local v11    # "leftQuaternary":I
    .end local v12    # "rightQuaternary":I
    goto/16 :goto_331

    .line 611
    .local v11, "leftTertiary":I
    .local v12, "rightTertiary":I
    :cond_3b6
    const/16 v13, 0xc00

    ushr-int/lit8 v8, v8, 0x10

    .line 612
    ushr-int/lit8 v9, v9, 0x10

    .line 613
    .end local v11    # "leftTertiary":I
    .end local v12    # "rightTertiary":I
    move v12, v13

    const/4 v13, 0x1

    goto/16 :goto_294

    .line 393
    .end local v4    # "withCaseBits":Z
    .local v11, "rightPrimary":I
    .restart local v15    # "leftPrimary":I
    :cond_3c0
    ushr-int/lit8 v8, v8, 0x10

    .line 394
    ushr-int/lit8 v9, v9, 0x10

    .line 395
    .end local v11    # "rightPrimary":I
    .end local v15    # "leftPrimary":I
    move/from16 v4, v17

    goto/16 :goto_13
.end method

.method private static blacklist getCases(IZI)I
    .registers 6
    .param p0, "variableTop"    # I
    .param p1, "strengthIsPrimary"    # Z
    .param p2, "pair"    # I

    .line 792
    const/16 v0, 0x1000

    const v1, 0xffff

    if-gt p2, v1, :cond_23

    .line 794
    if-lt p2, v0, :cond_18

    .line 797
    move v0, p2

    .line 798
    .local v0, "ce":I
    and-int/lit8 p2, p2, 0x18

    .line 799
    if-nez p1, :cond_17

    and-int/lit16 v1, v0, 0x3e0

    const/16 v2, 0x180

    if-lt v1, v2, :cond_17

    .line 800
    const/high16 v1, 0x80000

    or-int/2addr p2, v1

    .line 802
    .end local v0    # "ce":I
    :cond_17
    goto :goto_3d

    :cond_18
    if-le p2, p0, :cond_1d

    .line 803
    const/16 p2, 0x8

    goto :goto_3d

    .line 804
    :cond_1d
    const/16 v0, 0xc00

    if-lt p2, v0, :cond_3d

    .line 805
    const/4 p2, 0x0

    goto :goto_3d

    .line 810
    :cond_23
    and-int/2addr v1, p2

    .line 811
    .local v1, "ce":I
    if-lt v1, v0, :cond_35

    .line 812
    if-eqz p1, :cond_30

    const/high16 v0, -0x4000000

    and-int/2addr v0, p2

    if-nez v0, :cond_30

    .line 813
    and-int/lit8 p2, p2, 0x18

    goto :goto_3d

    .line 815
    :cond_30
    const v0, 0x180018

    and-int/2addr p2, v0

    goto :goto_3d

    .line 817
    :cond_35
    if-le v1, p0, :cond_3b

    .line 818
    const p2, 0x80008

    goto :goto_3d

    .line 820
    :cond_3b
    nop

    .line 821
    const/4 p2, 0x0

    .line 824
    .end local v1    # "ce":I
    :cond_3d
    :goto_3d
    return p2
.end method

.method static blacklist getCharIndex(C)I
    .registers 2
    .param p0, "c"    # C

    .line 188
    const/16 v0, 0x17f

    if-gt p0, v0, :cond_5

    .line 189
    return p0

    .line 190
    :cond_5
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_10

    const/16 v0, 0x2040

    if-ge p0, v0, :cond_10

    .line 191
    add-int/lit16 v0, p0, -0x1e80

    return v0

    .line 196
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I
    .registers 25
    .param p0, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p1, "settings"    # Landroid/icu/impl/coll/CollationSettings;
    .param p2, "primaries"    # [C

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 209
    .local v3, "header":[C
    const/4 v4, -0x1

    if-nez v3, :cond_c

    return v4

    .line 210
    :cond_c
    nop

    .line 211
    array-length v5, v2

    const/16 v6, 0x180

    if-eq v5, v6, :cond_14

    .line 212
    nop

    .line 213
    return v4

    .line 217
    :cond_14
    iget v5, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v5, v5, 0xc

    const/4 v7, 0x0

    if-nez v5, :cond_1e

    .line 220
    const/16 v5, 0xbff

    .local v5, "miniVarTop":I
    goto :goto_2e

    .line 222
    .end local v5    # "miniVarTop":I
    :cond_1e
    aget-char v5, v3, v7

    and-int/lit16 v5, v5, 0xff

    .line 223
    .local v5, "headerLength":I
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 224
    .local v8, "i":I
    if-lt v8, v5, :cond_2b

    .line 225
    return v4

    .line 227
    :cond_2b
    aget-char v9, v3, v8

    move v5, v9

    .line 230
    .end local v8    # "i":I
    .local v5, "miniVarTop":I
    :goto_2e
    const/4 v8, 0x0

    .line 231
    .local v8, "digitsAreReordered":Z
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 232
    const-wide/16 v9, 0x0

    .line 233
    .local v9, "prevStart":J
    const-wide/16 v11, 0x0

    .line 234
    .local v11, "beforeDigitStart":J
    const-wide/16 v13, 0x0

    .line 235
    .local v13, "digitStart":J
    const-wide/16 v15, 0x0

    .line 236
    .local v15, "afterDigitStart":J
    const/16 v17, 0x1000

    move/from16 v21, v17

    move/from16 v17, v4

    move/from16 v4, v21

    .line 237
    .local v4, "group":I
    :goto_45
    move/from16 v18, v7

    const/16 v7, 0x1008

    const-wide/16 v19, 0x0

    if-ge v4, v7, :cond_7c

    .line 239
    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v6

    .line 240
    .local v6, "start":J
    invoke-virtual {v1, v6, v7}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v6

    .line 241
    const/16 v2, 0x1004

    if-ne v4, v2, :cond_5c

    .line 242
    move-wide v11, v9

    .line 243
    move-wide v13, v6

    goto :goto_73

    .line 244
    :cond_5c
    cmp-long v2, v6, v19

    if-eqz v2, :cond_73

    .line 245
    cmp-long v2, v6, v9

    if-gez v2, :cond_65

    .line 247
    return v17

    .line 250
    :cond_65
    cmp-long v2, v13, v19

    if-eqz v2, :cond_72

    cmp-long v2, v15, v19

    if-nez v2, :cond_72

    cmp-long v2, v9, v11

    if-nez v2, :cond_72

    .line 251
    move-wide v15, v6

    .line 253
    :cond_72
    move-wide v9, v6

    .line 238
    .end local v6    # "start":J
    :cond_73
    :goto_73
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p2

    move/from16 v7, v18

    const/16 v6, 0x180

    goto :goto_45

    .line 256
    .end local v4    # "group":I
    :cond_7c
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v6

    .line 257
    .local v6, "latinStart":J
    invoke-virtual {v1, v6, v7}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v6

    .line 258
    cmp-long v2, v6, v9

    if-gez v2, :cond_8b

    .line 259
    return v17

    .line 261
    :cond_8b
    cmp-long v2, v15, v19

    if-nez v2, :cond_90

    .line 262
    move-wide v15, v6

    .line 264
    :cond_90
    cmp-long v2, v11, v13

    if-gez v2, :cond_98

    cmp-long v2, v13, v15

    if-ltz v2, :cond_9c

    .line 265
    :cond_98
    const/4 v8, 0x1

    goto :goto_9c

    .line 231
    .end local v6    # "latinStart":J
    .end local v9    # "prevStart":J
    .end local v11    # "beforeDigitStart":J
    .end local v13    # "digitStart":J
    .end local v15    # "afterDigitStart":J
    :cond_9a
    move/from16 v18, v7

    .line 269
    :cond_9c
    :goto_9c
    iget-object v2, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 270
    .local v2, "table":[C
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_9f
    const/16 v6, 0x180

    if-ge v4, v6, :cond_bc

    .line 271
    aget-char v7, v2, v4

    .line 272
    .local v7, "p":I
    const/16 v9, 0x1000

    if-lt v7, v9, :cond_ae

    .line 273
    const v9, 0xfc00

    and-int/2addr v7, v9

    goto :goto_b6

    .line 274
    :cond_ae
    if-le v7, v5, :cond_b5

    .line 275
    const v9, 0xfff8

    and-int/2addr v7, v9

    goto :goto_b6

    .line 277
    :cond_b5
    const/4 v7, 0x0

    .line 279
    :goto_b6
    int-to-char v9, v7

    aput-char v9, p2, v4

    .line 270
    .end local v7    # "p":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    .line 281
    .end local v4    # "c":I
    :cond_bc
    if-nez v8, :cond_c4

    iget v4, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_cf

    .line 283
    :cond_c4
    const/16 v4, 0x30

    .restart local v4    # "c":I
    :goto_c6
    const/16 v6, 0x39

    if-gt v4, v6, :cond_cf

    aput-char v18, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 287
    .end local v4    # "c":I
    :cond_cf
    shl-int/lit8 v4, v5, 0x10

    iget v6, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr v4, v6

    return v4
.end method

.method private static blacklist getPrimaries(II)I
    .registers 4
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    .line 746
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 747
    .local v0, "ce":I
    const/16 v1, 0x1000

    if-lt v0, v1, :cond_d

    const v1, -0x3ff0400

    and-int/2addr v1, p1

    return v1

    .line 748
    :cond_d
    if-le v0, p0, :cond_14

    const v1, -0x70008

    and-int/2addr v1, p1

    return v1

    .line 749
    :cond_14
    const/16 v1, 0xc00

    if-lt v0, v1, :cond_1a

    const/4 v1, 0x0

    return v1

    .line 750
    :cond_1a
    return p1
.end method

.method private static blacklist getQuaternaries(II)I
    .registers 4
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    .line 880
    const v0, 0xffff

    if-gt p1, v0, :cond_26

    .line 882
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_17

    .line 885
    and-int/lit16 v0, p1, 0x3e0

    const/16 v1, 0x180

    if-lt v0, v1, :cond_13

    .line 886
    const p1, -0x3ff0400

    goto :goto_32

    .line 888
    :cond_13
    const p1, 0xfc00

    goto :goto_32

    .line 890
    :cond_17
    if-le p1, p0, :cond_1d

    .line 891
    const p1, 0xfc00

    goto :goto_32

    .line 892
    :cond_1d
    const/16 v0, 0xc00

    if-lt p1, v0, :cond_32

    .line 893
    const v0, 0xfff8

    and-int/2addr p1, v0

    goto :goto_32

    .line 898
    :cond_26
    and-int/2addr v0, p1

    .line 899
    .local v0, "ce":I
    if-le v0, p0, :cond_2d

    .line 900
    const p1, -0x3ff0400

    goto :goto_32

    .line 902
    :cond_2d
    nop

    .line 903
    const v1, -0x70008

    and-int/2addr p1, v1

    .line 906
    .end local v0    # "ce":I
    :cond_32
    :goto_32
    return p1
.end method

.method private static blacklist getSecondaries(II)I
    .registers 5
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    .line 763
    const/16 v0, 0x1000

    const v1, 0xffff

    if-gt p1, v1, :cond_19

    .line 765
    if-lt p1, v0, :cond_e

    .line 766
    invoke-static {p1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result p1

    goto :goto_2e

    .line 767
    :cond_e
    if-le p1, p0, :cond_13

    .line 768
    const/16 p1, 0xc0

    goto :goto_2e

    .line 769
    :cond_13
    const/16 v0, 0xc00

    if-lt p1, v0, :cond_2e

    .line 770
    const/4 p1, 0x0

    goto :goto_2e

    .line 774
    :cond_19
    and-int/2addr v1, p1

    .line 775
    .local v1, "ce":I
    if-lt v1, v0, :cond_26

    .line 776
    const v0, 0x3e003e0

    and-int/2addr v0, p1

    const v2, 0x200020

    add-int p1, v0, v2

    goto :goto_2e

    .line 777
    :cond_26
    if-le v1, p0, :cond_2c

    .line 778
    const p1, 0xc000c0

    goto :goto_2e

    .line 780
    :cond_2c
    nop

    .line 781
    const/4 p1, 0x0

    .line 784
    .end local v1    # "ce":I
    :cond_2e
    :goto_2e
    return p1
.end method

.method private static blacklist getSecondariesFromOneShortCE(I)I
    .registers 2
    .param p0, "ce"    # I

    .line 754
    and-int/lit16 p0, p0, 0x3e0

    .line 755
    const/16 v0, 0x180

    if-ge p0, v0, :cond_9

    .line 756
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 758
    :cond_9
    add-int/lit8 v0, p0, 0x20

    shl-int/lit8 v0, v0, 0x10

    or-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method private static blacklist getTertiaries(IZI)I
    .registers 7
    .param p0, "variableTop"    # I
    .param p1, "withCaseBits"    # Z
    .param p2, "pair"    # I

    .line 828
    const/16 v0, 0x1000

    const v1, 0xffff

    if-gt p2, v1, :cond_3b

    .line 830
    if-lt p2, v0, :cond_2a

    .line 833
    move v0, p2

    .line 834
    .local v0, "ce":I
    const/16 v1, 0x180

    if-eqz p1, :cond_1c

    .line 835
    and-int/lit8 v2, p2, 0x1f

    add-int/lit8 v2, v2, 0x20

    .line 836
    .end local p2    # "pair":I
    .local v2, "pair":I
    and-int/lit16 p2, v0, 0x3e0

    if-lt p2, v1, :cond_1a

    .line 837
    const/high16 p2, 0x280000

    or-int/2addr p2, v2

    .end local v2    # "pair":I
    .restart local p2    # "pair":I
    goto :goto_29

    .line 836
    .end local p2    # "pair":I
    .restart local v2    # "pair":I
    :cond_1a
    move p2, v2

    goto :goto_29

    .line 840
    .end local v2    # "pair":I
    .restart local p2    # "pair":I
    :cond_1c
    and-int/lit8 v2, p2, 0x7

    add-int/lit8 v2, v2, 0x20

    .line 841
    .end local p2    # "pair":I
    .restart local v2    # "pair":I
    and-int/lit16 p2, v0, 0x3e0

    if-lt p2, v1, :cond_28

    .line 842
    const/high16 p2, 0x200000

    or-int/2addr p2, v2

    .end local v2    # "pair":I
    .restart local p2    # "pair":I
    goto :goto_29

    .line 841
    .end local p2    # "pair":I
    .restart local v2    # "pair":I
    :cond_28
    move p2, v2

    .line 845
    .end local v0    # "ce":I
    .end local v2    # "pair":I
    .restart local p2    # "pair":I
    :goto_29
    goto :goto_5d

    :cond_2a
    if-le p2, p0, :cond_35

    .line 846
    and-int/lit8 v0, p2, 0x7

    add-int/lit8 p2, v0, 0x20

    .line 847
    if-eqz p1, :cond_5d

    .line 848
    or-int/lit8 p2, p2, 0x8

    goto :goto_5d

    .line 850
    :cond_35
    const/16 v0, 0xc00

    if-lt p2, v0, :cond_5d

    .line 851
    const/4 p2, 0x0

    goto :goto_5d

    .line 856
    :cond_3b
    and-int/2addr v1, p2

    .line 857
    .local v1, "ce":I
    const v2, 0x200020

    const v3, 0x70007

    if-lt v1, v0, :cond_4e

    .line 858
    if-eqz p1, :cond_4b

    .line 859
    const v0, 0x1f001f

    and-int/2addr p2, v0

    goto :goto_4c

    .line 861
    :cond_4b
    and-int/2addr p2, v3

    .line 863
    :goto_4c
    add-int/2addr p2, v2

    goto :goto_5d

    .line 864
    :cond_4e
    if-le v1, p0, :cond_5b

    .line 865
    and-int v0, p2, v3

    add-int p2, v0, v2

    .line 866
    if-eqz p1, :cond_5d

    .line 867
    const v0, 0x80008

    or-int/2addr p2, v0

    goto :goto_5d

    .line 870
    :cond_5b
    nop

    .line 871
    const/4 p2, 0x0

    .line 874
    .end local v1    # "ce":I
    :cond_5d
    :goto_5d
    return p2
.end method

.method private static blacklist lookup([CI)I
    .registers 3
    .param p0, "table"    # [C
    .param p1, "c"    # I

    .line 673
    nop

    .line 674
    const/16 v0, 0x2000

    if-gt v0, p1, :cond_10

    const/16 v0, 0x2040

    if-ge p1, v0, :cond_10

    .line 675
    add-int/lit16 v0, p1, -0x2000

    add-int/lit16 v0, v0, 0x180

    aget-char v0, p0, v0

    return v0

    .line 676
    :cond_10
    const v0, 0xfffe

    if-ne p1, v0, :cond_17

    .line 677
    const/4 v0, 0x3

    return v0

    .line 678
    :cond_17
    const v0, 0xffff

    if-ne p1, v0, :cond_20

    .line 679
    const v0, 0xfca8

    return v0

    .line 681
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist nextPair([CIILjava/lang/CharSequence;I)J
    .registers 15
    .param p0, "table"    # [C
    .param p1, "c"    # I
    .param p2, "ce"    # I
    .param p3, "s16"    # Ljava/lang/CharSequence;
    .param p4, "sIndex"    # I

    .line 690
    const/16 v0, 0xc00

    if-ge p2, v0, :cond_81

    const/16 v0, 0x400

    if-ge p2, v0, :cond_a

    goto/16 :goto_81

    .line 692
    :cond_a
    const/16 v0, 0x800

    const/16 v1, 0x10

    if-lt p2, v0, :cond_20

    .line 693
    and-int/lit16 v0, p2, 0x3ff

    add-int/lit16 v0, v0, 0x1c0

    .line 694
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x1

    aget-char v2, p0, v2

    int-to-long v2, v2

    shl-long v1, v2, v1

    aget-char v3, p0, v0

    int-to-long v3, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 698
    .end local v0    # "index":I
    :cond_20
    and-int/lit16 v0, p2, 0x3ff

    add-int/lit16 v0, v0, 0x1c0

    .line 699
    .restart local v0    # "index":I
    const/4 v2, 0x0

    .line 700
    .local v2, "inc":Z
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-wide/16 v4, 0x1

    if-eq p4, v3, :cond_62

    .line 703
    move v3, p4

    .line 704
    .local v3, "nextIndex":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "nextIndex":I
    .local v6, "nextIndex":I
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 705
    .local v3, "c2":I
    const/16 v7, 0x17f

    if-le v3, v7, :cond_52

    .line 706
    const/16 v7, 0x2000

    if-gt v7, v3, :cond_45

    const/16 v7, 0x2040

    if-ge v3, v7, :cond_45

    .line 707
    add-int/lit16 v7, v3, -0x2000

    add-int/lit16 v3, v7, 0x180

    goto :goto_52

    .line 708
    :cond_45
    const v7, 0xfffe

    if-eq v3, v7, :cond_51

    const v7, 0xffff

    if-ne v3, v7, :cond_50

    goto :goto_51

    .line 711
    :cond_50
    return-wide v4

    .line 709
    :cond_51
    :goto_51
    const/4 v3, -0x1

    .line 716
    :cond_52
    :goto_52
    move v7, v0

    .line 717
    .local v7, "i":I
    aget-char v8, p0, v7

    .line 720
    .local v8, "head":I
    :cond_55
    shr-int/lit8 v9, v8, 0x9

    add-int/2addr v7, v9

    .line 721
    aget-char v8, p0, v7

    .line 722
    and-int/lit16 v9, v8, 0x1ff

    .line 723
    .local v9, "x":I
    if-lt v9, v3, :cond_55

    .line 724
    if-ne v9, v3, :cond_62

    .line 725
    move v0, v7

    .line 726
    const/4 v2, 0x1

    .line 730
    .end local v3    # "c2":I
    .end local v6    # "nextIndex":I
    .end local v7    # "i":I
    .end local v8    # "head":I
    .end local v9    # "x":I
    :cond_62
    aget-char v3, p0, v0

    shr-int/lit8 v3, v3, 0x9

    .line 731
    .local v3, "length":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6a

    .line 732
    return-wide v4

    .line 734
    :cond_6a
    add-int/lit8 v4, v0, 0x1

    aget-char p2, p0, v4

    .line 736
    const/4 v4, 0x2

    if-ne v3, v4, :cond_73

    .line 737
    int-to-long v4, p2

    .local v4, "result":J
    goto :goto_7b

    .line 739
    .end local v4    # "result":J
    :cond_73
    add-int/lit8 v4, v0, 0x2

    aget-char v4, p0, v4

    int-to-long v4, v4

    shl-long/2addr v4, v1

    int-to-long v6, p2

    or-long/2addr v4, v6

    .line 741
    .restart local v4    # "result":J
    :goto_7b
    if-eqz v2, :cond_7f

    not-long v6, v4

    goto :goto_80

    :cond_7f
    move-wide v6, v4

    :goto_80
    return-wide v6

    .line 691
    .end local v0    # "index":I
    .end local v2    # "inc":Z
    .end local v3    # "length":I
    .end local v4    # "result":J
    :cond_81
    :goto_81
    int-to-long v0, p2

    return-wide v0
.end method
