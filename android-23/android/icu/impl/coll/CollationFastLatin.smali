.class public final Landroid/icu/impl/coll/CollationFastLatin;
.super Ljava/lang/Object;
.source "CollationFastLatin.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BAIL_OUT:I = 0x1

.field public static final BAIL_OUT_RESULT:I = -0x2

.field static final CASE_AND_TERTIARY_MASK:I = 0x1f

.field static final CASE_MASK:I = 0x18

.field static final COMMON_SEC:I = 0xa0

.field static final COMMON_SEC_PLUS_OFFSET:I = 0xc0

.field static final COMMON_TER:I = 0x0

.field static final COMMON_TER_PLUS_OFFSET:I = 0x20

.field static final CONTRACTION:I = 0x400

.field static final CONTR_CHAR_MASK:I = 0x1ff

.field static final CONTR_LENGTH_SHIFT:I = 0x9

.field static final EOS:I = 0x2

.field static final EXPANSION:I = 0x800

.field static final INDEX_MASK:I = 0x3ff

.field public static final LATIN_LIMIT:I = 0x180

.field public static final LATIN_MAX:I = 0x17f

.field static final LATIN_MAX_UTF8_LEAD:I = 0xc5

.field static final LONG_INC:I = 0x8

.field static final LONG_PRIMARY_MASK:I = 0xfff8

.field static final LOWER_CASE:I = 0x8

.field static final MAX_LONG:I = 0xff8

.field static final MAX_SEC_AFTER:I = 0x160

.field static final MAX_SEC_BEFORE:I = 0x80

.field static final MAX_SEC_HIGH:I = 0x3e0

.field static final MAX_SHORT:I = 0xfc00

.field static final MAX_TER_AFTER:I = 0x7

.field static final MERGE_WEIGHT:I = 0x3

.field static final MIN_LONG:I = 0xc00

.field static final MIN_SEC_AFTER:I = 0xc0

.field static final MIN_SEC_BEFORE:I = 0x0

.field static final MIN_SEC_HIGH:I = 0x180

.field static final MIN_SHORT:I = 0x1000

.field static final NUM_FAST_CHARS:I = 0x1c0

.field static final PUNCT_LIMIT:I = 0x2040

.field static final PUNCT_START:I = 0x2000

.field static final SECONDARY_MASK:I = 0x3e0

.field static final SEC_INC:I = 0x20

.field static final SEC_OFFSET:I = 0x20

.field static final SHORT_INC:I = 0x400

.field static final SHORT_PRIMARY_MASK:I = 0xfc00

.field static final TERTIARY_MASK:I = 0x7

.field static final TER_OFFSET:I = 0x20

.field static final TWO_CASES_MASK:I = 0x180018

.field static final TWO_COMMON_SEC_PLUS_OFFSET:I = 0xc000c0

.field static final TWO_COMMON_TER_PLUS_OFFSET:I = 0x200020

.field static final TWO_LONG_PRIMARIES_MASK:I = -0x70008

.field static final TWO_LOWER_CASES:I = 0x80008

.field static final TWO_SECONDARIES_MASK:I = 0x3e003e0

.field static final TWO_SEC_OFFSETS:I = 0x200020

.field static final TWO_SHORT_PRIMARIES_MASK:I = -0x3ff0400

.field static final TWO_TERTIARIES_MASK:I = 0x70007

.field static final TWO_TER_OFFSETS:I = 0x200020

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationFastLatin;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@b
    .line 17
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 28
    .param p0, "table"    # [C
    .param p1, "primaries"    # [C
    .param p2, "options"    # I
    .param p3, "left"    # Ljava/lang/CharSequence;
    .param p4, "right"    # Ljava/lang/CharSequence;
    .param p5, "startIndex"    # I

    #@0
    .prologue
    .line 288
    shr-int/lit8 v24, p2, 0x10

    #@2
    .line 289
    .local v24, "variableTop":I
    const v26, 0xffff

    #@5
    and-int p2, p2, v26

    #@7
    .line 292
    move/from16 v6, p5

    #@9
    .local v6, "leftIndex":I
    move/from16 v16, p5

    #@b
    .line 298
    .local v16, "rightIndex":I
    const/4 v8, 0x0

    #@c
    .local v8, "leftPair":I
    const/16 v18, 0x0

    #@e
    .local v18, "rightPair":I
    move v7, v6

    #@f
    .line 301
    .end local v6    # "leftIndex":I
    .local v7, "leftIndex":I
    :goto_0
    if-nez v8, :cond_61

    #@11
    .line 302
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v26

    #@15
    move/from16 v0, v26

    #@17
    if-ne v7, v0, :cond_5

    #@19
    .line 303
    const/4 v8, 0x2

    #@1a
    move/from16 v17, v16

    #@1c
    .end local v16    # "rightIndex":I
    .local v17, "rightIndex":I
    move v6, v7

    #@1d
    .line 337
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    :goto_1
    if-nez v18, :cond_60

    #@1f
    .line 338
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v26

    #@23
    move/from16 v0, v17

    #@25
    move/from16 v1, v26

    #@27
    if-ne v0, v1, :cond_e

    #@29
    .line 339
    const/16 v18, 0x2

    #@2b
    move/from16 v16, v17

    #@2d
    .line 373
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_0
    :goto_2
    move/from16 v0, v18

    #@2f
    if-ne v8, v0, :cond_17

    #@31
    .line 374
    const/16 v26, 0x2

    #@33
    move/from16 v0, v26

    #@35
    if-ne v8, v0, :cond_16

    #@37
    .line 394
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@3a
    move-result v26

    #@3b
    const/16 v27, 0x1

    #@3d
    move/from16 v0, v26

    #@3f
    move/from16 v1, v27

    #@41
    if-lt v0, v1, :cond_2

    #@43
    .line 395
    move/from16 v16, p5

    #@45
    move/from16 v6, p5

    #@47
    .line 396
    const/16 v18, 0x0

    #@49
    const/4 v8, 0x0

    #@4a
    move v7, v6

    #@4b
    .line 398
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :goto_3
    if-nez v8, :cond_5f

    #@4d
    .line 399
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@50
    move-result v26

    #@51
    move/from16 v0, v26

    #@53
    if-ne v7, v0, :cond_1a

    #@55
    .line 400
    const/4 v8, 0x2

    #@56
    move/from16 v17, v16

    #@58
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    move v6, v7

    #@59
    .line 427
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    :goto_4
    if-nez v18, :cond_5e

    #@5b
    .line 428
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@5e
    move-result v26

    #@5f
    move/from16 v0, v17

    #@61
    move/from16 v1, v26

    #@63
    if-ne v0, v1, :cond_20

    #@65
    .line 429
    const/16 v18, 0x2

    #@67
    move/from16 v16, v17

    #@69
    .line 456
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :goto_5
    move/from16 v0, v18

    #@6b
    if-ne v8, v0, :cond_27

    #@6d
    .line 457
    const/16 v26, 0x2

    #@6f
    move/from16 v0, v26

    #@71
    if-ne v8, v0, :cond_26

    #@73
    .line 477
    :cond_2
    move/from16 v0, p2

    #@75
    and-int/lit16 v0, v0, 0x400

    #@77
    move/from16 v26, v0

    #@79
    if-eqz v26, :cond_4

    #@7b
    .line 478
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@7e
    move-result v26

    #@7f
    if-nez v26, :cond_2b

    #@81
    const/16 v23, 0x1

    #@83
    .line 479
    .local v23, "strengthIsPrimary":Z
    :goto_6
    move/from16 v16, p5

    #@85
    move/from16 v6, p5

    #@87
    .line 480
    const/16 v18, 0x0

    #@89
    const/4 v8, 0x0

    #@8a
    move v7, v6

    #@8b
    .line 482
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :goto_7
    if-nez v8, :cond_33

    #@8d
    .line 483
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@90
    move-result v26

    #@91
    move/from16 v0, v26

    #@93
    if-ne v7, v0, :cond_2c

    #@95
    .line 484
    const/4 v8, 0x2

    #@96
    move/from16 v17, v16

    #@98
    .line 500
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :goto_8
    if-nez v18, :cond_3

    #@9a
    .line 501
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@9d
    move-result v26

    #@9e
    move/from16 v0, v17

    #@a0
    move/from16 v1, v26

    #@a2
    if-ne v0, v1, :cond_30

    #@a4
    .line 502
    const/16 v18, 0x2

    #@a6
    .line 518
    :cond_3
    move/from16 v0, v18

    #@a8
    if-ne v8, v0, :cond_36

    #@aa
    .line 519
    const/16 v26, 0x2

    #@ac
    move/from16 v0, v26

    #@ae
    if-ne v8, v0, :cond_35

    #@b0
    move/from16 v16, v17

    #@b2
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move v6, v7

    #@b3
    .line 537
    .end local v7    # "leftIndex":I
    .end local v23    # "strengthIsPrimary":Z
    .restart local v6    # "leftIndex":I
    :cond_4
    :goto_9
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@b6
    move-result v26

    #@b7
    const/16 v27, 0x1

    #@b9
    move/from16 v0, v26

    #@bb
    move/from16 v1, v27

    #@bd
    if-gt v0, v1, :cond_3c

    #@bf
    const/16 v26, 0x0

    #@c1
    return v26

    #@c2
    .line 306
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :cond_5
    add-int/lit8 v6, v7, 0x1

    #@c4
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    move-object/from16 v0, p3

    #@c6
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@c9
    move-result v4

    #@ca
    .line 307
    .local v4, "c":I
    const/16 v26, 0x17f

    #@cc
    move/from16 v0, v26

    #@ce
    if-gt v4, v0, :cond_8

    #@d0
    .line 308
    aget-char v8, p1, v4

    #@d2
    .line 309
    if-eqz v8, :cond_6

    #@d4
    move/from16 v17, v16

    #@d6
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_1

    #@d8
    .line 310
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_6
    const/16 v26, 0x39

    #@da
    move/from16 v0, v26

    #@dc
    if-gt v4, v0, :cond_7

    #@de
    const/16 v26, 0x30

    #@e0
    move/from16 v0, v26

    #@e2
    if-lt v4, v0, :cond_7

    #@e4
    and-int/lit8 v26, p2, 0x2

    #@e6
    if-eqz v26, :cond_7

    #@e8
    .line 311
    const/16 v26, -0x2

    #@ea
    return v26

    #@eb
    .line 313
    :cond_7
    aget-char v8, p0, v4

    #@ed
    .line 319
    :goto_a
    const/16 v26, 0x1000

    #@ef
    move/from16 v0, v26

    #@f1
    if-lt v8, v0, :cond_a

    #@f3
    .line 320
    const v26, 0xfc00

    #@f6
    and-int v8, v8, v26

    #@f8
    move/from16 v17, v16

    #@fa
    .line 321
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_1

    #@fc
    .line 314
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_8
    const/16 v26, 0x2000

    #@fe
    move/from16 v0, v26

    #@100
    if-gt v0, v4, :cond_9

    #@102
    const/16 v26, 0x2040

    #@104
    move/from16 v0, v26

    #@106
    if-ge v4, v0, :cond_9

    #@108
    .line 315
    add-int/lit16 v0, v4, -0x2000

    #@10a
    move/from16 v26, v0

    #@10c
    move/from16 v0, v26

    #@10e
    add-int/lit16 v0, v0, 0x180

    #@110
    move/from16 v26, v0

    #@112
    aget-char v8, p0, v26

    #@114
    .line 314
    goto :goto_a

    #@115
    .line 317
    :cond_9
    move-object/from16 v0, p0

    #@117
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@11a
    move-result v8

    #@11b
    goto :goto_a

    #@11c
    .line 322
    :cond_a
    move/from16 v0, v24

    #@11e
    if-le v8, v0, :cond_b

    #@120
    .line 323
    const v26, 0xfff8

    #@123
    and-int v8, v8, v26

    #@125
    move/from16 v17, v16

    #@127
    .line 324
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_1

    #@129
    .line 326
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_b
    move-object/from16 v0, p0

    #@12b
    move-object/from16 v1, p3

    #@12d
    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@130
    move-result-wide v14

    #@131
    .line 327
    .local v14, "pairAndInc":J
    const-wide/16 v26, 0x0

    #@133
    cmp-long v26, v14, v26

    #@135
    if-gez v26, :cond_c

    #@137
    .line 328
    add-int/lit8 v6, v6, 0x1

    #@139
    .line 329
    not-long v14, v14

    #@13a
    .line 331
    :cond_c
    long-to-int v8, v14

    #@13b
    .line 332
    const/16 v26, 0x1

    #@13d
    move/from16 v0, v26

    #@13f
    if-ne v8, v0, :cond_d

    #@141
    const/16 v26, -0x2

    #@143
    return v26

    #@144
    .line 333
    :cond_d
    move/from16 v0, v24

    #@146
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    #@149
    move-result v8

    #@14a
    .end local v4    # "c":I
    .end local v14    # "pairAndInc":J
    :goto_b
    move v7, v6

    #@14b
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto/16 :goto_0

    #@14d
    .line 342
    .end local v7    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v6    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_e
    add-int/lit8 v16, v17, 0x1

    #@14f
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move-object/from16 v0, p4

    #@151
    move/from16 v1, v17

    #@153
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@156
    move-result v4

    #@157
    .line 343
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@159
    move/from16 v0, v26

    #@15b
    if-gt v4, v0, :cond_10

    #@15d
    .line 344
    aget-char v18, p1, v4

    #@15f
    .line 345
    if-nez v18, :cond_0

    #@161
    .line 346
    const/16 v26, 0x39

    #@163
    move/from16 v0, v26

    #@165
    if-gt v4, v0, :cond_f

    #@167
    const/16 v26, 0x30

    #@169
    move/from16 v0, v26

    #@16b
    if-lt v4, v0, :cond_f

    #@16d
    and-int/lit8 v26, p2, 0x2

    #@16f
    if-eqz v26, :cond_f

    #@171
    .line 347
    const/16 v26, -0x2

    #@173
    return v26

    #@174
    .line 349
    :cond_f
    aget-char v18, p0, v4

    #@176
    .line 355
    :goto_c
    const/16 v26, 0x1000

    #@178
    move/from16 v0, v18

    #@17a
    move/from16 v1, v26

    #@17c
    if-lt v0, v1, :cond_12

    #@17e
    .line 356
    const v26, 0xfc00

    #@181
    and-int v18, v18, v26

    #@183
    .line 357
    goto/16 :goto_2

    #@185
    .line 350
    :cond_10
    const/16 v26, 0x2000

    #@187
    move/from16 v0, v26

    #@189
    if-gt v0, v4, :cond_11

    #@18b
    const/16 v26, 0x2040

    #@18d
    move/from16 v0, v26

    #@18f
    if-ge v4, v0, :cond_11

    #@191
    .line 351
    add-int/lit16 v0, v4, -0x2000

    #@193
    move/from16 v26, v0

    #@195
    move/from16 v0, v26

    #@197
    add-int/lit16 v0, v0, 0x180

    #@199
    move/from16 v26, v0

    #@19b
    aget-char v18, p0, v26

    #@19d
    .line 350
    goto :goto_c

    #@19e
    .line 353
    :cond_11
    move-object/from16 v0, p0

    #@1a0
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@1a3
    move-result v18

    #@1a4
    goto :goto_c

    #@1a5
    .line 358
    :cond_12
    move/from16 v0, v18

    #@1a7
    move/from16 v1, v24

    #@1a9
    if-le v0, v1, :cond_13

    #@1ab
    .line 359
    const v26, 0xfff8

    #@1ae
    and-int v18, v18, v26

    #@1b0
    .line 360
    goto/16 :goto_2

    #@1b2
    .line 362
    :cond_13
    move-object/from16 v0, p0

    #@1b4
    move/from16 v1, v18

    #@1b6
    move-object/from16 v2, p4

    #@1b8
    move/from16 v3, v16

    #@1ba
    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@1bd
    move-result-wide v14

    #@1be
    .line 363
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@1c0
    cmp-long v26, v14, v26

    #@1c2
    if-gez v26, :cond_14

    #@1c4
    .line 364
    add-int/lit8 v16, v16, 0x1

    #@1c6
    .line 365
    not-long v14, v14

    #@1c7
    .line 367
    :cond_14
    long-to-int v0, v14

    #@1c8
    move/from16 v18, v0

    #@1ca
    .line 368
    const/16 v26, 0x1

    #@1cc
    move/from16 v0, v18

    #@1ce
    move/from16 v1, v26

    #@1d0
    if-ne v0, v1, :cond_15

    #@1d2
    const/16 v26, -0x2

    #@1d4
    return v26

    #@1d5
    .line 369
    :cond_15
    move/from16 v0, v24

    #@1d7
    move/from16 v1, v18

    #@1d9
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    #@1dc
    move-result v18

    #@1dd
    move/from16 v17, v16

    #@1df
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_1

    #@1e1
    .line 375
    .end local v4    # "c":I
    .end local v14    # "pairAndInc":J
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_16
    const/16 v18, 0x0

    #@1e3
    const/4 v8, 0x0

    #@1e4
    .line 376
    goto/16 :goto_b

    #@1e6
    .line 378
    :cond_17
    const v26, 0xffff

    #@1e9
    and-int v9, v8, v26

    #@1eb
    .line 379
    .local v9, "leftPrimary":I
    const v26, 0xffff

    #@1ee
    and-int v19, v18, v26

    #@1f0
    .line 380
    .local v19, "rightPrimary":I
    move/from16 v0, v19

    #@1f2
    if-eq v9, v0, :cond_19

    #@1f4
    .line 382
    move/from16 v0, v19

    #@1f6
    if-ge v9, v0, :cond_18

    #@1f8
    const/16 v26, -0x1

    #@1fa
    :goto_d
    return v26

    #@1fb
    :cond_18
    const/16 v26, 0x1

    #@1fd
    goto :goto_d

    #@1fe
    .line 384
    :cond_19
    const/16 v26, 0x2

    #@200
    move/from16 v0, v26

    #@202
    if-eq v8, v0, :cond_1

    #@204
    .line 385
    ushr-int/lit8 v8, v8, 0x10

    #@206
    .line 386
    ushr-int/lit8 v18, v18, 0x10

    #@208
    goto/16 :goto_b

    #@20a
    .line 403
    .end local v6    # "leftIndex":I
    .end local v9    # "leftPrimary":I
    .end local v19    # "rightPrimary":I
    .restart local v7    # "leftIndex":I
    :cond_1a
    add-int/lit8 v6, v7, 0x1

    #@20c
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    move-object/from16 v0, p3

    #@20e
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@211
    move-result v4

    #@212
    .line 404
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@214
    move/from16 v0, v26

    #@216
    if-gt v4, v0, :cond_1b

    #@218
    .line 405
    aget-char v8, p0, v4

    #@21a
    .line 411
    :goto_e
    const/16 v26, 0x1000

    #@21c
    move/from16 v0, v26

    #@21e
    if-lt v8, v0, :cond_1d

    #@220
    .line 412
    invoke-static {v8}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    #@223
    move-result v8

    #@224
    move/from16 v17, v16

    #@226
    .line 413
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_4

    #@228
    .line 406
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_1b
    const/16 v26, 0x2000

    #@22a
    move/from16 v0, v26

    #@22c
    if-gt v0, v4, :cond_1c

    #@22e
    const/16 v26, 0x2040

    #@230
    move/from16 v0, v26

    #@232
    if-ge v4, v0, :cond_1c

    #@234
    .line 407
    add-int/lit16 v0, v4, -0x2000

    #@236
    move/from16 v26, v0

    #@238
    move/from16 v0, v26

    #@23a
    add-int/lit16 v0, v0, 0x180

    #@23c
    move/from16 v26, v0

    #@23e
    aget-char v8, p0, v26

    #@240
    .line 406
    goto :goto_e

    #@241
    .line 409
    :cond_1c
    move-object/from16 v0, p0

    #@243
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@246
    move-result v8

    #@247
    goto :goto_e

    #@248
    .line 414
    :cond_1d
    move/from16 v0, v24

    #@24a
    if-le v8, v0, :cond_1e

    #@24c
    .line 415
    const/16 v8, 0xc0

    #@24e
    move/from16 v17, v16

    #@250
    .line 416
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_4

    #@252
    .line 418
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_1e
    move-object/from16 v0, p0

    #@254
    move-object/from16 v1, p3

    #@256
    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@259
    move-result-wide v14

    #@25a
    .line 419
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@25c
    cmp-long v26, v14, v26

    #@25e
    if-gez v26, :cond_1f

    #@260
    .line 420
    add-int/lit8 v6, v6, 0x1

    #@262
    .line 421
    not-long v14, v14

    #@263
    .line 423
    :cond_1f
    long-to-int v0, v14

    #@264
    move/from16 v26, v0

    #@266
    move/from16 v0, v24

    #@268
    move/from16 v1, v26

    #@26a
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    #@26d
    move-result v8

    #@26e
    .end local v4    # "c":I
    .end local v14    # "pairAndInc":J
    :goto_f
    move v7, v6

    #@26f
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto/16 :goto_3

    #@271
    .line 432
    .end local v7    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v6    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_20
    add-int/lit8 v16, v17, 0x1

    #@273
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move-object/from16 v0, p4

    #@275
    move/from16 v1, v17

    #@277
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@27a
    move-result v4

    #@27b
    .line 433
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@27d
    move/from16 v0, v26

    #@27f
    if-gt v4, v0, :cond_21

    #@281
    .line 434
    aget-char v18, p0, v4

    #@283
    .line 440
    :goto_10
    const/16 v26, 0x1000

    #@285
    move/from16 v0, v18

    #@287
    move/from16 v1, v26

    #@289
    if-lt v0, v1, :cond_23

    #@28b
    .line 441
    invoke-static/range {v18 .. v18}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    #@28e
    move-result v18

    #@28f
    goto/16 :goto_5

    #@291
    .line 435
    :cond_21
    const/16 v26, 0x2000

    #@293
    move/from16 v0, v26

    #@295
    if-gt v0, v4, :cond_22

    #@297
    const/16 v26, 0x2040

    #@299
    move/from16 v0, v26

    #@29b
    if-ge v4, v0, :cond_22

    #@29d
    .line 436
    add-int/lit16 v0, v4, -0x2000

    #@29f
    move/from16 v26, v0

    #@2a1
    move/from16 v0, v26

    #@2a3
    add-int/lit16 v0, v0, 0x180

    #@2a5
    move/from16 v26, v0

    #@2a7
    aget-char v18, p0, v26

    #@2a9
    .line 435
    goto :goto_10

    #@2aa
    .line 438
    :cond_22
    move-object/from16 v0, p0

    #@2ac
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@2af
    move-result v18

    #@2b0
    goto :goto_10

    #@2b1
    .line 443
    :cond_23
    move/from16 v0, v18

    #@2b3
    move/from16 v1, v24

    #@2b5
    if-le v0, v1, :cond_24

    #@2b7
    .line 444
    const/16 v18, 0xc0

    #@2b9
    .line 445
    goto/16 :goto_5

    #@2bb
    .line 447
    :cond_24
    move-object/from16 v0, p0

    #@2bd
    move/from16 v1, v18

    #@2bf
    move-object/from16 v2, p4

    #@2c1
    move/from16 v3, v16

    #@2c3
    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@2c6
    move-result-wide v14

    #@2c7
    .line 448
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@2c9
    cmp-long v26, v14, v26

    #@2cb
    if-gez v26, :cond_25

    #@2cd
    .line 449
    add-int/lit8 v16, v16, 0x1

    #@2cf
    .line 450
    not-long v14, v14

    #@2d0
    .line 452
    :cond_25
    long-to-int v0, v14

    #@2d1
    move/from16 v26, v0

    #@2d3
    move/from16 v0, v24

    #@2d5
    move/from16 v1, v26

    #@2d7
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    #@2da
    move-result v18

    #@2db
    move/from16 v17, v16

    #@2dd
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_4

    #@2df
    .line 458
    .end local v4    # "c":I
    .end local v14    # "pairAndInc":J
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_26
    const/16 v18, 0x0

    #@2e1
    const/4 v8, 0x0

    #@2e2
    .line 459
    goto :goto_f

    #@2e3
    .line 461
    :cond_27
    const v26, 0xffff

    #@2e6
    and-int v11, v8, v26

    #@2e8
    .line 462
    .local v11, "leftSecondary":I
    const v26, 0xffff

    #@2eb
    and-int v21, v18, v26

    #@2ed
    .line 463
    .local v21, "rightSecondary":I
    move/from16 v0, v21

    #@2ef
    if-eq v11, v0, :cond_2a

    #@2f1
    .line 464
    move/from16 v0, p2

    #@2f3
    and-int/lit16 v0, v0, 0x800

    #@2f5
    move/from16 v26, v0

    #@2f7
    if-eqz v26, :cond_28

    #@2f9
    .line 467
    const/16 v26, -0x2

    #@2fb
    return v26

    #@2fc
    .line 469
    :cond_28
    move/from16 v0, v21

    #@2fe
    if-ge v11, v0, :cond_29

    #@300
    const/16 v26, -0x1

    #@302
    :goto_11
    return v26

    #@303
    :cond_29
    const/16 v26, 0x1

    #@305
    goto :goto_11

    #@306
    .line 471
    :cond_2a
    const/16 v26, 0x2

    #@308
    move/from16 v0, v26

    #@30a
    if-eq v8, v0, :cond_2

    #@30c
    .line 472
    ushr-int/lit8 v8, v8, 0x10

    #@30e
    .line 473
    ushr-int/lit8 v18, v18, 0x10

    #@310
    goto/16 :goto_f

    #@312
    .line 478
    .end local v11    # "leftSecondary":I
    .end local v21    # "rightSecondary":I
    :cond_2b
    const/16 v23, 0x0

    #@314
    .restart local v23    # "strengthIsPrimary":Z
    goto/16 :goto_6

    #@316
    .line 487
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :cond_2c
    add-int/lit8 v6, v7, 0x1

    #@318
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    move-object/from16 v0, p3

    #@31a
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@31d
    move-result v4

    #@31e
    .line 488
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@320
    move/from16 v0, v26

    #@322
    if-gt v4, v0, :cond_2f

    #@324
    aget-char v8, p0, v4

    #@326
    .line 489
    :goto_12
    const/16 v26, 0xc00

    #@328
    move/from16 v0, v26

    #@32a
    if-ge v8, v0, :cond_2e

    #@32c
    .line 490
    move-object/from16 v0, p0

    #@32e
    move-object/from16 v1, p3

    #@330
    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@333
    move-result-wide v14

    #@334
    .line 491
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@336
    cmp-long v26, v14, v26

    #@338
    if-gez v26, :cond_2d

    #@33a
    .line 492
    add-int/lit8 v6, v6, 0x1

    #@33c
    .line 493
    not-long v14, v14

    #@33d
    .line 495
    :cond_2d
    long-to-int v8, v14

    #@33e
    .line 497
    .end local v14    # "pairAndInc":J
    :cond_2e
    move/from16 v0, v24

    #@340
    move/from16 v1, v23

    #@342
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    #@345
    move-result v8

    #@346
    move v7, v6

    #@347
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto/16 :goto_7

    #@349
    .line 488
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    :cond_2f
    move-object/from16 v0, p0

    #@34b
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@34e
    move-result v8

    #@34f
    goto :goto_12

    #@350
    .line 505
    .end local v4    # "c":I
    .end local v6    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v7    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_30
    add-int/lit8 v16, v17, 0x1

    #@352
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move-object/from16 v0, p4

    #@354
    move/from16 v1, v17

    #@356
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@359
    move-result v4

    #@35a
    .line 506
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@35c
    move/from16 v0, v26

    #@35e
    if-gt v4, v0, :cond_34

    #@360
    aget-char v18, p0, v4

    #@362
    .line 507
    :goto_13
    const/16 v26, 0xc00

    #@364
    move/from16 v0, v18

    #@366
    move/from16 v1, v26

    #@368
    if-ge v0, v1, :cond_32

    #@36a
    .line 508
    move-object/from16 v0, p0

    #@36c
    move/from16 v1, v18

    #@36e
    move-object/from16 v2, p4

    #@370
    move/from16 v3, v16

    #@372
    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@375
    move-result-wide v14

    #@376
    .line 509
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@378
    cmp-long v26, v14, v26

    #@37a
    if-gez v26, :cond_31

    #@37c
    .line 510
    add-int/lit8 v16, v16, 0x1

    #@37e
    .line 511
    not-long v14, v14

    #@37f
    .line 513
    :cond_31
    long-to-int v0, v14

    #@380
    move/from16 v18, v0

    #@382
    .line 515
    .end local v14    # "pairAndInc":J
    :cond_32
    move/from16 v0, v24

    #@384
    move/from16 v1, v23

    #@386
    move/from16 v2, v18

    #@388
    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    #@38b
    move-result v18

    #@38c
    .end local v4    # "c":I
    :cond_33
    move/from16 v17, v16

    #@38e
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_8

    #@390
    .line 506
    .end local v17    # "rightIndex":I
    .restart local v4    # "c":I
    .restart local v16    # "rightIndex":I
    :cond_34
    move-object/from16 v0, p0

    #@392
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@395
    move-result v18

    #@396
    goto :goto_13

    #@397
    .line 520
    .end local v4    # "c":I
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_35
    const/16 v18, 0x0

    #@399
    const/4 v8, 0x0

    #@39a
    :goto_14
    move/from16 v16, v17

    #@39c
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    goto/16 :goto_7

    #@39e
    .line 523
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_36
    const v26, 0xffff

    #@3a1
    and-int v5, v8, v26

    #@3a3
    .line 524
    .local v5, "leftCase":I
    const v26, 0xffff

    #@3a6
    and-int v13, v18, v26

    #@3a8
    .line 525
    .local v13, "rightCase":I
    if-eq v5, v13, :cond_3a

    #@3aa
    .line 526
    move/from16 v0, p2

    #@3ac
    and-int/lit16 v0, v0, 0x100

    #@3ae
    move/from16 v26, v0

    #@3b0
    if-nez v26, :cond_38

    #@3b2
    .line 527
    if-ge v5, v13, :cond_37

    #@3b4
    const/16 v26, -0x1

    #@3b6
    :goto_15
    return v26

    #@3b7
    :cond_37
    const/16 v26, 0x1

    #@3b9
    goto :goto_15

    #@3ba
    .line 529
    :cond_38
    if-ge v5, v13, :cond_39

    #@3bc
    const/16 v26, 0x1

    #@3be
    :goto_16
    return v26

    #@3bf
    :cond_39
    const/16 v26, -0x1

    #@3c1
    goto :goto_16

    #@3c2
    .line 532
    :cond_3a
    const/16 v26, 0x2

    #@3c4
    move/from16 v0, v26

    #@3c6
    if-ne v8, v0, :cond_3b

    #@3c8
    move/from16 v16, v17

    #@3ca
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move v6, v7

    #@3cb
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    goto/16 :goto_9

    #@3cd
    .line 533
    .end local v6    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v7    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_3b
    ushr-int/lit8 v8, v8, 0x10

    #@3cf
    .line 534
    ushr-int/lit8 v18, v18, 0x10

    #@3d1
    goto :goto_14

    #@3d2
    .line 540
    .end local v5    # "leftCase":I
    .end local v7    # "leftIndex":I
    .end local v13    # "rightCase":I
    .end local v17    # "rightIndex":I
    .end local v23    # "strengthIsPrimary":Z
    .restart local v6    # "leftIndex":I
    .restart local v16    # "rightIndex":I
    :cond_3c
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    #@3d5
    move-result v25

    #@3d6
    .line 542
    .local v25, "withCaseBits":Z
    move/from16 v16, p5

    #@3d8
    move/from16 v6, p5

    #@3da
    .line 543
    const/16 v18, 0x0

    #@3dc
    const/4 v8, 0x0

    #@3dd
    move v7, v6

    #@3de
    .line 545
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :goto_17
    if-nez v8, :cond_46

    #@3e0
    .line 546
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@3e3
    move-result v26

    #@3e4
    move/from16 v0, v26

    #@3e6
    if-ne v7, v0, :cond_3f

    #@3e8
    .line 547
    const/4 v8, 0x2

    #@3e9
    move/from16 v17, v16

    #@3eb
    .line 563
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :goto_18
    if-nez v18, :cond_3d

    #@3ed
    .line 564
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@3f0
    move-result v26

    #@3f1
    move/from16 v0, v17

    #@3f3
    move/from16 v1, v26

    #@3f5
    if-ne v0, v1, :cond_43

    #@3f7
    .line 565
    const/16 v18, 0x2

    #@3f9
    .line 581
    :cond_3d
    move/from16 v0, v18

    #@3fb
    if-ne v8, v0, :cond_49

    #@3fd
    .line 582
    const/16 v26, 0x2

    #@3ff
    move/from16 v0, v26

    #@401
    if-ne v8, v0, :cond_48

    #@403
    .line 606
    :cond_3e
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@406
    move-result v26

    #@407
    const/16 v27, 0x2

    #@409
    move/from16 v0, v26

    #@40b
    move/from16 v1, v27

    #@40d
    if-gt v0, v1, :cond_4e

    #@40f
    const/16 v26, 0x0

    #@411
    return v26

    #@412
    .line 550
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_3f
    add-int/lit8 v6, v7, 0x1

    #@414
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    move-object/from16 v0, p3

    #@416
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@419
    move-result v4

    #@41a
    .line 551
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@41c
    move/from16 v0, v26

    #@41e
    if-gt v4, v0, :cond_42

    #@420
    aget-char v8, p0, v4

    #@422
    .line 552
    :goto_19
    const/16 v26, 0xc00

    #@424
    move/from16 v0, v26

    #@426
    if-ge v8, v0, :cond_41

    #@428
    .line 553
    move-object/from16 v0, p0

    #@42a
    move-object/from16 v1, p3

    #@42c
    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@42f
    move-result-wide v14

    #@430
    .line 554
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@432
    cmp-long v26, v14, v26

    #@434
    if-gez v26, :cond_40

    #@436
    .line 555
    add-int/lit8 v6, v6, 0x1

    #@438
    .line 556
    not-long v14, v14

    #@439
    .line 558
    :cond_40
    long-to-int v8, v14

    #@43a
    .line 560
    .end local v14    # "pairAndInc":J
    :cond_41
    move/from16 v0, v24

    #@43c
    move/from16 v1, v25

    #@43e
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    #@441
    move-result v8

    #@442
    move v7, v6

    #@443
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto :goto_17

    #@444
    .line 551
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    :cond_42
    move-object/from16 v0, p0

    #@446
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@449
    move-result v8

    #@44a
    goto :goto_19

    #@44b
    .line 568
    .end local v4    # "c":I
    .end local v6    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v7    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_43
    add-int/lit8 v16, v17, 0x1

    #@44d
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move-object/from16 v0, p4

    #@44f
    move/from16 v1, v17

    #@451
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@454
    move-result v4

    #@455
    .line 569
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@457
    move/from16 v0, v26

    #@459
    if-gt v4, v0, :cond_47

    #@45b
    aget-char v18, p0, v4

    #@45d
    .line 570
    :goto_1a
    const/16 v26, 0xc00

    #@45f
    move/from16 v0, v18

    #@461
    move/from16 v1, v26

    #@463
    if-ge v0, v1, :cond_45

    #@465
    .line 571
    move-object/from16 v0, p0

    #@467
    move/from16 v1, v18

    #@469
    move-object/from16 v2, p4

    #@46b
    move/from16 v3, v16

    #@46d
    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@470
    move-result-wide v14

    #@471
    .line 572
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@473
    cmp-long v26, v14, v26

    #@475
    if-gez v26, :cond_44

    #@477
    .line 573
    add-int/lit8 v16, v16, 0x1

    #@479
    .line 574
    not-long v14, v14

    #@47a
    .line 576
    :cond_44
    long-to-int v0, v14

    #@47b
    move/from16 v18, v0

    #@47d
    .line 578
    .end local v14    # "pairAndInc":J
    :cond_45
    move/from16 v0, v24

    #@47f
    move/from16 v1, v25

    #@481
    move/from16 v2, v18

    #@483
    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    #@486
    move-result v18

    #@487
    .end local v4    # "c":I
    :cond_46
    move/from16 v17, v16

    #@489
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_18

    #@48b
    .line 569
    .end local v17    # "rightIndex":I
    .restart local v4    # "c":I
    .restart local v16    # "rightIndex":I
    :cond_47
    move-object/from16 v0, p0

    #@48d
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@490
    move-result v18

    #@491
    goto :goto_1a

    #@492
    .line 583
    .end local v4    # "c":I
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_48
    const/16 v18, 0x0

    #@494
    const/4 v8, 0x0

    #@495
    :goto_1b
    move/from16 v16, v17

    #@497
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    goto/16 :goto_17

    #@499
    .line 586
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_49
    const v26, 0xffff

    #@49c
    and-int v12, v8, v26

    #@49e
    .line 587
    .local v12, "leftTertiary":I
    const v26, 0xffff

    #@4a1
    and-int v22, v18, v26

    #@4a3
    .line 588
    .local v22, "rightTertiary":I
    move/from16 v0, v22

    #@4a5
    if-eq v12, v0, :cond_4d

    #@4a7
    .line 589
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    #@4aa
    move-result v26

    #@4ab
    if-eqz v26, :cond_4b

    #@4ad
    .line 593
    const/16 v26, 0x3

    #@4af
    move/from16 v0, v26

    #@4b1
    if-le v12, v0, :cond_4a

    #@4b3
    .line 594
    xor-int/lit8 v12, v12, 0x18

    #@4b5
    .line 596
    :cond_4a
    const/16 v26, 0x3

    #@4b7
    move/from16 v0, v22

    #@4b9
    move/from16 v1, v26

    #@4bb
    if-le v0, v1, :cond_4b

    #@4bd
    .line 597
    xor-int/lit8 v22, v22, 0x18

    #@4bf
    .line 600
    :cond_4b
    move/from16 v0, v22

    #@4c1
    if-ge v12, v0, :cond_4c

    #@4c3
    const/16 v26, -0x1

    #@4c5
    :goto_1c
    return v26

    #@4c6
    :cond_4c
    const/16 v26, 0x1

    #@4c8
    goto :goto_1c

    #@4c9
    .line 602
    :cond_4d
    const/16 v26, 0x2

    #@4cb
    move/from16 v0, v26

    #@4cd
    if-eq v8, v0, :cond_3e

    #@4cf
    .line 603
    ushr-int/lit8 v8, v8, 0x10

    #@4d1
    .line 604
    ushr-int/lit8 v18, v18, 0x10

    #@4d3
    goto :goto_1b

    #@4d4
    .line 608
    .end local v12    # "leftTertiary":I
    .end local v22    # "rightTertiary":I
    :cond_4e
    move/from16 v16, p5

    #@4d6
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move/from16 v6, p5

    #@4d8
    .line 609
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    const/16 v18, 0x0

    #@4da
    const/4 v8, 0x0

    #@4db
    move v7, v6

    #@4dc
    .line 611
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :goto_1d
    if-nez v8, :cond_58

    #@4de
    .line 612
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@4e1
    move-result v26

    #@4e2
    move/from16 v0, v26

    #@4e4
    if-ne v7, v0, :cond_51

    #@4e6
    .line 613
    const/4 v8, 0x2

    #@4e7
    move/from16 v17, v16

    #@4e9
    .line 629
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :goto_1e
    if-nez v18, :cond_4f

    #@4eb
    .line 630
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@4ee
    move-result v26

    #@4ef
    move/from16 v0, v17

    #@4f1
    move/from16 v1, v26

    #@4f3
    if-ne v0, v1, :cond_55

    #@4f5
    .line 631
    const/16 v18, 0x2

    #@4f7
    .line 647
    :cond_4f
    move/from16 v0, v18

    #@4f9
    if-ne v8, v0, :cond_5b

    #@4fb
    .line 648
    const/16 v26, 0x2

    #@4fd
    move/from16 v0, v26

    #@4ff
    if-ne v8, v0, :cond_5a

    #@501
    .line 661
    :cond_50
    const/16 v26, 0x0

    #@503
    return v26

    #@504
    .line 616
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    :cond_51
    add-int/lit8 v6, v7, 0x1

    #@506
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    move-object/from16 v0, p3

    #@508
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@50b
    move-result v4

    #@50c
    .line 617
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@50e
    move/from16 v0, v26

    #@510
    if-gt v4, v0, :cond_54

    #@512
    aget-char v8, p0, v4

    #@514
    .line 618
    :goto_1f
    const/16 v26, 0xc00

    #@516
    move/from16 v0, v26

    #@518
    if-ge v8, v0, :cond_53

    #@51a
    .line 619
    move-object/from16 v0, p0

    #@51c
    move-object/from16 v1, p3

    #@51e
    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@521
    move-result-wide v14

    #@522
    .line 620
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@524
    cmp-long v26, v14, v26

    #@526
    if-gez v26, :cond_52

    #@528
    .line 621
    add-int/lit8 v6, v6, 0x1

    #@52a
    .line 622
    not-long v14, v14

    #@52b
    .line 624
    :cond_52
    long-to-int v8, v14

    #@52c
    .line 626
    .end local v14    # "pairAndInc":J
    :cond_53
    move/from16 v0, v24

    #@52e
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    #@531
    move-result v8

    #@532
    move v7, v6

    #@533
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    goto :goto_1d

    #@534
    .line 617
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    :cond_54
    move-object/from16 v0, p0

    #@536
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@539
    move-result v8

    #@53a
    goto :goto_1f

    #@53b
    .line 634
    .end local v4    # "c":I
    .end local v6    # "leftIndex":I
    .end local v16    # "rightIndex":I
    .restart local v7    # "leftIndex":I
    .restart local v17    # "rightIndex":I
    :cond_55
    add-int/lit8 v16, v17, 0x1

    #@53d
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    move-object/from16 v0, p4

    #@53f
    move/from16 v1, v17

    #@541
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@544
    move-result v4

    #@545
    .line 635
    .restart local v4    # "c":I
    const/16 v26, 0x17f

    #@547
    move/from16 v0, v26

    #@549
    if-gt v4, v0, :cond_59

    #@54b
    aget-char v18, p0, v4

    #@54d
    .line 636
    :goto_20
    const/16 v26, 0xc00

    #@54f
    move/from16 v0, v18

    #@551
    move/from16 v1, v26

    #@553
    if-ge v0, v1, :cond_57

    #@555
    .line 637
    move-object/from16 v0, p0

    #@557
    move/from16 v1, v18

    #@559
    move-object/from16 v2, p4

    #@55b
    move/from16 v3, v16

    #@55d
    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    #@560
    move-result-wide v14

    #@561
    .line 638
    .restart local v14    # "pairAndInc":J
    const-wide/16 v26, 0x0

    #@563
    cmp-long v26, v14, v26

    #@565
    if-gez v26, :cond_56

    #@567
    .line 639
    add-int/lit8 v16, v16, 0x1

    #@569
    .line 640
    not-long v14, v14

    #@56a
    .line 642
    :cond_56
    long-to-int v0, v14

    #@56b
    move/from16 v18, v0

    #@56d
    .line 644
    .end local v14    # "pairAndInc":J
    :cond_57
    move/from16 v0, v24

    #@56f
    move/from16 v1, v18

    #@571
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    #@574
    move-result v18

    #@575
    .end local v4    # "c":I
    :cond_58
    move/from16 v17, v16

    #@577
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    goto/16 :goto_1e

    #@579
    .line 635
    .end local v17    # "rightIndex":I
    .restart local v4    # "c":I
    .restart local v16    # "rightIndex":I
    :cond_59
    move-object/from16 v0, p0

    #@57b
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    #@57e
    move-result v18

    #@57f
    goto :goto_20

    #@580
    .line 649
    .end local v4    # "c":I
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_5a
    const/16 v18, 0x0

    #@582
    const/4 v8, 0x0

    #@583
    :goto_21
    move/from16 v16, v17

    #@585
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    goto/16 :goto_1d

    #@587
    .line 652
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    :cond_5b
    const v26, 0xffff

    #@58a
    and-int v10, v8, v26

    #@58c
    .line 653
    .local v10, "leftQuaternary":I
    const v26, 0xffff

    #@58f
    and-int v20, v18, v26

    #@591
    .line 654
    .local v20, "rightQuaternary":I
    move/from16 v0, v20

    #@593
    if-eq v10, v0, :cond_5d

    #@595
    .line 655
    move/from16 v0, v20

    #@597
    if-ge v10, v0, :cond_5c

    #@599
    const/16 v26, -0x1

    #@59b
    :goto_22
    return v26

    #@59c
    :cond_5c
    const/16 v26, 0x1

    #@59e
    goto :goto_22

    #@59f
    .line 657
    :cond_5d
    const/16 v26, 0x2

    #@5a1
    move/from16 v0, v26

    #@5a3
    if-eq v8, v0, :cond_50

    #@5a5
    .line 658
    ushr-int/lit8 v8, v8, 0x10

    #@5a7
    .line 659
    ushr-int/lit8 v18, v18, 0x10

    #@5a9
    goto :goto_21

    #@5aa
    .end local v7    # "leftIndex":I
    .end local v10    # "leftQuaternary":I
    .end local v20    # "rightQuaternary":I
    .end local v25    # "withCaseBits":Z
    .restart local v6    # "leftIndex":I
    :cond_5e
    move/from16 v16, v17

    #@5ac
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    goto/16 :goto_5

    #@5ae
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :cond_5f
    move/from16 v17, v16

    #@5b0
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    move v6, v7

    #@5b1
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    goto/16 :goto_4

    #@5b3
    :cond_60
    move/from16 v16, v17

    #@5b5
    .end local v17    # "rightIndex":I
    .restart local v16    # "rightIndex":I
    goto/16 :goto_2

    #@5b7
    .end local v6    # "leftIndex":I
    .restart local v7    # "leftIndex":I
    :cond_61
    move/from16 v17, v16

    #@5b9
    .end local v16    # "rightIndex":I
    .restart local v17    # "rightIndex":I
    move v6, v7

    #@5ba
    .end local v7    # "leftIndex":I
    .restart local v6    # "leftIndex":I
    goto/16 :goto_1
.end method

.method private static getCases(IZI)I
    .locals 5
    .param p0, "variableTop"    # I
    .param p1, "strengthIsPrimary"    # Z
    .param p2, "pair"    # I

    #@0
    .prologue
    const v4, 0xffff

    #@3
    const/16 v2, 0x1000

    #@5
    const/16 v3, 0xc00

    #@7
    const/4 v1, 0x0

    #@8
    .line 784
    if-gt p2, v4, :cond_3

    #@a
    .line 786
    if-lt p2, v2, :cond_1

    #@c
    .line 789
    move v0, p2

    #@d
    .line 790
    .local v0, "ce":I
    and-int/lit8 p2, p2, 0x18

    #@f
    .line 791
    if-nez p1, :cond_0

    #@11
    and-int/lit16 v1, v0, 0x3e0

    #@13
    const/16 v2, 0x180

    #@15
    if-lt v1, v2, :cond_0

    #@17
    .line 792
    const/high16 v1, 0x80000

    #@19
    or-int/2addr p2, v1

    #@1a
    .line 816
    .end local v0    # "ce":I
    :cond_0
    :goto_0
    return p2

    #@1b
    .line 794
    :cond_1
    if-le p2, p0, :cond_2

    #@1d
    .line 795
    const/16 p2, 0x8

    #@1f
    goto :goto_0

    #@20
    .line 796
    :cond_2
    if-lt p2, v3, :cond_0

    #@22
    .line 797
    const/4 p2, 0x0

    #@23
    goto :goto_0

    #@24
    .line 802
    :cond_3
    and-int v0, p2, v4

    #@26
    .line 803
    .restart local v0    # "ce":I
    if-lt v0, v2, :cond_5

    #@28
    .line 804
    if-eqz p1, :cond_4

    #@2a
    const/high16 v1, -0x4000000

    #@2c
    and-int/2addr v1, p2

    #@2d
    if-nez v1, :cond_4

    #@2f
    .line 805
    and-int/lit8 p2, p2, 0x18

    #@31
    .line 804
    goto :goto_0

    #@32
    .line 807
    :cond_4
    const v1, 0x180018

    #@35
    and-int/2addr p2, v1

    #@36
    goto :goto_0

    #@37
    .line 809
    :cond_5
    if-le v0, p0, :cond_6

    #@39
    .line 810
    const p2, 0x80008

    #@3c
    goto :goto_0

    #@3d
    .line 812
    :cond_6
    sget-boolean v2, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@3f
    if-nez v2, :cond_8

    #@41
    if-lt v0, v3, :cond_7

    #@43
    const/4 v1, 0x1

    #@44
    :cond_7
    if-nez v1, :cond_8

    #@46
    new-instance v1, Ljava/lang/AssertionError;

    #@48
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@4b
    throw v1

    #@4c
    .line 813
    :cond_8
    const/4 p2, 0x0

    #@4d
    goto :goto_0
.end method

.method static getCharIndex(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 182
    const/16 v0, 0x17f

    #@2
    if-gt p0, v0, :cond_0

    #@4
    .line 183
    return p0

    #@5
    .line 184
    :cond_0
    const/16 v0, 0x2000

    #@7
    if-gt v0, p0, :cond_1

    #@9
    const/16 v0, 0x2040

    #@b
    if-ge p0, v0, :cond_1

    #@d
    .line 185
    add-int/lit16 v0, p0, -0x1e80

    #@f
    return v0

    #@10
    .line 190
    :cond_1
    const/4 v0, -0x1

    #@11
    return v0
.end method

.method public static getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I
    .locals 28
    .param p0, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p1, "settings"    # Landroid/icu/impl/coll/CollationSettings;
    .param p2, "primaries"    # [C

    #@0
    .prologue
    .line 202
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@4
    .line 203
    .local v13, "header":[C
    if-nez v13, :cond_0

    #@6
    const/16 v25, -0x1

    #@8
    return v25

    #@9
    .line 204
    :cond_0
    sget-boolean v25, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@b
    if-nez v25, :cond_2

    #@d
    const/16 v25, 0x0

    #@f
    aget-char v25, v13, v25

    #@11
    shr-int/lit8 v25, v25, 0x8

    #@13
    const/16 v26, 0x2

    #@15
    move/from16 v0, v25

    #@17
    move/from16 v1, v26

    #@19
    if-ne v0, v1, :cond_1

    #@1b
    const/16 v25, 0x1

    #@1d
    :goto_0
    if-nez v25, :cond_2

    #@1f
    new-instance v25, Ljava/lang/AssertionError;

    #@21
    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    #@24
    throw v25

    #@25
    :cond_1
    const/16 v25, 0x0

    #@27
    goto :goto_0

    #@28
    .line 205
    :cond_2
    sget-boolean v25, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@2a
    if-nez v25, :cond_4

    #@2c
    move-object/from16 v0, p2

    #@2e
    array-length v0, v0

    #@2f
    move/from16 v25, v0

    #@31
    const/16 v26, 0x180

    #@33
    move/from16 v0, v25

    #@35
    move/from16 v1, v26

    #@37
    if-ne v0, v1, :cond_3

    #@39
    const/16 v25, 0x1

    #@3b
    :goto_1
    if-nez v25, :cond_4

    #@3d
    new-instance v25, Ljava/lang/AssertionError;

    #@3f
    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v25

    #@43
    :cond_3
    const/16 v25, 0x0

    #@45
    goto :goto_1

    #@46
    .line 206
    :cond_4
    move-object/from16 v0, p2

    #@48
    array-length v0, v0

    #@49
    move/from16 v25, v0

    #@4b
    const/16 v26, 0x180

    #@4d
    move/from16 v0, v25

    #@4f
    move/from16 v1, v26

    #@51
    if-eq v0, v1, :cond_5

    #@53
    const/16 v25, -0x1

    #@55
    return v25

    #@56
    .line 209
    :cond_5
    move-object/from16 v0, p1

    #@58
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@5a
    move/from16 v25, v0

    #@5c
    and-int/lit8 v25, v25, 0xc

    #@5e
    if-nez v25, :cond_7

    #@60
    .line 212
    const/16 v18, 0xbff

    #@62
    .line 222
    .local v18, "miniVarTop":I
    :goto_2
    const/4 v9, 0x0

    #@63
    .line 223
    .local v9, "digitsAreReordered":Z
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@66
    move-result v25

    #@67
    if-eqz v25, :cond_10

    #@69
    .line 224
    const-wide/16 v20, 0x0

    #@6b
    .line 225
    .local v20, "prevStart":J
    const-wide/16 v6, 0x0

    #@6d
    .line 226
    .local v6, "beforeDigitStart":J
    const-wide/16 v10, 0x0

    #@6f
    .line 227
    .local v10, "digitStart":J
    const-wide/16 v4, 0x0

    #@71
    .line 228
    .local v4, "afterDigitStart":J
    const/16 v12, 0x1000

    #@73
    .line 229
    .local v12, "group":I
    :goto_3
    const/16 v25, 0x1008

    #@75
    .line 228
    move/from16 v0, v25

    #@77
    if-ge v12, v0, :cond_c

    #@79
    .line 231
    move-object/from16 v0, p0

    #@7b
    invoke-virtual {v0, v12}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    #@7e
    move-result-wide v22

    #@7f
    .line 232
    .local v22, "start":J
    move-object/from16 v0, p1

    #@81
    move-wide/from16 v1, v22

    #@83
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@86
    move-result-wide v22

    #@87
    .line 233
    const/16 v25, 0x1004

    #@89
    move/from16 v0, v25

    #@8b
    if-ne v12, v0, :cond_9

    #@8d
    .line 234
    move-wide/from16 v6, v20

    #@8f
    .line 235
    move-wide/from16 v10, v22

    #@91
    .line 230
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    #@93
    goto :goto_3

    #@94
    .line 214
    .end local v4    # "afterDigitStart":J
    .end local v6    # "beforeDigitStart":J
    .end local v9    # "digitsAreReordered":Z
    .end local v10    # "digitStart":J
    .end local v12    # "group":I
    .end local v18    # "miniVarTop":I
    .end local v20    # "prevStart":J
    .end local v22    # "start":J
    :cond_7
    const/16 v25, 0x0

    #@96
    aget-char v25, v13, v25

    #@98
    move/from16 v0, v25

    #@9a
    and-int/lit16 v14, v0, 0xff

    #@9c
    .line 215
    .local v14, "headerLength":I
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@9f
    move-result v25

    #@a0
    add-int/lit8 v15, v25, 0x1

    #@a2
    .line 216
    .local v15, "i":I
    if-lt v15, v14, :cond_8

    #@a4
    .line 217
    const/16 v25, -0x1

    #@a6
    return v25

    #@a7
    .line 219
    :cond_8
    aget-char v18, v13, v15

    #@a9
    .restart local v18    # "miniVarTop":I
    goto :goto_2

    #@aa
    .line 236
    .end local v14    # "headerLength":I
    .end local v15    # "i":I
    .restart local v4    # "afterDigitStart":J
    .restart local v6    # "beforeDigitStart":J
    .restart local v9    # "digitsAreReordered":Z
    .restart local v10    # "digitStart":J
    .restart local v12    # "group":I
    .restart local v20    # "prevStart":J
    .restart local v22    # "start":J
    :cond_9
    const-wide/16 v26, 0x0

    #@ac
    cmp-long v25, v22, v26

    #@ae
    if-eqz v25, :cond_6

    #@b0
    .line 237
    cmp-long v25, v22, v20

    #@b2
    if-gez v25, :cond_a

    #@b4
    .line 239
    const/16 v25, -0x1

    #@b6
    return v25

    #@b7
    .line 242
    :cond_a
    const-wide/16 v26, 0x0

    #@b9
    cmp-long v25, v10, v26

    #@bb
    if-eqz v25, :cond_b

    #@bd
    const-wide/16 v26, 0x0

    #@bf
    cmp-long v25, v4, v26

    #@c1
    if-nez v25, :cond_b

    #@c3
    cmp-long v25, v20, v6

    #@c5
    if-nez v25, :cond_b

    #@c7
    .line 243
    move-wide/from16 v4, v22

    #@c9
    .line 245
    :cond_b
    move-wide/from16 v20, v22

    #@cb
    goto :goto_4

    #@cc
    .line 248
    .end local v22    # "start":J
    :cond_c
    const/16 v25, 0x19

    #@ce
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, v25

    #@d2
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    #@d5
    move-result-wide v16

    #@d6
    .line 249
    .local v16, "latinStart":J
    move-object/from16 v0, p1

    #@d8
    move-wide/from16 v1, v16

    #@da
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    #@dd
    move-result-wide v16

    #@de
    .line 250
    cmp-long v25, v16, v20

    #@e0
    if-gez v25, :cond_d

    #@e2
    .line 251
    const/16 v25, -0x1

    #@e4
    return v25

    #@e5
    .line 253
    :cond_d
    const-wide/16 v26, 0x0

    #@e7
    cmp-long v25, v4, v26

    #@e9
    if-nez v25, :cond_e

    #@eb
    .line 254
    move-wide/from16 v4, v16

    #@ed
    .line 256
    :cond_e
    cmp-long v25, v6, v10

    #@ef
    if-gez v25, :cond_f

    #@f1
    cmp-long v25, v10, v4

    #@f3
    if-ltz v25, :cond_10

    #@f5
    .line 257
    :cond_f
    const/4 v9, 0x1

    #@f6
    .line 261
    .end local v4    # "afterDigitStart":J
    .end local v6    # "beforeDigitStart":J
    .end local v10    # "digitStart":J
    .end local v12    # "group":I
    .end local v16    # "latinStart":J
    .end local v20    # "prevStart":J
    :cond_10
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@fa
    move-object/from16 v24, v0

    #@fc
    .line 262
    .local v24, "table":[C
    const/4 v8, 0x0

    #@fd
    .local v8, "c":I
    :goto_5
    const/16 v25, 0x180

    #@ff
    move/from16 v0, v25

    #@101
    if-ge v8, v0, :cond_13

    #@103
    .line 263
    aget-char v19, v24, v8

    #@105
    .line 264
    .local v19, "p":I
    const/16 v25, 0x1000

    #@107
    move/from16 v0, v19

    #@109
    move/from16 v1, v25

    #@10b
    if-lt v0, v1, :cond_11

    #@10d
    .line 265
    const v25, 0xfc00

    #@110
    and-int v19, v19, v25

    #@112
    .line 271
    :goto_6
    move/from16 v0, v19

    #@114
    int-to-char v0, v0

    #@115
    move/from16 v25, v0

    #@117
    aput-char v25, p2, v8

    #@119
    .line 262
    add-int/lit8 v8, v8, 0x1

    #@11b
    goto :goto_5

    #@11c
    .line 266
    :cond_11
    move/from16 v0, v19

    #@11e
    move/from16 v1, v18

    #@120
    if-le v0, v1, :cond_12

    #@122
    .line 267
    const v25, 0xfff8

    #@125
    and-int v19, v19, v25

    #@127
    goto :goto_6

    #@128
    .line 269
    :cond_12
    const/16 v19, 0x0

    #@12a
    goto :goto_6

    #@12b
    .line 273
    .end local v19    # "p":I
    :cond_13
    if-nez v9, :cond_14

    #@12d
    move-object/from16 v0, p1

    #@12f
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@131
    move/from16 v25, v0

    #@133
    and-int/lit8 v25, v25, 0x2

    #@135
    if-eqz v25, :cond_15

    #@137
    .line 275
    :cond_14
    const/16 v8, 0x30

    #@139
    :goto_7
    const/16 v25, 0x39

    #@13b
    move/from16 v0, v25

    #@13d
    if-gt v8, v0, :cond_15

    #@13f
    const/16 v25, 0x0

    #@141
    aput-char v25, p2, v8

    #@143
    add-int/lit8 v8, v8, 0x1

    #@145
    goto :goto_7

    #@146
    .line 279
    :cond_15
    shl-int/lit8 v25, v18, 0x10

    #@148
    move-object/from16 v0, p1

    #@14a
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@14c
    move/from16 v26, v0

    #@14e
    or-int v25, v25, v26

    #@150
    return v25
.end method

.method private static getPrimaries(II)I
    .locals 2
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    #@0
    .prologue
    .line 738
    const v1, 0xffff

    #@3
    and-int v0, p1, v1

    #@5
    .line 739
    .local v0, "ce":I
    const/16 v1, 0x1000

    #@7
    if-lt v0, v1, :cond_0

    #@9
    const v1, -0x3ff0400

    #@c
    and-int/2addr v1, p1

    #@d
    return v1

    #@e
    .line 740
    :cond_0
    if-le v0, p0, :cond_1

    #@10
    const v1, -0x70008

    #@13
    and-int/2addr v1, p1

    #@14
    return v1

    #@15
    .line 741
    :cond_1
    const/16 v1, 0xc00

    #@17
    if-lt v0, v1, :cond_2

    #@19
    const/4 v1, 0x0

    #@1a
    return v1

    #@1b
    .line 742
    :cond_2
    return p1
.end method

.method private static getQuaternaries(II)I
    .locals 3
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    #@0
    .prologue
    const v1, 0xffff

    #@3
    const/16 v2, 0xc00

    #@5
    .line 872
    if-gt p1, v1, :cond_4

    #@7
    .line 874
    const/16 v1, 0x1000

    #@9
    if-lt p1, v1, :cond_2

    #@b
    .line 877
    and-int/lit16 v1, p1, 0x3e0

    #@d
    const/16 v2, 0x180

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 878
    const p1, -0x3ff0400

    #@14
    .line 898
    :cond_0
    :goto_0
    return p1

    #@15
    .line 880
    :cond_1
    const p1, 0xfc00

    #@18
    goto :goto_0

    #@19
    .line 882
    :cond_2
    if-le p1, p0, :cond_3

    #@1b
    .line 883
    const p1, 0xfc00

    #@1e
    goto :goto_0

    #@1f
    .line 884
    :cond_3
    if-lt p1, v2, :cond_0

    #@21
    .line 885
    const v1, 0xfff8

    #@24
    and-int/2addr p1, v1

    #@25
    goto :goto_0

    #@26
    .line 890
    :cond_4
    and-int v0, p1, v1

    #@28
    .line 891
    .local v0, "ce":I
    if-le v0, p0, :cond_5

    #@2a
    .line 892
    const p1, -0x3ff0400

    #@2d
    goto :goto_0

    #@2e
    .line 894
    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@30
    if-nez v1, :cond_7

    #@32
    if-lt v0, v2, :cond_6

    #@34
    const/4 v1, 0x1

    #@35
    :goto_1
    if-nez v1, :cond_7

    #@37
    new-instance v1, Ljava/lang/AssertionError;

    #@39
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3c
    throw v1

    #@3d
    :cond_6
    const/4 v1, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 895
    :cond_7
    const v1, -0x70008

    #@42
    and-int/2addr p1, v1

    #@43
    goto :goto_0
.end method

.method private static getSecondaries(II)I
    .locals 4
    .param p0, "variableTop"    # I
    .param p1, "pair"    # I

    #@0
    .prologue
    const v3, 0xffff

    #@3
    const/16 v1, 0x1000

    #@5
    const/16 v2, 0xc00

    #@7
    .line 755
    if-gt p1, v3, :cond_3

    #@9
    .line 757
    if-lt p1, v1, :cond_1

    #@b
    .line 758
    invoke-static {p1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    #@e
    move-result p1

    #@f
    .line 776
    :cond_0
    :goto_0
    return p1

    #@10
    .line 759
    :cond_1
    if-le p1, p0, :cond_2

    #@12
    .line 760
    const/16 p1, 0xc0

    #@14
    goto :goto_0

    #@15
    .line 761
    :cond_2
    if-lt p1, v2, :cond_0

    #@17
    .line 762
    const/4 p1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 766
    :cond_3
    and-int v0, p1, v3

    #@1b
    .line 767
    .local v0, "ce":I
    if-lt v0, v1, :cond_4

    #@1d
    .line 768
    const v1, 0x3e003e0

    #@20
    and-int/2addr v1, p1

    #@21
    const v2, 0x200020

    #@24
    add-int p1, v1, v2

    #@26
    goto :goto_0

    #@27
    .line 769
    :cond_4
    if-le v0, p0, :cond_5

    #@29
    .line 770
    const p1, 0xc000c0

    #@2c
    goto :goto_0

    #@2d
    .line 772
    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@2f
    if-nez v1, :cond_7

    #@31
    if-lt v0, v2, :cond_6

    #@33
    const/4 v1, 0x1

    #@34
    :goto_1
    if-nez v1, :cond_7

    #@36
    new-instance v1, Ljava/lang/AssertionError;

    #@38
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3b
    throw v1

    #@3c
    :cond_6
    const/4 v1, 0x0

    #@3d
    goto :goto_1

    #@3e
    .line 773
    :cond_7
    const/4 p1, 0x0

    #@3f
    goto :goto_0
.end method

.method private static getSecondariesFromOneShortCE(I)I
    .locals 1
    .param p0, "ce"    # I

    #@0
    .prologue
    .line 746
    and-int/lit16 p0, p0, 0x3e0

    #@2
    .line 747
    const/16 v0, 0x180

    #@4
    if-ge p0, v0, :cond_0

    #@6
    .line 748
    add-int/lit8 v0, p0, 0x20

    #@8
    return v0

    #@9
    .line 750
    :cond_0
    add-int/lit8 v0, p0, 0x20

    #@b
    shl-int/lit8 v0, v0, 0x10

    #@d
    or-int/lit16 v0, v0, 0xc0

    #@f
    return v0
.end method

.method private static getTertiaries(IZI)I
    .locals 6
    .param p0, "variableTop"    # I
    .param p1, "withCaseBits"    # Z
    .param p2, "pair"    # I

    #@0
    .prologue
    const v5, 0x70007

    #@3
    const v4, 0xffff

    #@6
    const/16 v1, 0x1000

    #@8
    const/16 v3, 0xc00

    #@a
    const/16 v2, 0x180

    #@c
    .line 820
    if-gt p2, v4, :cond_4

    #@e
    .line 822
    if-lt p2, v1, :cond_2

    #@10
    .line 825
    move v0, p2

    #@11
    .line 826
    .local v0, "ce":I
    if-eqz p1, :cond_1

    #@13
    .line 827
    and-int/lit8 v1, p2, 0x1f

    #@15
    add-int/lit8 p2, v1, 0x20

    #@17
    .line 828
    and-int/lit16 v1, v0, 0x3e0

    #@19
    if-lt v1, v2, :cond_0

    #@1b
    .line 829
    const/high16 v1, 0x280000

    #@1d
    or-int/2addr p2, v1

    #@1e
    .line 866
    .end local v0    # "ce":I
    :cond_0
    :goto_0
    return p2

    #@1f
    .line 832
    .restart local v0    # "ce":I
    :cond_1
    and-int/lit8 v1, p2, 0x7

    #@21
    add-int/lit8 p2, v1, 0x20

    #@23
    .line 833
    and-int/lit16 v1, v0, 0x3e0

    #@25
    if-lt v1, v2, :cond_0

    #@27
    .line 834
    const/high16 v1, 0x200000

    #@29
    or-int/2addr p2, v1

    #@2a
    goto :goto_0

    #@2b
    .line 837
    .end local v0    # "ce":I
    :cond_2
    if-le p2, p0, :cond_3

    #@2d
    .line 838
    and-int/lit8 v1, p2, 0x7

    #@2f
    add-int/lit8 p2, v1, 0x20

    #@31
    .line 839
    if-eqz p1, :cond_0

    #@33
    .line 840
    or-int/lit8 p2, p2, 0x8

    #@35
    goto :goto_0

    #@36
    .line 842
    :cond_3
    if-lt p2, v3, :cond_0

    #@38
    .line 843
    const/4 p2, 0x0

    #@39
    goto :goto_0

    #@3a
    .line 848
    :cond_4
    and-int v0, p2, v4

    #@3c
    .line 849
    .restart local v0    # "ce":I
    if-lt v0, v1, :cond_6

    #@3e
    .line 850
    if-eqz p1, :cond_5

    #@40
    .line 851
    const v1, 0x1f001f

    #@43
    and-int/2addr p2, v1

    #@44
    .line 855
    :goto_1
    const v1, 0x200020

    #@47
    add-int/2addr p2, v1

    #@48
    goto :goto_0

    #@49
    .line 853
    :cond_5
    and-int/2addr p2, v5

    #@4a
    goto :goto_1

    #@4b
    .line 856
    :cond_6
    if-le v0, p0, :cond_7

    #@4d
    .line 857
    and-int v1, p2, v5

    #@4f
    const v2, 0x200020

    #@52
    add-int p2, v1, v2

    #@54
    .line 858
    if-eqz p1, :cond_0

    #@56
    .line 859
    const v1, 0x80008

    #@59
    or-int/2addr p2, v1

    #@5a
    goto :goto_0

    #@5b
    .line 862
    :cond_7
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@5d
    if-nez v1, :cond_9

    #@5f
    if-lt v0, v3, :cond_8

    #@61
    const/4 v1, 0x1

    #@62
    :goto_2
    if-nez v1, :cond_9

    #@64
    new-instance v1, Ljava/lang/AssertionError;

    #@66
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@69
    throw v1

    #@6a
    :cond_8
    const/4 v1, 0x0

    #@6b
    goto :goto_2

    #@6c
    .line 863
    :cond_9
    const/4 p2, 0x0

    #@6d
    goto :goto_0
.end method

.method private static lookup([CI)I
    .locals 2
    .param p0, "table"    # [C
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 665
    sget-boolean v0, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    const/16 v0, 0x17f

    #@7
    if-le p1, v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 666
    :cond_1
    const/16 v0, 0x2000

    #@16
    if-gt v0, p1, :cond_2

    #@18
    const/16 v0, 0x2040

    #@1a
    if-ge p1, v0, :cond_2

    #@1c
    .line 667
    add-int/lit16 v0, p1, -0x2000

    #@1e
    add-int/lit16 v0, v0, 0x180

    #@20
    aget-char v0, p0, v0

    #@22
    return v0

    #@23
    .line 668
    :cond_2
    const v0, 0xfffe

    #@26
    if-ne p1, v0, :cond_3

    #@28
    .line 669
    const/4 v0, 0x3

    #@29
    return v0

    #@2a
    .line 670
    :cond_3
    const v0, 0xffff

    #@2d
    if-ne p1, v0, :cond_4

    #@2f
    .line 671
    const v0, 0xfca8

    #@32
    return v0

    #@33
    .line 673
    :cond_4
    return v1
.end method

.method private static nextPair([CIILjava/lang/CharSequence;I)J
    .locals 18
    .param p0, "table"    # [C
    .param p1, "c"    # I
    .param p2, "ce"    # I
    .param p3, "s16"    # Ljava/lang/CharSequence;
    .param p4, "sIndex"    # I

    #@0
    .prologue
    .line 682
    const/16 v13, 0xc00

    #@2
    move/from16 v0, p2

    #@4
    if-ge v0, v13, :cond_0

    #@6
    const/16 v13, 0x400

    #@8
    move/from16 v0, p2

    #@a
    if-ge v0, v13, :cond_1

    #@c
    .line 683
    :cond_0
    move/from16 v0, p2

    #@e
    int-to-long v14, v0

    #@f
    return-wide v14

    #@10
    .line 684
    :cond_1
    const/16 v13, 0x800

    #@12
    move/from16 v0, p2

    #@14
    if-lt v0, v13, :cond_2

    #@16
    .line 685
    move/from16 v0, p2

    #@18
    and-int/lit16 v13, v0, 0x3ff

    #@1a
    add-int/lit16 v6, v13, 0x1c0

    #@1c
    .line 686
    .local v6, "index":I
    add-int/lit8 v13, v6, 0x1

    #@1e
    aget-char v13, p0, v13

    #@20
    int-to-long v14, v13

    #@21
    const/16 v13, 0x10

    #@23
    shl-long/2addr v14, v13

    #@24
    aget-char v13, p0, v6

    #@26
    int-to-long v0, v13

    #@27
    move-wide/from16 v16, v0

    #@29
    or-long v14, v14, v16

    #@2b
    return-wide v14

    #@2c
    .line 690
    .end local v6    # "index":I
    :cond_2
    move/from16 v0, p2

    #@2e
    and-int/lit16 v13, v0, 0x3ff

    #@30
    add-int/lit16 v6, v13, 0x1c0

    #@32
    .line 691
    .restart local v6    # "index":I
    const/4 v5, 0x0

    #@33
    .line 692
    .local v5, "inc":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    #@36
    move-result v13

    #@37
    move/from16 v0, p4

    #@39
    if-eq v0, v13, :cond_5

    #@3b
    .line 695
    move/from16 v8, p4

    #@3d
    .line 696
    .local v8, "nextIndex":I
    add-int/lit8 v9, v8, 0x1

    #@3f
    .end local v8    # "nextIndex":I
    .local v9, "nextIndex":I
    move-object/from16 v0, p3

    #@41
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@44
    move-result v2

    #@45
    .line 697
    .local v2, "c2":I
    const/16 v13, 0x17f

    #@47
    if-le v2, v13, :cond_3

    #@49
    .line 698
    const/16 v13, 0x2000

    #@4b
    if-gt v13, v2, :cond_6

    #@4d
    const/16 v13, 0x2040

    #@4f
    if-ge v2, v13, :cond_6

    #@51
    .line 699
    add-int/lit16 v13, v2, -0x2000

    #@53
    add-int/lit16 v2, v13, 0x180

    #@55
    .line 708
    :cond_3
    :goto_0
    move v4, v6

    #@56
    .line 709
    .local v4, "i":I
    aget-char v3, p0, v4

    #@58
    .line 712
    .local v3, "head":I
    :cond_4
    shr-int/lit8 v13, v3, 0x9

    #@5a
    add-int/2addr v4, v13

    #@5b
    .line 713
    aget-char v3, p0, v4

    #@5d
    .line 714
    and-int/lit16 v12, v3, 0x1ff

    #@5f
    .line 715
    .local v12, "x":I
    if-lt v12, v2, :cond_4

    #@61
    .line 716
    if-ne v12, v2, :cond_5

    #@63
    .line 717
    move v6, v4

    #@64
    .line 718
    const/4 v5, 0x1

    #@65
    .line 722
    .end local v2    # "c2":I
    .end local v3    # "head":I
    .end local v4    # "i":I
    .end local v9    # "nextIndex":I
    .end local v12    # "x":I
    :cond_5
    aget-char v13, p0, v6

    #@67
    shr-int/lit8 v7, v13, 0x9

    #@69
    .line 723
    .local v7, "length":I
    const/4 v13, 0x1

    #@6a
    if-ne v7, v13, :cond_9

    #@6c
    .line 724
    const-wide/16 v14, 0x1

    #@6e
    return-wide v14

    #@6f
    .line 700
    .end local v7    # "length":I
    .restart local v2    # "c2":I
    .restart local v9    # "nextIndex":I
    :cond_6
    const v13, 0xfffe

    #@72
    if-eq v2, v13, :cond_7

    #@74
    const v13, 0xffff

    #@77
    if-ne v2, v13, :cond_8

    #@79
    .line 701
    :cond_7
    const/4 v2, -0x1

    #@7a
    .line 700
    goto :goto_0

    #@7b
    .line 703
    :cond_8
    const-wide/16 v14, 0x1

    #@7d
    return-wide v14

    #@7e
    .line 726
    .end local v2    # "c2":I
    .end local v9    # "nextIndex":I
    .restart local v7    # "length":I
    :cond_9
    add-int/lit8 v13, v6, 0x1

    #@80
    aget-char p2, p0, v13

    #@82
    .line 728
    const/4 v13, 0x2

    #@83
    if-ne v7, v13, :cond_b

    #@85
    .line 729
    move/from16 v0, p2

    #@87
    int-to-long v10, v0

    #@88
    .line 733
    .local v10, "result":J
    :goto_1
    if-eqz v5, :cond_a

    #@8a
    not-long v10, v10

    #@8b
    .end local v10    # "result":J
    :cond_a
    return-wide v10

    #@8c
    .line 731
    :cond_b
    add-int/lit8 v13, v6, 0x2

    #@8e
    aget-char v13, p0, v13

    #@90
    int-to-long v14, v13

    #@91
    const/16 v13, 0x10

    #@93
    shl-long/2addr v14, v13

    #@94
    move/from16 v0, p2

    #@96
    int-to-long v0, v0

    #@97
    move-wide/from16 v16, v0

    #@99
    or-long v10, v14, v16

    #@9b
    .restart local v10    # "result":J
    goto :goto_1
.end method
