.class public final Landroid/icu/impl/coll/CollationData;
.super Ljava/lang/Object;
.source "CollationData.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final EMPTY_INT_ARRAY:[I

.field static final JAMO_CE32S_LENGTH:I = 0x43

.field static final MAX_NUM_SPECIAL_REORDER_CODES:I = 0x8

.field static final REORDER_RESERVED_AFTER_LATIN:I = 0x100f

.field static final REORDER_RESERVED_BEFORE_LATIN:I = 0x100e


# instance fields
.field public base:Landroid/icu/impl/coll/CollationData;

.field ce32s:[I

.field ces:[J

.field public compressibleBytes:[Z

.field contexts:Ljava/lang/String;

.field public fastLatinTable:[C

.field fastLatinTableHeader:[C

.field jamoCE32s:[I

.field public nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field numScripts:I

.field numericPrimary:J

.field public rootElements:[J

.field scriptStarts:[C

.field scriptsIndex:[C

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/icu/impl/coll/CollationData;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@c
    .line 477
    new-array v0, v1, [I

    #@e
    sput-object v0, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    #@10
    .line 28
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 2
    .param p1, "nfc"    # Landroid/icu/impl/Normalizer2Impl;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 501
    const/16 v0, 0x43

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@9
    .line 504
    const-wide/32 v0, 0x12000000

    #@c
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@e
    .line 38
    iput-object p1, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@10
    .line 37
    return-void
.end method

.method private addHighScriptRange([SII)I
    .locals 5
    .param p1, "table"    # [S
    .param p2, "index"    # I
    .param p3, "highLimit"    # I

    #@0
    .prologue
    const v4, 0xff00

    #@3
    .line 461
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@5
    add-int/lit8 v3, p2, 0x1

    #@7
    aget-char v0, v2, v3

    #@9
    .line 462
    .local v0, "limit":I
    and-int/lit16 v2, v0, 0xff

    #@b
    and-int/lit16 v3, p3, 0xff

    #@d
    if-le v2, v3, :cond_0

    #@f
    .line 463
    add-int/lit16 p3, p3, -0x100

    #@11
    .line 465
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@13
    aget-char v1, v2, p2

    #@15
    .line 466
    .local v1, "start":I
    and-int v2, p3, v4

    #@17
    and-int v3, v0, v4

    #@19
    and-int/2addr v4, v1

    #@1a
    sub-int/2addr v3, v4

    #@1b
    sub-int/2addr v2, v3

    #@1c
    and-int/lit16 v3, v1, 0xff

    #@1e
    or-int p3, v2, v3

    #@20
    .line 467
    shr-int/lit8 v2, p3, 0x8

    #@22
    int-to-short v2, v2

    #@23
    aput-short v2, p1, p2

    #@25
    .line 468
    return p3
.end method

.method private addLowScriptRange([SII)I
    .locals 5
    .param p1, "table"    # [S
    .param p2, "index"    # I
    .param p3, "lowStart"    # I

    #@0
    .prologue
    const v4, 0xff00

    #@3
    .line 450
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@5
    aget-char v1, v2, p2

    #@7
    .line 451
    .local v1, "start":I
    and-int/lit16 v2, v1, 0xff

    #@9
    and-int/lit16 v3, p3, 0xff

    #@b
    if-ge v2, v3, :cond_0

    #@d
    .line 452
    add-int/lit16 p3, p3, 0x100

    #@f
    .line 454
    :cond_0
    shr-int/lit8 v2, p3, 0x8

    #@11
    int-to-short v2, v2

    #@12
    aput-short v2, p1, p2

    #@14
    .line 455
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@16
    add-int/lit8 v3, p2, 0x1

    #@18
    aget-char v0, v2, v3

    #@1a
    .line 456
    .local v0, "limit":I
    and-int v2, p3, v4

    #@1c
    and-int v3, v0, v4

    #@1e
    and-int/2addr v4, v1

    #@1f
    sub-int/2addr v3, v4

    #@20
    add-int/2addr v2, v3

    #@21
    and-int/lit16 v3, v0, 0xff

    #@23
    or-int p3, v2, v3

    #@25
    .line 457
    return p3
.end method

.method private getScriptIndex(I)I
    .locals 2
    .param p1, "script"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 238
    if-gez p1, :cond_0

    #@3
    .line 239
    return v1

    #@4
    .line 240
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 241
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@a
    aget-char v0, v0, p1

    #@c
    return v0

    #@d
    .line 242
    :cond_1
    const/16 v0, 0x1000

    #@f
    if-ge p1, v0, :cond_2

    #@11
    .line 243
    return v1

    #@12
    .line 245
    :cond_2
    add-int/lit16 p1, p1, -0x1000

    #@14
    .line 246
    const/16 v0, 0x8

    #@16
    if-ge p1, v0, :cond_3

    #@18
    .line 247
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@1a
    iget v1, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@1c
    add-int/2addr v1, p1

    #@1d
    aget-char v0, v0, v1

    #@1f
    return v0

    #@20
    .line 249
    :cond_3
    return v1
.end method

.method private makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V
    .locals 24
    .param p1, "reorder"    # [I
    .param p2, "latinMustMove"    # Z
    .param p3, "ranges"    # Landroid/icu/impl/coll/UVector32;

    #@0
    .prologue
    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    #@3
    .line 298
    move-object/from16 v0, p1

    #@5
    array-length v10, v0

    #@6
    .line 299
    .local v10, "length":I
    if-eqz v10, :cond_0

    #@8
    const/16 v21, 0x1

    #@a
    move/from16 v0, v21

    #@c
    if-ne v10, v0, :cond_1

    #@e
    const/16 v21, 0x0

    #@10
    aget v21, p1, v21

    #@12
    const/16 v22, 0x67

    #@14
    move/from16 v0, v21

    #@16
    move/from16 v1, v22

    #@18
    if-ne v0, v1, :cond_1

    #@1a
    .line 300
    :cond_0
    return-void

    #@1b
    .line 304
    :cond_1
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@1f
    move-object/from16 v21, v0

    #@21
    move-object/from16 v0, v21

    #@23
    array-length v0, v0

    #@24
    move/from16 v21, v0

    #@26
    add-int/lit8 v21, v21, -0x1

    #@28
    move/from16 v0, v21

    #@2a
    new-array v0, v0, [S

    #@2c
    move-object/from16 v20, v0

    #@2e
    .line 308
    .local v20, "table":[S
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@32
    move-object/from16 v21, v0

    #@34
    .line 309
    move-object/from16 v0, p0

    #@36
    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@38
    move/from16 v22, v0

    #@3a
    move/from16 v0, v22

    #@3c
    add-int/lit16 v0, v0, 0x100e

    #@3e
    move/from16 v22, v0

    #@40
    move/from16 v0, v22

    #@42
    add-int/lit16 v0, v0, -0x1000

    #@44
    move/from16 v22, v0

    #@46
    .line 308
    aget-char v8, v21, v22

    #@48
    .line 310
    .local v8, "index":I
    if-eqz v8, :cond_2

    #@4a
    .line 311
    const/16 v21, 0xff

    #@4c
    aput-short v21, v20, v8

    #@4e
    .line 313
    :cond_2
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@52
    move-object/from16 v21, v0

    #@54
    .line 314
    move-object/from16 v0, p0

    #@56
    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@58
    move/from16 v22, v0

    #@5a
    move/from16 v0, v22

    #@5c
    add-int/lit16 v0, v0, 0x100f

    #@5e
    move/from16 v22, v0

    #@60
    move/from16 v0, v22

    #@62
    add-int/lit16 v0, v0, -0x1000

    #@64
    move/from16 v22, v0

    #@66
    .line 313
    aget-char v8, v21, v22

    #@68
    .line 315
    if-eqz v8, :cond_3

    #@6a
    .line 316
    const/16 v21, 0xff

    #@6c
    aput-short v21, v20, v8

    #@6e
    .line 321
    :cond_3
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@70
    if-nez v21, :cond_5

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@76
    move-object/from16 v21, v0

    #@78
    move-object/from16 v0, v21

    #@7a
    array-length v0, v0

    #@7b
    move/from16 v21, v0

    #@7d
    const/16 v22, 0x2

    #@7f
    move/from16 v0, v21

    #@81
    move/from16 v1, v22

    #@83
    if-lt v0, v1, :cond_4

    #@85
    const/16 v21, 0x1

    #@87
    :goto_0
    if-nez v21, :cond_5

    #@89
    new-instance v21, Ljava/lang/AssertionError;

    #@8b
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@8e
    throw v21

    #@8f
    :cond_4
    const/16 v21, 0x0

    #@91
    goto :goto_0

    #@92
    .line 322
    :cond_5
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@94
    if-nez v21, :cond_7

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@9a
    move-object/from16 v21, v0

    #@9c
    const/16 v22, 0x0

    #@9e
    aget-char v21, v21, v22

    #@a0
    if-nez v21, :cond_6

    #@a2
    const/16 v21, 0x1

    #@a4
    :goto_1
    if-nez v21, :cond_7

    #@a6
    new-instance v21, Ljava/lang/AssertionError;

    #@a8
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@ab
    throw v21

    #@ac
    :cond_6
    const/16 v21, 0x0

    #@ae
    goto :goto_1

    #@af
    .line 323
    :cond_7
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@b3
    move-object/from16 v21, v0

    #@b5
    const/16 v22, 0x1

    #@b7
    aget-char v11, v21, v22

    #@b9
    .line 324
    .local v11, "lowStart":I
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@bb
    if-nez v21, :cond_9

    #@bd
    const/16 v21, 0x300

    #@bf
    move/from16 v0, v21

    #@c1
    if-ne v11, v0, :cond_8

    #@c3
    const/16 v21, 0x1

    #@c5
    :goto_2
    if-nez v21, :cond_9

    #@c7
    new-instance v21, Ljava/lang/AssertionError;

    #@c9
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v21

    #@cd
    :cond_8
    const/16 v21, 0x0

    #@cf
    goto :goto_2

    #@d0
    .line 325
    :cond_9
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@d4
    move-object/from16 v21, v0

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@da
    move-object/from16 v22, v0

    #@dc
    move-object/from16 v0, v22

    #@de
    array-length v0, v0

    #@df
    move/from16 v22, v0

    #@e1
    add-int/lit8 v22, v22, -0x1

    #@e3
    aget-char v5, v21, v22

    #@e5
    .line 326
    .local v5, "highLimit":I
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@e7
    if-nez v21, :cond_b

    #@e9
    const v21, 0xff00

    #@ec
    move/from16 v0, v21

    #@ee
    if-ne v5, v0, :cond_a

    #@f0
    const/16 v21, 0x1

    #@f2
    :goto_3
    if-nez v21, :cond_b

    #@f4
    new-instance v21, Ljava/lang/AssertionError;

    #@f6
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@f9
    throw v21

    #@fa
    :cond_a
    const/16 v21, 0x0

    #@fc
    goto :goto_3

    #@fd
    .line 331
    :cond_b
    const/16 v18, 0x0

    #@ff
    .line 332
    .local v18, "specials":I
    const/4 v6, 0x0

    #@100
    .local v6, "i":I
    :goto_4
    if-ge v6, v10, :cond_d

    #@102
    .line 333
    aget v21, p1, v6

    #@104
    move/from16 v0, v21

    #@106
    add-int/lit16 v15, v0, -0x1000

    #@108
    .line 334
    .local v15, "reorderCode":I
    if-ltz v15, :cond_c

    #@10a
    const/16 v21, 0x8

    #@10c
    move/from16 v0, v21

    #@10e
    if-ge v15, v0, :cond_c

    #@110
    .line 335
    const/16 v21, 0x1

    #@112
    shl-int v21, v21, v15

    #@114
    or-int v18, v18, v21

    #@116
    .line 332
    :cond_c
    add-int/lit8 v6, v6, 0x1

    #@118
    goto :goto_4

    #@119
    .line 340
    .end local v15    # "reorderCode":I
    :cond_d
    const/4 v6, 0x0

    #@11a
    :goto_5
    const/16 v21, 0x8

    #@11c
    move/from16 v0, v21

    #@11e
    if-ge v6, v0, :cond_f

    #@120
    .line 341
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@124
    move-object/from16 v21, v0

    #@126
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@12a
    move/from16 v22, v0

    #@12c
    add-int v22, v22, v6

    #@12e
    aget-char v8, v21, v22

    #@130
    .line 342
    if-eqz v8, :cond_e

    #@132
    const/16 v21, 0x1

    #@134
    shl-int v21, v21, v6

    #@136
    and-int v21, v21, v18

    #@138
    if-nez v21, :cond_e

    #@13a
    .line 343
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, v20

    #@13e
    invoke-direct {v0, v1, v8, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    #@141
    move-result v11

    #@142
    .line 340
    :cond_e
    add-int/lit8 v6, v6, 0x1

    #@144
    goto :goto_5

    #@145
    .line 349
    :cond_f
    const/16 v17, 0x0

    #@147
    .line 350
    .local v17, "skippedReserved":I
    if-nez v18, :cond_10

    #@149
    const/16 v21, 0x0

    #@14b
    aget v21, p1, v21

    #@14d
    const/16 v22, 0x19

    #@14f
    move/from16 v0, v21

    #@151
    move/from16 v1, v22

    #@153
    if-ne v0, v1, :cond_10

    #@155
    if-eqz p2, :cond_12

    #@157
    .line 360
    :cond_10
    :goto_6
    const/4 v4, 0x0

    #@158
    .line 361
    .local v4, "hasReorderToEnd":Z
    const/4 v6, 0x0

    #@159
    move v7, v6

    #@15a
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_7
    if-ge v7, v10, :cond_1e

    #@15c
    .line 362
    add-int/lit8 v6, v7, 0x1

    #@15e
    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget v16, p1, v7

    #@160
    .line 363
    .local v16, "script":I
    const/16 v21, 0x67

    #@162
    move/from16 v0, v16

    #@164
    move/from16 v1, v21

    #@166
    if-ne v0, v1, :cond_1a

    #@168
    .line 365
    const/4 v4, 0x1

    #@169
    .line 366
    :cond_11
    :goto_8
    if-ge v6, v10, :cond_1f

    #@16b
    .line 367
    add-int/lit8 v10, v10, -0x1

    #@16d
    aget v16, p1, v10

    #@16f
    .line 368
    const/16 v21, 0x67

    #@171
    move/from16 v0, v16

    #@173
    move/from16 v1, v21

    #@175
    if-ne v0, v1, :cond_17

    #@177
    .line 369
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@179
    .line 370
    const-string/jumbo v22, "setReorderCodes(): duplicate UScript.UNKNOWN"

    #@17c
    .line 369
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17f
    throw v21

    #@180
    .line 351
    .end local v4    # "hasReorderToEnd":Z
    .end local v16    # "script":I
    :cond_12
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@184
    move-object/from16 v21, v0

    #@186
    const/16 v22, 0x19

    #@188
    aget-char v8, v21, v22

    #@18a
    .line 352
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@18c
    if-nez v21, :cond_14

    #@18e
    if-eqz v8, :cond_13

    #@190
    const/16 v21, 0x1

    #@192
    :goto_9
    if-nez v21, :cond_14

    #@194
    new-instance v21, Ljava/lang/AssertionError;

    #@196
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@199
    throw v21

    #@19a
    :cond_13
    const/16 v21, 0x0

    #@19c
    goto :goto_9

    #@19d
    .line 353
    :cond_14
    move-object/from16 v0, p0

    #@19f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@1a1
    move-object/from16 v21, v0

    #@1a3
    aget-char v19, v21, v8

    #@1a5
    .line 354
    .local v19, "start":I
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@1a7
    if-nez v21, :cond_16

    #@1a9
    move/from16 v0, v19

    #@1ab
    if-gt v11, v0, :cond_15

    #@1ad
    const/16 v21, 0x1

    #@1af
    :goto_a
    if-nez v21, :cond_16

    #@1b1
    new-instance v21, Ljava/lang/AssertionError;

    #@1b3
    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    #@1b6
    throw v21

    #@1b7
    :cond_15
    const/16 v21, 0x0

    #@1b9
    goto :goto_a

    #@1ba
    .line 355
    :cond_16
    sub-int v17, v19, v11

    #@1bc
    .line 356
    move/from16 v11, v19

    #@1be
    goto :goto_6

    #@1bf
    .line 372
    .end local v19    # "start":I
    .restart local v4    # "hasReorderToEnd":Z
    .restart local v16    # "script":I
    :cond_17
    const/16 v21, -0x1

    #@1c1
    move/from16 v0, v16

    #@1c3
    move/from16 v1, v21

    #@1c5
    if-ne v0, v1, :cond_18

    #@1c7
    .line 373
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@1c9
    .line 374
    const-string/jumbo v22, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    #@1cc
    .line 373
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cf
    throw v21

    #@1d0
    .line 376
    :cond_18
    move-object/from16 v0, p0

    #@1d2
    move/from16 v1, v16

    #@1d4
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    #@1d7
    move-result v8

    #@1d8
    .line 377
    if-eqz v8, :cond_11

    #@1da
    .line 378
    aget-short v21, v20, v8

    #@1dc
    if-eqz v21, :cond_19

    #@1de
    .line 379
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@1e0
    .line 380
    new-instance v22, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v23, "setReorderCodes(): duplicate or equivalent script "

    #@1e8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v22

    #@1ec
    .line 381
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    #@1ef
    move-result-object v23

    #@1f0
    .line 380
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v22

    #@1f4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f7
    move-result-object v22

    #@1f8
    .line 379
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1fb
    throw v21

    #@1fc
    .line 383
    :cond_19
    move-object/from16 v0, p0

    #@1fe
    move-object/from16 v1, v20

    #@200
    invoke-direct {v0, v1, v8, v5}, Landroid/icu/impl/coll/CollationData;->addHighScriptRange([SII)I

    #@203
    move-result v5

    #@204
    goto/16 :goto_8

    #@206
    .line 387
    :cond_1a
    const/16 v21, -0x1

    #@208
    move/from16 v0, v16

    #@20a
    move/from16 v1, v21

    #@20c
    if-ne v0, v1, :cond_1b

    #@20e
    .line 390
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@210
    .line 391
    const-string/jumbo v22, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    #@213
    .line 390
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@216
    throw v21

    #@217
    .line 393
    :cond_1b
    move-object/from16 v0, p0

    #@219
    move/from16 v1, v16

    #@21b
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    #@21e
    move-result v8

    #@21f
    .line 394
    if-nez v8, :cond_1c

    #@221
    :goto_b
    move v7, v6

    #@222
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_7

    #@224
    .line 395
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_1c
    aget-short v21, v20, v8

    #@226
    if-eqz v21, :cond_1d

    #@228
    .line 396
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@22a
    .line 397
    new-instance v22, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v23, "setReorderCodes(): duplicate or equivalent script "

    #@232
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v22

    #@236
    .line 398
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    #@239
    move-result-object v23

    #@23a
    .line 397
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v22

    #@23e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v22

    #@242
    .line 396
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@245
    throw v21

    #@246
    .line 400
    :cond_1d
    move-object/from16 v0, p0

    #@248
    move-object/from16 v1, v20

    #@24a
    invoke-direct {v0, v1, v8, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    #@24d
    move-result v11

    #@24e
    goto :goto_b

    #@24f
    .end local v6    # "i":I
    .end local v16    # "script":I
    .restart local v7    # "i":I
    :cond_1e
    move v6, v7

    #@250
    .line 404
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_1f
    const/4 v6, 0x1

    #@251
    :goto_c
    move-object/from16 v0, p0

    #@253
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@255
    move-object/from16 v21, v0

    #@257
    move-object/from16 v0, v21

    #@259
    array-length v0, v0

    #@25a
    move/from16 v21, v0

    #@25c
    add-int/lit8 v21, v21, -0x1

    #@25e
    move/from16 v0, v21

    #@260
    if-ge v6, v0, :cond_22

    #@262
    .line 405
    aget-short v9, v20, v6

    #@264
    .line 406
    .local v9, "leadByte":I
    if-eqz v9, :cond_20

    #@266
    .line 404
    :goto_d
    add-int/lit8 v6, v6, 0x1

    #@268
    goto :goto_c

    #@269
    .line 407
    :cond_20
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@26d
    move-object/from16 v21, v0

    #@26f
    aget-char v19, v21, v6

    #@271
    .line 408
    .restart local v19    # "start":I
    if-nez v4, :cond_21

    #@273
    move/from16 v0, v19

    #@275
    if-le v0, v11, :cond_21

    #@277
    .line 410
    move/from16 v11, v19

    #@279
    .line 412
    :cond_21
    move-object/from16 v0, p0

    #@27b
    move-object/from16 v1, v20

    #@27d
    invoke-direct {v0, v1, v6, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    #@280
    move-result v11

    #@281
    goto :goto_d

    #@282
    .line 414
    .end local v9    # "leadByte":I
    .end local v19    # "start":I
    :cond_22
    if-le v11, v5, :cond_24

    #@284
    .line 415
    const v21, 0xff00

    #@287
    and-int v21, v21, v17

    #@289
    sub-int v21, v11, v21

    #@28b
    move/from16 v0, v21

    #@28d
    if-gt v0, v5, :cond_23

    #@28f
    .line 417
    const/16 v21, 0x1

    #@291
    move-object/from16 v0, p0

    #@293
    move-object/from16 v1, p1

    #@295
    move/from16 v2, v21

    #@297
    move-object/from16 v3, p3

    #@299
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    #@29c
    .line 418
    return-void

    #@29d
    .line 421
    :cond_23
    new-instance v21, Landroid/icu/util/ICUException;

    #@29f
    .line 422
    const-string/jumbo v22, "setReorderCodes(): reordering too many partial-primary-lead-byte scripts"

    #@2a2
    .line 421
    invoke-direct/range {v21 .. v22}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@2a5
    throw v21

    #@2a6
    .line 428
    :cond_24
    const/4 v14, 0x0

    #@2a7
    .line 429
    .local v14, "offset":I
    const/4 v6, 0x1

    #@2a8
    .line 430
    :goto_e
    move v13, v14

    #@2a9
    .line 431
    .local v13, "nextOffset":I
    :goto_f
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@2ad
    move-object/from16 v21, v0

    #@2af
    move-object/from16 v0, v21

    #@2b1
    array-length v0, v0

    #@2b2
    move/from16 v21, v0

    #@2b4
    add-int/lit8 v21, v21, -0x1

    #@2b6
    move/from16 v0, v21

    #@2b8
    if-ge v6, v0, :cond_27

    #@2ba
    .line 432
    aget-short v12, v20, v6

    #@2bc
    .line 433
    .local v12, "newLeadByte":I
    const/16 v21, 0xff

    #@2be
    move/from16 v0, v21

    #@2c0
    if-ne v12, v0, :cond_26

    #@2c2
    .line 439
    :cond_25
    add-int/lit8 v6, v6, 0x1

    #@2c4
    goto :goto_f

    #@2c5
    .line 436
    :cond_26
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@2c9
    move-object/from16 v21, v0

    #@2cb
    aget-char v21, v21, v6

    #@2cd
    shr-int/lit8 v21, v21, 0x8

    #@2cf
    sub-int v13, v12, v21

    #@2d1
    .line 437
    if-eq v13, v14, :cond_25

    #@2d3
    .line 441
    .end local v12    # "newLeadByte":I
    :cond_27
    if-nez v14, :cond_28

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@2d9
    move-object/from16 v21, v0

    #@2db
    move-object/from16 v0, v21

    #@2dd
    array-length v0, v0

    #@2de
    move/from16 v21, v0

    #@2e0
    add-int/lit8 v21, v21, -0x1

    #@2e2
    move/from16 v0, v21

    #@2e4
    if-ge v6, v0, :cond_29

    #@2e6
    .line 442
    :cond_28
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@2ea
    move-object/from16 v21, v0

    #@2ec
    aget-char v21, v21, v6

    #@2ee
    shl-int/lit8 v21, v21, 0x10

    #@2f0
    const v22, 0xffff

    #@2f3
    and-int v22, v22, v14

    #@2f5
    or-int v21, v21, v22

    #@2f7
    move-object/from16 v0, p3

    #@2f9
    move/from16 v1, v21

    #@2fb
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@2fe
    .line 444
    :cond_29
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@302
    move-object/from16 v21, v0

    #@304
    move-object/from16 v0, v21

    #@306
    array-length v0, v0

    #@307
    move/from16 v21, v0

    #@309
    add-int/lit8 v21, v21, -0x1

    #@30b
    move/from16 v0, v21

    #@30d
    if-ne v6, v0, :cond_2a

    #@30f
    .line 296
    return-void

    #@310
    .line 445
    :cond_2a
    move v14, v13

    #@311
    .line 429
    add-int/lit8 v6, v6, 0x1

    #@313
    goto :goto_e
.end method

.method private static scriptCodeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "script"    # I

    #@0
    .prologue
    .line 473
    const/16 v0, 0x1000

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 474
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 473
    :goto_0
    return-object v0

    #@9
    .line 474
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "0x"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    goto :goto_0
.end method


# virtual methods
.method public getCE32(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getCE32FromContexts(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    shl-int/lit8 v0, v0, 0x10

    #@8
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@a
    add-int/lit8 v2, p1, 0x1

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    return v0
.end method

.method getCE32FromSupplementary(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getCEFromOffsetCE32(II)J
    .locals 4
    .param p1, "c"    # I
    .param p2, "ce32"    # I

    #@0
    .prologue
    .line 108
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@2
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@5
    move-result v3

    #@6
    aget-wide v0, v2, v3

    #@8
    .line 109
    .local v0, "dataCE":J
    invoke-static {p1, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@f
    move-result-wide v2

    #@10
    return-wide v2
.end method

.method public getEquivalentScripts(I)[I
    .locals 8
    .param p1, "script"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 255
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    #@5
    move-result v2

    #@6
    .line 256
    .local v2, "index":I
    if-nez v2, :cond_0

    #@8
    sget-object v5, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    #@a
    return-object v5

    #@b
    .line 257
    :cond_0
    const/16 v5, 0x1000

    #@d
    if-lt p1, v5, :cond_1

    #@f
    .line 259
    new-array v5, v7, [I

    #@11
    aput p1, v5, v6

    #@13
    return-object v5

    #@14
    .line 262
    :cond_1
    const/4 v3, 0x0

    #@15
    .line 263
    .local v3, "length":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@18
    if-ge v1, v5, :cond_3

    #@1a
    .line 264
    iget-object v5, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@1c
    aget-char v5, v5, v1

    #@1e
    if-ne v5, v2, :cond_2

    #@20
    .line 265
    add-int/lit8 v3, v3, 0x1

    #@22
    .line 263
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 268
    :cond_3
    new-array v0, v3, [I

    #@27
    .line 269
    .local v0, "dest":[I
    if-ne v3, v7, :cond_4

    #@29
    .line 270
    aput p1, v0, v6

    #@2b
    .line 271
    return-object v0

    #@2c
    .line 273
    :cond_4
    const/4 v3, 0x0

    #@2d
    .line 274
    const/4 v1, 0x0

    #@2e
    :goto_1
    iget v5, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@30
    if-ge v1, v5, :cond_6

    #@32
    .line 275
    iget-object v5, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@34
    aget-char v5, v5, v1

    #@36
    if-ne v5, v2, :cond_5

    #@38
    .line 276
    add-int/lit8 v4, v3, 0x1

    #@3a
    .end local v3    # "length":I
    .local v4, "length":I
    aput v1, v0, v3

    #@3c
    move v3, v4

    #@3d
    .line 274
    .end local v4    # "length":I
    .restart local v3    # "length":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 279
    :cond_6
    return-object v0
.end method

.method getFCD16(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getFinalCE32(I)I
    .locals 1
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 98
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 99
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    #@9
    move-result p1

    #@a
    .line 101
    :cond_0
    return p1
.end method

.method getFirstPrimaryForGroup(I)J
    .locals 4
    .param p1, "script"    # I

    #@0
    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    #@3
    move-result v0

    #@4
    .line 195
    .local v0, "index":I
    if-nez v0, :cond_0

    #@6
    const-wide/16 v2, 0x0

    #@8
    :goto_0
    return-wide v2

    #@9
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@b
    aget-char v1, v1, v0

    #@d
    int-to-long v2, v1

    #@e
    const/16 v1, 0x10

    #@10
    shl-long/2addr v2, v1

    #@11
    goto :goto_0
.end method

.method public getGroupForPrimary(J)I
    .locals 5
    .param p1, "p"    # J

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 218
    const/16 v2, 0x10

    #@3
    shr-long/2addr p1, v2

    #@4
    .line 219
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@6
    const/4 v3, 0x1

    #@7
    aget-char v2, v2, v3

    #@9
    int-to-long v2, v2

    #@a
    cmp-long v2, p1, v2

    #@c
    if-ltz v2, :cond_0

    #@e
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@10
    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@12
    array-length v3, v3

    #@13
    add-int/lit8 v3, v3, -0x1

    #@15
    aget-char v2, v2, v3

    #@17
    int-to-long v2, v2

    #@18
    cmp-long v2, v2, p1

    #@1a
    if-gtz v2, :cond_1

    #@1c
    .line 220
    :cond_0
    return v4

    #@1d
    .line 222
    :cond_1
    const/4 v1, 0x1

    #@1e
    .line 223
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@20
    add-int/lit8 v3, v1, 0x1

    #@22
    aget-char v2, v2, v3

    #@24
    int-to-long v2, v2

    #@25
    cmp-long v2, p1, v2

    #@27
    if-ltz v2, :cond_2

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 224
    :cond_2
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@2f
    if-ge v0, v2, :cond_4

    #@31
    .line 225
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@33
    aget-char v2, v2, v0

    #@35
    if-ne v2, v1, :cond_3

    #@37
    .line 226
    return v0

    #@38
    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 229
    :cond_4
    const/4 v0, 0x0

    #@3c
    :goto_2
    const/16 v2, 0x8

    #@3e
    if-ge v0, v2, :cond_6

    #@40
    .line 230
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@42
    iget v3, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@44
    add-int/2addr v3, v0

    #@45
    aget-char v2, v2, v3

    #@47
    if-ne v2, v1, :cond_5

    #@49
    .line 231
    add-int/lit16 v2, v0, 0x1000

    #@4b
    return v2

    #@4c
    .line 229
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_2

    #@4f
    .line 234
    :cond_6
    return v4
.end method

.method getIndirectCE32(I)I
    .locals 3
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 79
    sget-boolean v1, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_0

    #@4
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    new-instance v1, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v1

    #@10
    .line 80
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@13
    move-result v0

    #@14
    .line 81
    .local v0, "tag":I
    const/16 v1, 0xa

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 83
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@1a
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@1d
    move-result v2

    #@1e
    aget p1, v1, v2

    #@20
    .line 90
    :cond_1
    :goto_0
    return p1

    #@21
    .line 84
    :cond_2
    const/16 v1, 0xd

    #@23
    if-ne v0, v1, :cond_3

    #@25
    .line 85
    const/4 p1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 86
    :cond_3
    const/16 v1, 0xb

    #@29
    if-ne v0, v1, :cond_1

    #@2b
    .line 88
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@2d
    const/4 v2, 0x0

    #@2e
    aget p1, v1, v2

    #@30
    goto :goto_0
.end method

.method public getLastPrimaryForGroup(I)J
    .locals 8
    .param p1, "script"    # I

    #@0
    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    #@3
    move-result v0

    #@4
    .line 206
    .local v0, "index":I
    if-nez v0, :cond_0

    #@6
    .line 207
    const-wide/16 v4, 0x0

    #@8
    return-wide v4

    #@9
    .line 209
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@b
    add-int/lit8 v4, v0, 0x1

    #@d
    aget-char v1, v1, v4

    #@f
    int-to-long v2, v1

    #@10
    .line 210
    .local v2, "limit":J
    const/16 v1, 0x10

    #@12
    shl-long v4, v2, v1

    #@14
    const-wide/16 v6, 0x1

    #@16
    sub-long/2addr v4, v6

    #@17
    return-wide v4
.end method

.method getSingleCE(I)J
    .locals 8
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 118
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@6
    move-result v0

    #@7
    .line 119
    .local v0, "ce32":I
    const/16 v2, 0xc0

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 120
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@d
    .line 121
    .local v1, "d":Landroid/icu/impl/coll/CollationData;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@f
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@12
    move-result v0

    #@13
    .line 125
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_5

    #@19
    .line 126
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@1c
    move-result v2

    #@1d
    packed-switch v2, :pswitch_data_0

    #@20
    goto :goto_0

    #@21
    .line 138
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    #@23
    .line 139
    const-string/jumbo v5, "unexpected CE32 tag for U+%04X (CE32 0x%08x)"

    #@26
    .line 138
    new-array v6, v6, [Ljava/lang/Object;

    #@28
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v7

    #@2c
    aput-object v7, v6, v4

    #@2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v4

    #@32
    aput-object v4, v6, v3

    #@34
    .line 138
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3b
    throw v2

    #@3c
    .line 123
    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_0
    move-object v1, p0

    #@3d
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    goto :goto_0

    #@3e
    .line 133
    :pswitch_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@40
    .line 134
    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    #@43
    .line 133
    new-array v6, v6, [Ljava/lang/Object;

    #@45
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v7

    #@49
    aput-object v7, v6, v4

    #@4b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v4

    #@4f
    aput-object v4, v6, v3

    #@51
    .line 133
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2

    #@59
    .line 141
    :pswitch_2
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    #@5c
    move-result-wide v2

    #@5d
    return-wide v2

    #@5e
    .line 143
    :pswitch_3
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    #@61
    move-result-wide v2

    #@62
    return-wide v2

    #@63
    .line 145
    :pswitch_4
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@66
    move-result v2

    #@67
    if-ne v2, v3, :cond_1

    #@69
    .line 146
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@6b
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@6e
    move-result v5

    #@6f
    aget v0, v2, v5

    #@71
    goto :goto_0

    #@72
    .line 149
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@74
    .line 150
    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    #@77
    .line 149
    new-array v6, v6, [Ljava/lang/Object;

    #@79
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v7

    #@7d
    aput-object v7, v6, v4

    #@7f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v4

    #@83
    aput-object v4, v6, v3

    #@85
    .line 149
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v2

    #@8d
    .line 154
    :pswitch_5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@90
    move-result v2

    #@91
    if-ne v2, v3, :cond_2

    #@93
    .line 155
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@95
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@98
    move-result v3

    #@99
    aget-wide v2, v2, v3

    #@9b
    return-wide v2

    #@9c
    .line 157
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@9e
    .line 158
    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    #@a1
    .line 157
    new-array v6, v6, [Ljava/lang/Object;

    #@a3
    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object v7

    #@a7
    aput-object v7, v6, v4

    #@a9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v4

    #@ad
    aput-object v4, v6, v3

    #@af
    .line 157
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v2

    #@b7
    .line 164
    :pswitch_6
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@b9
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@bc
    move-result v5

    #@bd
    aget v0, v2, v5

    #@bf
    goto/16 :goto_0

    #@c1
    .line 167
    :pswitch_7
    sget-boolean v2, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    #@c3
    if-nez v2, :cond_4

    #@c5
    if-nez p1, :cond_3

    #@c7
    move v2, v3

    #@c8
    :goto_1
    if-nez v2, :cond_4

    #@ca
    new-instance v2, Ljava/lang/AssertionError;

    #@cc
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@cf
    throw v2

    #@d0
    :cond_3
    move v2, v4

    #@d1
    goto :goto_1

    #@d2
    .line 169
    :cond_4
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@d4
    aget v0, v2, v4

    #@d6
    goto/16 :goto_0

    #@d8
    .line 172
    :pswitch_8
    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    #@db
    move-result-wide v2

    #@dc
    return-wide v2

    #@dd
    .line 174
    :pswitch_9
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    #@e0
    move-result-wide v2

    #@e1
    return-wide v2

    #@e2
    .line 177
    :cond_5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    #@e5
    move-result-wide v2

    #@e6
    return-wide v2

    #@e7
    .line 126
    nop

    #@e8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isCompressibleLeadByte(I)Z
    .locals 1
    .param p1, "b"    # I

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method public isCompressiblePrimary(J)Z
    .locals 1
    .param p1, "p"    # J

    #@0
    .prologue
    .line 63
    long-to-int v0, p1

    #@1
    ushr-int/lit8 v0, v0, 0x18

    #@3
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method isDigit(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    const/16 v1, 0x660

    #@3
    if-ge p1, v1, :cond_1

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/16 v1, 0x30

    #@b
    if-gt v1, p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@12
    move-result v0

    #@13
    const/16 v1, 0xa

    #@15
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@18
    move-result v0

    #@19
    goto :goto_0
.end method

.method public isUnsafeBackward(IZ)Z
    .locals 1
    .param p1, "c"    # I
    .param p2, "numeric"    # Z

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isDigit(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V
    .locals 1
    .param p1, "reorder"    # [I
    .param p2, "ranges"    # Landroid/icu/impl/coll/UVector32;

    #@0
    .prologue
    .line 293
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    #@4
    .line 292
    return-void
.end method
