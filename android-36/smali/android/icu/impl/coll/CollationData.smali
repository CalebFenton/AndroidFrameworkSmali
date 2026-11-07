.class public final Landroid/icu/impl/coll/CollationData;
.super Ljava/lang/Object;
.source "CollationData.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field static final blacklist JAMO_CE32S_LENGTH:I = 0x43

.field static final blacklist MAX_NUM_SPECIAL_REORDER_CODES:I = 0x8

.field static final blacklist REORDER_RESERVED_AFTER_LATIN:I = 0x100f

.field static final blacklist REORDER_RESERVED_BEFORE_LATIN:I = 0x100e


# instance fields
.field public blacklist base:Landroid/icu/impl/coll/CollationData;

.field blacklist ce32s:[I

.field blacklist ces:[J

.field public blacklist compressibleBytes:[Z

.field blacklist contexts:Ljava/lang/String;

.field public blacklist fastLatinTable:[C

.field blacklist fastLatinTableHeader:[C

.field blacklist jamoCE32s:[I

.field public blacklist nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field blacklist numScripts:I

.field blacklist numericPrimary:J

.field public blacklist rootElements:[J

.field blacklist scriptStarts:[C

.field blacklist scriptsIndex:[C

.field blacklist trie:Landroid/icu/impl/Trie2_32;

.field blacklist unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .registers 4
    .param p1, "nfc"    # Landroid/icu/impl/Normalizer2Impl;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/16 v0, 0x43

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 508
    const-wide/32 v0, 0x12000000

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 42
    iput-object p1, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 43
    return-void
.end method

.method private blacklist addHighScriptRange([SII)I
    .registers 9
    .param p1, "table"    # [S
    .param p2, "index"    # I
    .param p3, "highLimit"    # I

    .line 465
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v1, p2, 0x1

    aget-char v0, v0, v1

    .line 466
    .local v0, "limit":I
    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-le v1, v2, :cond_e

    .line 467
    add-int/lit16 p3, p3, -0x100

    .line 469
    :cond_e
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v1, p2

    .line 470
    .local v1, "start":I
    const v2, 0xff00

    and-int v3, p3, v2

    and-int v4, v0, v2

    and-int/2addr v2, v1

    sub-int/2addr v4, v2

    sub-int/2addr v3, v4

    and-int/lit16 v2, v1, 0xff

    or-int p3, v3, v2

    .line 471
    shr-int/lit8 v2, p3, 0x8

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 472
    return p3
.end method

.method private blacklist addLowScriptRange([SII)I
    .registers 9
    .param p1, "table"    # [S
    .param p2, "index"    # I
    .param p3, "lowStart"    # I

    .line 454
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v0, v0, p2

    .line 455
    .local v0, "start":I
    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-ge v1, v2, :cond_c

    .line 456
    add-int/lit16 p3, p3, 0x100

    .line 458
    :cond_c
    shr-int/lit8 v1, p3, 0x8

    int-to-short v1, v1

    aput-short v1, p1, p2

    .line 459
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v2, p2, 0x1

    aget-char v1, v1, v2

    .line 460
    .local v1, "limit":I
    const v2, 0xff00

    and-int v3, p3, v2

    and-int v4, v1, v2

    and-int/2addr v2, v0

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    and-int/lit16 v2, v1, 0xff

    or-int p3, v3, v2

    .line 461
    return p3
.end method

.method private blacklist getScriptIndex(I)I
    .registers 4
    .param p1, "script"    # I

    .line 242
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 243
    return v0

    .line 244
    :cond_4
    iget v1, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge p1, v1, :cond_d

    .line 245
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v0, v0, p1

    return v0

    .line 246
    :cond_d
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_12

    .line 247
    return v0

    .line 249
    :cond_12
    add-int/lit16 p1, p1, -0x1000

    .line 250
    const/16 v1, 0x8

    if-ge p1, v1, :cond_20

    .line 251
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v1, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0

    .line 253
    :cond_20
    return v0
.end method

.method private blacklist makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V
    .registers 23
    .param p1, "reorder"    # [I
    .param p2, "latinMustMove"    # Z
    .param p3, "ranges"    # Landroid/icu/impl/coll/UVector32;

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    .line 302
    array-length v3, v1

    .line 303
    .local v3, "length":I
    if-eqz v3, :cond_1b9

    const/4 v4, 0x0

    const/16 v5, 0x67

    const/4 v6, 0x1

    if-ne v3, v6, :cond_18

    aget v7, v1, v4

    if-ne v7, v5, :cond_18

    goto/16 :goto_1b9

    .line 308
    :cond_18
    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v7, v7

    sub-int/2addr v7, v6

    new-array v7, v7, [S

    .line 312
    .local v7, "table":[S
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v9, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v9, v9, 0x100e

    add-int/lit16 v9, v9, -0x1000

    aget-char v8, v8, v9

    .line 314
    .local v8, "index":I
    const/16 v9, 0xff

    if-eqz v8, :cond_2e

    .line 315
    aput-short v9, v7, v8

    .line 317
    :cond_2e
    iget-object v10, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v11, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v11, v11, 0x100f

    add-int/lit16 v11, v11, -0x1000

    aget-char v8, v10, v11

    .line 319
    if-eqz v8, :cond_3c

    .line 320
    aput-short v9, v7, v8

    .line 325
    .end local v8    # "index":I
    :cond_3c
    nop

    .line 326
    nop

    .line 327
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v8, v8, v6

    .line 328
    .local v8, "lowStart":I
    nop

    .line 329
    iget-object v10, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iget-object v11, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v11, v11

    sub-int/2addr v11, v6

    aget-char v10, v10, v11

    .line 330
    .local v10, "highLimit":I
    nop

    .line 335
    const/4 v11, 0x0

    .line 336
    .local v11, "specials":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4e
    const/16 v13, 0x8

    if-ge v12, v3, :cond_60

    .line 337
    aget v14, v1, v12

    add-int/lit16 v14, v14, -0x1000

    .line 338
    .local v14, "reorderCode":I
    if-ltz v14, :cond_5d

    if-ge v14, v13, :cond_5d

    .line 339
    shl-int v13, v6, v14

    or-int/2addr v11, v13

    .line 336
    .end local v14    # "reorderCode":I
    :cond_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    .line 344
    .end local v12    # "i":I
    :cond_60
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_61
    if-ge v12, v13, :cond_78

    .line 345
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v15, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v15, v12

    aget-char v14, v14, v15

    .line 346
    .local v14, "index":I
    if-eqz v14, :cond_75

    shl-int v15, v6, v12

    and-int/2addr v15, v11

    if-nez v15, :cond_75

    .line 347
    invoke-direct {v0, v7, v14, v8}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v8

    .line 344
    .end local v14    # "index":I
    :cond_75
    add-int/lit8 v12, v12, 0x1

    goto :goto_61

    .line 353
    .end local v12    # "i":I
    :cond_78
    const/4 v12, 0x0

    .line 354
    .local v12, "skippedReserved":I
    if-nez v11, :cond_90

    aget v4, v1, v4

    const/16 v14, 0x19

    if-ne v4, v14, :cond_90

    if-nez p2, :cond_90

    .line 355
    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v4, v4, v14

    .line 356
    .local v4, "index":I
    nop

    .line 357
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v14, v14, v4

    .line 358
    .local v14, "start":I
    nop

    .line 359
    sub-int v12, v14, v8

    .line 360
    move v8, v14

    .line 364
    .end local v4    # "index":I
    .end local v14    # "start":I
    :cond_90
    const/4 v4, 0x0

    .line 365
    .local v4, "hasReorderToEnd":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_92
    if-ge v14, v3, :cond_133

    .line 366
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    aget v14, v1, v14

    .line 367
    .local v14, "script":I
    move/from16 v16, v13

    const-string v13, "setReorderCodes(): duplicate or equivalent script "

    const-string v9, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    move/from16 v17, v6

    const/4 v6, -0x1

    if-ne v14, v5, :cond_ee

    .line 369
    const/4 v4, 0x1

    .line 370
    :goto_a4
    if-ge v15, v3, :cond_eb

    .line 371
    add-int/lit8 v3, v3, -0x1

    aget v14, v1, v3

    .line 372
    if-eq v14, v5, :cond_e3

    .line 376
    if-eq v14, v6, :cond_dd

    .line 380
    invoke-direct {v0, v14}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v5

    .line 381
    .local v5, "index":I
    if-nez v5, :cond_b7

    const/16 v5, 0x67

    goto :goto_a4

    .line 382
    :cond_b7
    aget-short v18, v7, v5

    if-nez v18, :cond_c2

    .line 387
    invoke-direct {v0, v7, v5, v10}, Landroid/icu/impl/coll/CollationData;->addHighScriptRange([SII)I

    move-result v10

    .line 388
    .end local v5    # "index":I
    const/16 v5, 0x67

    goto :goto_a4

    .line 383
    .restart local v5    # "index":I
    :cond_c2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 385
    invoke-static {v14}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    .end local v5    # "index":I
    :cond_dd
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_e3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "setReorderCodes(): duplicate UScript.UNKNOWN"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    :cond_eb
    move v5, v4

    move v4, v3

    goto :goto_139

    .line 391
    :cond_ee
    if-eq v14, v6, :cond_12d

    .line 397
    invoke-direct {v0, v14}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v5

    .line 398
    .restart local v5    # "index":I
    if-nez v5, :cond_100

    move v14, v15

    move/from16 v13, v16

    move/from16 v6, v17

    const/16 v5, 0x67

    const/16 v9, 0xff

    goto :goto_92

    .line 399
    :cond_100
    aget-short v6, v7, v5

    if-nez v6, :cond_112

    .line 404
    invoke-direct {v0, v7, v5, v8}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v8

    .line 405
    .end local v5    # "index":I
    .end local v14    # "script":I
    move v14, v15

    move/from16 v13, v16

    move/from16 v6, v17

    const/16 v5, 0x67

    const/16 v9, 0xff

    goto :goto_92

    .line 400
    .restart local v5    # "index":I
    .restart local v14    # "script":I
    :cond_112
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 402
    invoke-static {v14}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 394
    .end local v5    # "index":I
    :cond_12d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 365
    .end local v15    # "i":I
    .local v14, "i":I
    :cond_133
    move/from16 v17, v6

    move/from16 v16, v13

    move v5, v4

    move v4, v3

    .line 408
    .end local v3    # "length":I
    .end local v14    # "i":I
    .local v4, "length":I
    .local v5, "hasReorderToEnd":Z
    :goto_139
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_13a
    iget-object v6, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_156

    .line 409
    aget-short v6, v7, v3

    .line 410
    .local v6, "leadByte":I
    if-eqz v6, :cond_146

    goto :goto_153

    .line 411
    :cond_146
    iget-object v9, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v9, v9, v3

    .line 412
    .local v9, "start":I
    if-nez v5, :cond_14f

    if-le v9, v8, :cond_14f

    .line 414
    move v8, v9

    .line 416
    :cond_14f
    invoke-direct {v0, v7, v3, v8}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v8

    .line 408
    .end local v6    # "leadByte":I
    .end local v9    # "start":I
    :goto_153
    add-int/lit8 v3, v3, 0x1

    goto :goto_13a

    .line 418
    .end local v3    # "i":I
    :cond_156
    if-le v8, v10, :cond_16e

    .line 419
    const v3, 0xff00

    and-int/2addr v3, v12

    sub-int v3, v8, v3

    if-gt v3, v10, :cond_166

    .line 421
    move/from16 v3, v17

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    .line 422
    return-void

    .line 425
    :cond_166
    new-instance v3, Landroid/icu/util/ICUException;

    const-string v6, "setReorderCodes(): reordering too many partial-primary-lead-byte scripts"

    invoke-direct {v3, v6}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_16e
    const/4 v3, 0x0

    .line 433
    .local v3, "offset":I
    const/4 v6, 0x1

    .line 434
    .local v6, "i":I
    :goto_170
    move v9, v3

    .line 435
    .local v9, "nextOffset":I
    :goto_171
    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v13, v13

    const/16 v17, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_190

    .line 436
    aget-short v13, v7, v6

    .line 437
    .local v13, "newLeadByte":I
    const/16 v14, 0xff

    if-ne v13, v14, :cond_181

    goto :goto_18c

    .line 440
    :cond_181
    iget-object v15, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v15, v15, v6

    shr-int/lit8 v15, v15, 0x8

    sub-int v9, v13, v15

    .line 441
    if-eq v9, v3, :cond_18c

    goto :goto_192

    .line 443
    :cond_18c
    :goto_18c
    nop

    .end local v13    # "newLeadByte":I
    add-int/lit8 v6, v6, 0x1

    .line 444
    goto :goto_171

    .line 435
    :cond_190
    const/16 v14, 0xff

    .line 445
    :goto_192
    if-nez v3, :cond_19d

    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v13, v13

    const/16 v17, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_1ab

    .line 446
    :cond_19d
    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v13, v13, v6

    shl-int/lit8 v13, v13, 0x10

    const v15, 0xffff

    and-int/2addr v15, v3

    or-int/2addr v13, v15

    invoke-virtual {v2, v13}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 448
    :cond_1ab
    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v13, v13

    const/16 v17, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v6, v13, :cond_1b5

    .line 451
    .end local v6    # "i":I
    .end local v9    # "nextOffset":I
    return-void

    .line 449
    .restart local v6    # "i":I
    .restart local v9    # "nextOffset":I
    :cond_1b5
    move v3, v9

    .line 433
    .end local v9    # "nextOffset":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_170

    .line 304
    .end local v4    # "length":I
    .end local v5    # "hasReorderToEnd":Z
    .end local v6    # "i":I
    .end local v7    # "table":[S
    .end local v8    # "lowStart":I
    .end local v10    # "highLimit":I
    .end local v11    # "specials":I
    .end local v12    # "skippedReserved":I
    .local v3, "length":I
    :cond_1b9
    :goto_1b9
    return-void
.end method

.method private static blacklist scriptCodeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "script"    # I

    .line 477
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_9

    .line 478
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_20
    return-object v0
.end method


# virtual methods
.method public blacklist getCE32(I)I
    .registers 3
    .param p1, "c"    # I

    .line 46
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v0

    return v0
.end method

.method blacklist getCE32FromContexts(I)I
    .registers 5
    .param p1, "index"    # I

    .line 75
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method blacklist getCE32FromSupplementary(I)I
    .registers 3
    .param p1, "c"    # I

    .line 50
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v0

    return v0
.end method

.method blacklist getCEFromOffsetCE32(II)J
    .registers 7
    .param p1, "c"    # I
    .param p2, "ce32"    # I

    .line 112
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v1

    aget-wide v0, v0, v1

    .line 113
    .local v0, "dataCE":J
    invoke-static {p1, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public blacklist getEquivalentScripts(I)[I
    .registers 7
    .param p1, "script"    # I

    .line 259
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    .line 260
    .local v0, "index":I
    if-nez v0, :cond_9

    sget-object v1, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-object v1

    .line 261
    :cond_9
    const/16 v1, 0x1000

    if-lt p1, v1, :cond_12

    .line 263
    filled-new-array {p1}, [I

    move-result-object v1

    return-object v1

    .line 266
    :cond_12
    const/4 v1, 0x0

    .line 267
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget v3, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v2, v3, :cond_23

    .line 268
    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v3, v3, v2

    if-ne v3, v0, :cond_20

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 272
    .end local v2    # "i":I
    :cond_23
    new-array v2, v1, [I

    .line 273
    .local v2, "dest":[I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    .line 274
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 275
    return-object v2

    .line 277
    :cond_2c
    const/4 v1, 0x0

    .line 278
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget v4, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v3, v4, :cond_40

    .line 279
    iget-object v4, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v4, v4, v3

    if-ne v4, v0, :cond_3d

    .line 280
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .local v4, "length":I
    aput v3, v2, v1

    move v1, v4

    .line 278
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 283
    .end local v3    # "i":I
    :cond_40
    return-object v2
.end method

.method blacklist getFCD16(I)I
    .registers 3
    .param p1, "c"    # I

    .line 188
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    return v0
.end method

.method blacklist getFinalCE32(I)I
    .registers 3
    .param p1, "ce32"    # I

    .line 102
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p1

    .line 105
    :cond_a
    return p1
.end method

.method blacklist getFirstPrimaryForGroup(I)J
    .registers 6
    .param p1, "script"    # I

    .line 198
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    .line 199
    .local v0, "index":I
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_11

    :cond_9
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v1, v0

    int-to-long v1, v1

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    :goto_11
    return-wide v1
.end method

.method public blacklist getGroupForPrimary(J)I
    .registers 8
    .param p1, "p"    # J

    .line 222
    const/16 v0, 0x10

    shr-long/2addr p1, v0

    .line 223
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    const/4 v2, -0x1

    if-ltz v0, :cond_4f

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-char v0, v0, v3

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1c

    goto :goto_4f

    .line 226
    :cond_1c
    const/4 v0, 0x1

    .line 227
    .local v0, "index":I
    :goto_1d
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v1, v1, v3

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 228
    :cond_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget v3, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v1, v3, :cond_3a

    .line 229
    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v3, v3, v1

    if-ne v3, v0, :cond_37

    .line 230
    return v1

    .line 228
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 233
    .end local v1    # "i":I
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3b
    const/16 v3, 0x8

    if-ge v1, v3, :cond_4e

    .line 234
    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v4, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    if-ne v3, v0, :cond_4b

    .line 235
    add-int/lit16 v2, v1, 0x1000

    return v2

    .line 233
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 238
    .end local v1    # "i":I
    :cond_4e
    return v2

    .line 224
    .end local v0    # "index":I
    :cond_4f
    :goto_4f
    return v2
.end method

.method blacklist getIndirectCE32(I)I
    .registers 5
    .param p1, "ce32"    # I

    .line 83
    nop

    .line 84
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    .line 85
    .local v0, "tag":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 87
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    aget p1, v1, v2

    goto :goto_21

    .line 88
    :cond_12
    const/16 v1, 0xd

    if-ne v0, v1, :cond_18

    .line 89
    const/4 p1, -0x1

    goto :goto_21

    .line 90
    :cond_18
    const/16 v1, 0xb

    if-ne v0, v1, :cond_21

    .line 92
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v2, 0x0

    aget p1, v1, v2

    .line 94
    :cond_21
    :goto_21
    return p1
.end method

.method public blacklist getLastPrimaryForGroup(I)J
    .registers 9
    .param p1, "script"    # I

    .line 209
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    .line 210
    .local v0, "index":I
    if-nez v0, :cond_9

    .line 211
    const-wide/16 v1, 0x0

    return-wide v1

    .line 213
    :cond_9
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v1, v1, v2

    int-to-long v1, v1

    .line 214
    .local v1, "limit":J
    const/16 v3, 0x10

    shl-long v3, v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    return-wide v3
.end method

.method blacklist getSingleCE(I)J
    .registers 8
    .param p1, "c"    # I

    .line 122
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    .line 123
    .local v0, "ce32":I
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_11

    .line 124
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 125
    .local v1, "d":Landroid/icu/impl/coll/CollationData;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    goto :goto_12

    .line 127
    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_11
    move-object v1, p0

    .line 129
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    :goto_12
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 130
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    packed-switch v2, :pswitch_data_ca

    goto/16 :goto_c2

    .line 178
    :pswitch_24
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v2

    return-wide v2

    .line 176
    :pswitch_29
    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v2

    return-wide v2

    .line 171
    :pswitch_2e
    nop

    .line 173
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 174
    goto/16 :goto_c2

    .line 168
    :pswitch_36
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget v0, v2, v3

    .line 169
    goto/16 :goto_c2

    .line 158
    :pswitch_40
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v2

    if-ne v2, v3, :cond_4f

    .line 159
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget-wide v2, v2, v3

    return-wide v2

    .line 161
    :cond_4f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 161
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :pswitch_65
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v2

    if-ne v2, v3, :cond_74

    .line 150
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget v0, v2, v3

    .line 151
    goto :goto_c2

    .line 153
    :cond_74
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 153
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :pswitch_8a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 137
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :pswitch_a0
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v2

    return-wide v2

    .line 145
    :pswitch_a5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v2

    return-wide v2

    .line 142
    :pswitch_aa
    new-instance v2, Ljava/lang/AssertionError;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 142
    const-string v4, "unexpected CE32 tag for U+%04X (CE32 0x%08x)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 178
    :goto_c2
    goto/16 :goto_12

    .line 181
    :cond_c4
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v2

    return-wide v2

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
        :pswitch_aa
        :pswitch_8a
        :pswitch_65
        :pswitch_40
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_36
        :pswitch_2e
        :pswitch_8a
        :pswitch_8a
        :pswitch_29
        :pswitch_24
    .end packed-switch
.end method

.method public blacklist isCompressibleLeadByte(I)Z
    .registers 3
    .param p1, "b"    # I

    .line 63
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public blacklist isCompressiblePrimary(J)Z
    .registers 4
    .param p1, "p"    # J

    .line 67
    long-to-int v0, p1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method blacklist isDigit(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 54
    const/16 v0, 0x660

    if-ge p1, v0, :cond_10

    const/16 v0, 0x39

    if-gt p1, v0, :cond_e

    const/16 v0, 0x30

    if-gt v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_1a

    :cond_e
    const/4 v0, 0x0

    goto :goto_1a

    .line 55
    :cond_10
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    .line 54
    :goto_1a
    return v0
.end method

.method public blacklist isUnsafeBackward(IZ)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "numeric"    # Z

    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method blacklist makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V
    .registers 4
    .param p1, "reorder"    # [I
    .param p2, "ranges"    # Landroid/icu/impl/coll/UVector32;

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    .line 298
    return-void
.end method
