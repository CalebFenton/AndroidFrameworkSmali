.class public Landroid/icu/impl/number/PatternStringUtils;
.super Ljava/lang/Object;
.source "PatternStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 18
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;
    .registers 22
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "toLocalized"    # Z

    .line 301
    move-object/from16 v0, p0

    if-nez v0, :cond_6

    .line 302
    const/4 v1, 0x0

    return-object v1

    .line 305
    :cond_6
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    const/16 v5, 0x15

    aput v5, v2, v4

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 306
    .local v2, "table":[[Ljava/lang/String;
    xor-int/lit8 v5, p2, 0x1

    .line 307
    .local v5, "standIdx":I
    move/from16 v6, p2

    .line 309
    .local v6, "localIdx":I
    aget-object v7, v2, v4

    const-string v8, "%"

    aput-object v8, v7, v5

    .line 310
    aget-object v7, v2, v4

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 311
    aget-object v7, v2, v3

    const-string v8, "\u2030"

    aput-object v8, v7, v5

    .line 312
    aget-object v7, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 313
    aget-object v7, v2, v1

    const-string v8, "."

    aput-object v8, v7, v5

    .line 314
    aget-object v7, v2, v1

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 315
    const/4 v7, 0x3

    aget-object v8, v2, v7

    const-string v9, ","

    aput-object v9, v8, v5

    .line 316
    aget-object v8, v2, v7

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 317
    const/4 v8, 0x4

    aget-object v9, v2, v8

    const-string v10, "-"

    aput-object v10, v9, v5

    .line 318
    aget-object v9, v2, v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 319
    const/4 v9, 0x5

    aget-object v10, v2, v9

    const-string v11, "+"

    aput-object v11, v10, v5

    .line 320
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 321
    const/4 v9, 0x6

    aget-object v10, v2, v9

    const-string v11, ";"

    aput-object v11, v10, v5

    .line 322
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 323
    const/4 v9, 0x7

    aget-object v10, v2, v9

    const-string v11, "@"

    aput-object v11, v10, v5

    .line 324
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 325
    const/16 v9, 0x8

    aget-object v10, v2, v9

    const-string v11, "E"

    aput-object v11, v10, v5

    .line 326
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 327
    const/16 v9, 0x9

    aget-object v10, v2, v9

    const-string v11, "*"

    aput-object v11, v10, v5

    .line 328
    aget-object v9, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 329
    const/16 v9, 0xa

    aget-object v10, v2, v9

    const-string v11, "#"

    aput-object v11, v10, v5

    .line 330
    aget-object v10, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 331
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_d3
    if-ge v10, v9, :cond_f1

    .line 332
    add-int/lit8 v11, v10, 0xb

    aget-object v11, v2, v11

    add-int/lit8 v12, v10, 0x30

    int-to-char v12, v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    .line 333
    add-int/lit8 v11, v10, 0xb

    aget-object v11, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    aput-object v12, v11, v6

    .line 331
    add-int/lit8 v10, v10, 0x1

    goto :goto_d3

    .line 338
    .end local v10    # "i":I
    :cond_f1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f2
    array-length v10, v2

    const/16 v11, 0x27

    if-ge v9, v10, :cond_108

    .line 339
    aget-object v10, v2, v9

    aget-object v12, v2, v9

    aget-object v12, v12, v6

    const/16 v13, 0x2019

    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 338
    add-int/lit8 v9, v9, 0x1

    goto :goto_f2

    .line 352
    .end local v9    # "i":I
    :cond_108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v9, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 354
    .local v10, "state":I
    const/4 v12, 0x0

    .local v12, "offset":I
    :goto_10f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_1d0

    .line 355
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 358
    .local v13, "ch":C
    if-ne v13, v11, :cond_156

    .line 359
    if-nez v10, :cond_125

    .line 360
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    const/4 v10, 0x1

    .line 362
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 363
    :cond_125
    if-ne v10, v3, :cond_12f

    .line 364
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    const/4 v10, 0x0

    .line 366
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 367
    :cond_12f
    if-ne v10, v1, :cond_136

    .line 368
    const/4 v10, 0x3

    .line 369
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 370
    :cond_136
    if-ne v10, v7, :cond_143

    .line 371
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    const/4 v10, 0x1

    .line 374
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 375
    :cond_143
    if-ne v10, v8, :cond_14a

    .line 376
    const/4 v10, 0x5

    .line 377
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 379
    :cond_14a
    nop

    .line 380
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const/4 v10, 0x4

    .line 383
    move/from16 v18, v3

    goto/16 :goto_1c8

    .line 387
    :cond_156
    if-eqz v10, :cond_165

    if-eq v10, v7, :cond_165

    if-ne v10, v8, :cond_15d

    goto :goto_165

    .line 419
    :cond_15d
    nop

    .line 420
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    const/4 v10, 0x2

    move/from16 v18, v3

    goto :goto_1c8

    .line 388
    :cond_165
    :goto_165
    array-length v14, v2

    move v15, v4

    :goto_167
    if-ge v15, v14, :cond_198

    aget-object v16, v2, v15

    .line 390
    .local v16, "pair":[Ljava/lang/String;
    aget-object v1, v16, v4

    aget-object v17, v16, v4

    move/from16 v18, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v12, v1, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 392
    aget-object v1, v16, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v12, v1

    .line 393
    if-eq v10, v7, :cond_188

    if-ne v10, v8, :cond_18c

    .line 394
    :cond_188
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    const/4 v10, 0x0

    .line 397
    :cond_18c
    aget-object v1, v16, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    goto :goto_1c8

    .line 388
    .end local v16    # "pair":[Ljava/lang/String;
    :cond_192
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v18

    const/4 v1, 0x2

    goto :goto_167

    .line 402
    :cond_198
    move/from16 v18, v3

    array-length v1, v2

    move v3, v4

    :goto_19c
    if-ge v3, v1, :cond_1bc

    aget-object v14, v2, v3

    .line 403
    .local v14, "pair":[Ljava/lang/String;
    aget-object v15, v14, v18

    aget-object v16, v14, v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v12, v15, v4, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_1b8

    .line 404
    if-nez v10, :cond_1b4

    .line 405
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    const/4 v10, 0x4

    .line 408
    :cond_1b4
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_1c8

    .line 402
    .end local v14    # "pair":[Ljava/lang/String;
    :cond_1b8
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x4

    goto :goto_19c

    .line 413
    :cond_1bc
    if-eq v10, v7, :cond_1c1

    const/4 v1, 0x4

    if-ne v10, v1, :cond_1c5

    .line 414
    :cond_1c1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    const/4 v10, 0x0

    .line 417
    :cond_1c5
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    .end local v13    # "ch":C
    :goto_1c8
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v18

    const/4 v1, 0x2

    const/4 v8, 0x4

    goto/16 :goto_10f

    .line 425
    .end local v12    # "offset":I
    :cond_1d0
    if-eq v10, v7, :cond_1d5

    const/4 v1, 0x4

    if-ne v10, v1, :cond_1d9

    .line 426
    :cond_1d5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    const/4 v10, 0x0

    .line 429
    :cond_1d9
    if-nez v10, :cond_1e0

    .line 432
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 430
    :cond_1e0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed localized pattern: unterminated quote"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I
    .registers 10
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I

    .line 243
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 244
    :cond_8
    const-string p0, " "

    .line 245
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 246
    .local v0, "startLength":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "\'\'"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    .line 247
    const-string v1, "\'"

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 248
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 250
    :cond_23
    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 253
    :cond_27
    const/16 v1, 0x27

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 254
    const/4 v3, 0x1

    .line 255
    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 257
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 258
    .local v5, "ch":C
    if-ne v5, v1, :cond_42

    .line 259
    add-int v6, p2, v3

    invoke-virtual {p1, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v3, v3, 0x2

    goto :goto_49

    .line 262
    :cond_42
    add-int v6, p2, v3

    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 255
    .end local v5    # "ch":C
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 266
    .end local v4    # "i":I
    :cond_4c
    add-int v2, p2, v3

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 268
    .end local v3    # "offset":I
    :goto_51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public static blacklist ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z
    .registers 9
    .param p0, "roundIncrDec"    # Ljava/math/BigDecimal;
    .param p1, "maxFrac"    # I

    .line 55
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 56
    .local v0, "roundIncr":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_c

    .line 57
    return v3

    .line 59
    :cond_c
    const/4 v2, 0x0

    if-gez p1, :cond_10

    .line 60
    return v2

    .line 62
    :cond_10
    const/4 v4, 0x0

    .line 63
    .local v4, "frac":I
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v5

    .line 64
    const/4 v4, 0x0

    :goto_15
    if-gt v4, p1, :cond_23

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v0, v5

    if-gtz v5, :cond_23

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v5

    goto :goto_15

    .line 65
    :cond_23
    if-le v4, p1, :cond_26

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    return v3
.end method

.method public static blacklist patternInfoToStringBuilder(Landroid/icu/impl/number/AffixPatternProvider;ZLandroid/icu/impl/number/PatternStringUtils$PatternSignType;ZLandroid/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V
    .registers 19
    .param p0, "patternInfo"    # Landroid/icu/impl/number/AffixPatternProvider;
    .param p1, "isPrefix"    # Z
    .param p2, "patternSignType"    # Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .param p3, "approximately"    # Z
    .param p4, "plural"    # Landroid/icu/impl/StandardPlural;
    .param p5, "perMilleReplacesPercent"    # Z
    .param p6, "output"    # Ljava/lang/StringBuilder;

    .line 449
    move-object/from16 v0, p6

    sget-object v1, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_10

    .line 450
    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->positiveHasPlusSign()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    .line 454
    .local v1, "plusReplacesMinusSign":Z
    :goto_11
    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-eq p2, v4, :cond_25

    .line 456
    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->negativeHasMinusSign()Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v1, :cond_25

    if-eqz p3, :cond_27

    :cond_25
    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v2

    .line 459
    .local v4, "useNegativeAffixPattern":Z
    :goto_28
    const/4 v5, 0x0

    .line 460
    .local v5, "flags":I
    if-eqz v4, :cond_2d

    .line 461
    or-int/lit16 v5, v5, 0x200

    .line 463
    :cond_2d
    if-eqz p1, :cond_31

    .line 464
    or-int/lit16 v5, v5, 0x100

    .line 466
    :cond_31
    if-eqz p4, :cond_39

    .line 467
    nop

    .line 468
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v6

    or-int/2addr v5, v6

    .line 473
    :cond_39
    if-eqz p1, :cond_4d

    if-eqz v4, :cond_3e

    goto :goto_4d

    .line 475
    :cond_3e
    sget-object v6, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne p2, v6, :cond_44

    .line 476
    const/4 v6, 0x1

    .local v6, "prependSign":Z
    goto :goto_4e

    .line 478
    .end local v6    # "prependSign":Z
    :cond_44
    if-nez v1, :cond_4b

    if-eqz p3, :cond_49

    goto :goto_4b

    :cond_49
    move v6, v2

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v6, v3

    .restart local v6    # "prependSign":Z
    :goto_4c
    goto :goto_4e

    .line 474
    .end local v6    # "prependSign":Z
    :cond_4d
    :goto_4d
    const/4 v6, 0x0

    .line 483
    .restart local v6    # "prependSign":Z
    :goto_4e
    const-string v7, "-"

    .line 484
    .local v7, "signSymbols":Ljava/lang/String;
    if-eqz p3, :cond_61

    .line 485
    if-eqz v1, :cond_57

    .line 486
    const-string v7, "~+"

    goto :goto_65

    .line 487
    :cond_57
    sget-object v8, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne p2, v8, :cond_5e

    .line 488
    const-string v7, "~-"

    goto :goto_65

    .line 490
    :cond_5e
    const-string v7, "~"

    goto :goto_65

    .line 492
    :cond_61
    if-eqz v1, :cond_65

    .line 493
    const-string v7, "+"

    .line 497
    :cond_65
    :goto_65
    invoke-interface {p0, v5}, Landroid/icu/impl/number/AffixPatternProvider;->length(I)I

    move-result v8

    if-eqz v6, :cond_6d

    move v9, v3

    goto :goto_6e

    :cond_6d
    move v9, v2

    :goto_6e
    add-int/2addr v8, v9

    .line 500
    .local v8, "length":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 501
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_73
    if-ge v9, v8, :cond_b1

    .line 503
    if-eqz v6, :cond_7c

    if-nez v9, :cond_7c

    .line 504
    const/16 v10, 0x2d

    .local v10, "candidate":C
    goto :goto_89

    .line 505
    .end local v10    # "candidate":C
    :cond_7c
    if-eqz v6, :cond_85

    .line 506
    add-int/lit8 v10, v9, -0x1

    invoke-interface {p0, v5, v10}, Landroid/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result v10

    .restart local v10    # "candidate":C
    goto :goto_89

    .line 508
    .end local v10    # "candidate":C
    :cond_85
    invoke-interface {p0, v5, v9}, Landroid/icu/impl/number/AffixPatternProvider;->charAt(II)C

    move-result v10

    .line 510
    .restart local v10    # "candidate":C
    :goto_89
    const/16 v11, 0x2d

    if-ne v10, v11, :cond_a3

    .line 511
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v3, :cond_98

    .line 512
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a3

    .line 514
    :cond_98
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 518
    :cond_a3
    :goto_a3
    if-eqz p5, :cond_ab

    const/16 v11, 0x25

    if-ne v10, v11, :cond_ab

    .line 519
    const/16 v10, 0x2030

    .line 521
    :cond_ab
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    .end local v10    # "candidate":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 523
    .end local v9    # "index":I
    :cond_b1
    return-void
.end method

.method public static blacklist propertiesToPatternString(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;
    .registers 33
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x64

    .line 86
    .local v1, "dosMax":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 87
    .local v2, "grouping1":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 88
    .local v4, "grouping2":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v5

    .line 89
    .local v5, "useGrouping":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 90
    .local v6, "paddingWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v7

    .line 91
    .local v7, "paddingLocation":Landroid/icu/impl/number/Padder$PadPosition;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "paddingString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 93
    .local v9, "minInt":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v10

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 94
    .local v10, "maxInt":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v11

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 95
    .local v11, "minFrac":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v12

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 96
    .local v12, "maxFrac":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v13

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 97
    .local v13, "minSig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v14

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 98
    .local v14, "maxSig":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v15

    .line 99
    .local v15, "alwaysShowDecimal":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyAsDecimal()Z

    move-result v16

    .line 100
    .local v16, "currencyAsDecimal":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 101
    .local v3, "exponentDigits":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v18

    .line 102
    .local v18, "exponentShowPlusSign":Z
    move/from16 v19, v5

    .end local v5    # "useGrouping":Z
    .local v19, "useGrouping":Z
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/AffixPatternProvider;

    move-result-object v5

    .line 105
    .local v5, "affixes":Landroid/icu/impl/number/AffixPatternProvider;
    move/from16 v20, v6

    .end local v6    # "paddingWidth":I
    .local v20, "paddingWidth":I
    const/16 v6, 0x100

    invoke-interface {v5, v6}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 109
    .local v6, "afterPrefixPos":I
    if-nez v19, :cond_9a

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v4, 0x0

    goto :goto_9d

    .line 112
    :cond_9a
    if-ne v2, v4, :cond_9d

    .line 113
    const/4 v2, 0x0

    .line 115
    :cond_9d
    :goto_9d
    add-int v21, v2, v4

    move/from16 v22, v4

    .end local v4    # "grouping2":I
    .local v22, "grouping2":I
    const/16 v23, 0x1

    add-int/lit8 v4, v21, 0x1

    .line 118
    .local v4, "groupingLength":I
    move-object/from16 v21, v7

    .end local v7    # "paddingLocation":Landroid/icu/impl/number/Padder$PadPosition;
    .local v21, "paddingLocation":Landroid/icu/impl/number/Padder$PadPosition;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v7

    .line 119
    .local v7, "roundingInterval":Ljava/math/BigDecimal;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v24

    .line 120
    .local v25, "digitsString":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    .line 121
    .local v24, "digitsStringScale":I
    move/from16 v26, v15

    .end local v15    # "alwaysShowDecimal":Z
    .local v26, "alwaysShowDecimal":Z
    const/4 v15, -0x1

    move-object/from16 v27, v8

    .end local v8    # "paddingString":Ljava/lang/String;
    .local v27, "paddingString":Ljava/lang/String;
    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-eq v14, v8, :cond_e0

    .line 123
    :goto_bf
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v8, v13, :cond_cd

    .line 124
    const/16 v8, 0x40

    move-object/from16 v15, v25

    .end local v25    # "digitsString":Ljava/lang/StringBuilder;
    .local v15, "digitsString":Ljava/lang/StringBuilder;
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bf

    .line 123
    .end local v15    # "digitsString":Ljava/lang/StringBuilder;
    .restart local v25    # "digitsString":Ljava/lang/StringBuilder;
    :cond_cd
    move-object/from16 v15, v25

    .line 126
    .end local v25    # "digitsString":Ljava/lang/StringBuilder;
    .restart local v15    # "digitsString":Ljava/lang/StringBuilder;
    :goto_cf
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v8, v14, :cond_db

    .line 127
    const/16 v8, 0x23

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 126
    :cond_db
    move-object/from16 v25, v7

    move/from16 v28, v13

    goto :goto_11c

    .line 129
    .end local v15    # "digitsString":Ljava/lang/StringBuilder;
    .restart local v25    # "digitsString":Ljava/lang/StringBuilder;
    :cond_e0
    move-object/from16 v15, v25

    .end local v25    # "digitsString":Ljava/lang/StringBuilder;
    .restart local v15    # "digitsString":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_118

    invoke-static {v7, v12}, Landroid/icu/impl/number/PatternStringUtils;->ignoreRoundingIncrement(Ljava/math/BigDecimal;I)Z

    move-result v8

    if-nez v8, :cond_118

    .line 131
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    neg-int v8, v8

    .line 133
    .end local v24    # "digitsStringScale":I
    .local v8, "digitsStringScale":I
    move/from16 v24, v8

    .end local v8    # "digitsStringScale":I
    .restart local v24    # "digitsStringScale":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "str":Ljava/lang/String;
    move-object/from16 v25, v7

    move/from16 v28, v13

    const/4 v7, 0x0

    .end local v7    # "roundingInterval":Ljava/math/BigDecimal;
    .end local v13    # "minSig":I
    .local v25, "roundingInterval":Ljava/math/BigDecimal;
    .local v28, "minSig":I
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v7, 0x2d

    if-ne v13, v7, :cond_114

    .line 136
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v13, v23

    invoke-virtual {v15, v8, v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_11c

    .line 138
    :cond_114
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11c

    .line 129
    .end local v8    # "str":Ljava/lang/String;
    .end local v25    # "roundingInterval":Ljava/math/BigDecimal;
    .end local v28    # "minSig":I
    .restart local v7    # "roundingInterval":Ljava/math/BigDecimal;
    .restart local v13    # "minSig":I
    :cond_118
    move-object/from16 v25, v7

    move/from16 v28, v13

    .line 141
    .end local v7    # "roundingInterval":Ljava/math/BigDecimal;
    .end local v13    # "minSig":I
    .restart local v25    # "roundingInterval":Ljava/math/BigDecimal;
    .restart local v28    # "minSig":I
    :goto_11c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int v7, v7, v24

    const/16 v8, 0x30

    if-ge v7, v9, :cond_12b

    .line 142
    const/4 v7, 0x0

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_11c

    .line 141
    :cond_12b
    move/from16 v7, v24

    .line 144
    .end local v24    # "digitsStringScale":I
    .local v7, "digitsStringScale":I
    :goto_12d
    neg-int v13, v7

    if-ge v13, v11, :cond_136

    .line 145
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v7, v7, -0x1

    goto :goto_12d

    .line 150
    :cond_136
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 151
    .local v13, "m0":I
    if-eq v10, v1, :cond_14a

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/16 v23, 0x1

    add-int/lit8 v24, v24, -0x1

    goto :goto_14c

    :cond_14a
    add-int/lit8 v24, v13, -0x1

    .line 152
    .end local v13    # "m0":I
    .local v24, "m0":I
    :goto_14c
    if-eq v12, v1, :cond_154

    neg-int v13, v12

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_155

    :cond_154
    move v13, v7

    .line 153
    .local v13, "mN":I
    :goto_155
    move/from16 v29, v24

    move/from16 v8, v29

    .local v8, "magnitude":I
    :goto_159
    if-lt v8, v13, :cond_1b6

    .line 154
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    add-int v29, v29, v7

    sub-int v29, v29, v8

    move/from16 v30, v4

    const/16 v23, 0x1

    .end local v4    # "groupingLength":I
    .local v30, "groupingLength":I
    add-int/lit8 v4, v29, -0x1

    .line 155
    .local v4, "di":I
    if-ltz v4, :cond_17c

    move/from16 v29, v7

    .end local v7    # "digitsStringScale":I
    .local v29, "digitsStringScale":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v4, v7, :cond_174

    goto :goto_17e

    .line 158
    :cond_174
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_183

    .line 155
    .end local v29    # "digitsStringScale":I
    .restart local v7    # "digitsStringScale":I
    :cond_17c
    move/from16 v29, v7

    .line 156
    .end local v7    # "digitsStringScale":I
    .restart local v29    # "digitsStringScale":I
    :goto_17e
    const/16 v7, 0x23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :goto_183
    if-nez v8, :cond_196

    if-nez v26, :cond_189

    if-gez v13, :cond_196

    .line 162
    :cond_189
    if-eqz v16, :cond_191

    .line 163
    const/16 v7, 0xa4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_196

    .line 165
    :cond_191
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_196
    :goto_196
    if-nez v19, :cond_199

    .line 169
    goto :goto_1af

    .line 172
    :cond_199
    const/16 v7, 0x2c

    if-lez v8, :cond_1a2

    if-ne v8, v2, :cond_1a2

    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_1a2
    if-le v8, v2, :cond_1af

    if-lez v22, :cond_1af

    sub-int v31, v8, v2

    rem-int v31, v31, v22

    if-nez v31, :cond_1af

    .line 177
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .end local v4    # "di":I
    :cond_1af
    :goto_1af
    add-int/lit8 v8, v8, -0x1

    move/from16 v7, v29

    move/from16 v4, v30

    goto :goto_159

    .end local v29    # "digitsStringScale":I
    .end local v30    # "groupingLength":I
    .local v4, "groupingLength":I
    .restart local v7    # "digitsStringScale":I
    :cond_1b6
    move/from16 v30, v4

    move/from16 v29, v7

    .line 182
    .end local v4    # "groupingLength":I
    .end local v7    # "digitsStringScale":I
    .end local v8    # "magnitude":I
    .restart local v29    # "digitsStringScale":I
    .restart local v30    # "groupingLength":I
    const/4 v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v3, v4, :cond_1d8

    .line 183
    const/16 v4, 0x45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    if-eqz v18, :cond_1cd

    .line 185
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_1cd
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1ce
    if-ge v4, v3, :cond_1d8

    .line 188
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ce

    .line 193
    .end local v4    # "i":I
    :cond_1d8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 194
    .local v4, "beforeSuffixPos":I
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    if-lez v20, :cond_24a

    .line 198
    :goto_1e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v7, v20, v7

    if-lez v7, :cond_1f6

    .line 199
    const/16 v7, 0x23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e6

    .line 203
    :cond_1f6
    sget-object v7, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x2a

    packed-switch v7, :pswitch_data_274

    move-object/from16 v7, v27

    move/from16 v27, v1

    .end local v1    # "dosMax":I
    .local v7, "paddingString":Ljava/lang/String;
    .local v27, "dosMax":I
    goto :goto_24e

    .line 221
    .end local v7    # "paddingString":Ljava/lang/String;
    .restart local v1    # "dosMax":I
    .local v27, "paddingString":Ljava/lang/String;
    :pswitch_208
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v8, v27

    .end local v27    # "paddingString":Ljava/lang/String;
    .local v8, "paddingString":Ljava/lang/String;
    invoke-static {v8, v0, v7}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move/from16 v27, v1

    move-object v7, v8

    goto :goto_24e

    .line 217
    .end local v8    # "paddingString":Ljava/lang/String;
    .restart local v27    # "paddingString":Ljava/lang/String;
    :pswitch_218
    move-object/from16 v7, v27

    .end local v27    # "paddingString":Ljava/lang/String;
    .restart local v7    # "paddingString":Ljava/lang/String;
    invoke-static {v7, v0, v4}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    .line 218
    invoke-virtual {v0, v4, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 219
    move/from16 v27, v1

    goto :goto_24e

    .line 211
    .end local v7    # "paddingString":Ljava/lang/String;
    .restart local v27    # "paddingString":Ljava/lang/String;
    :pswitch_223
    move-object/from16 v7, v27

    .end local v27    # "paddingString":Ljava/lang/String;
    .restart local v7    # "paddingString":Ljava/lang/String;
    invoke-static {v7, v0, v6}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v17

    .line 212
    .local v17, "addedLength":I
    invoke-virtual {v0, v6, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v8, v17, 0x1

    add-int/2addr v6, v8

    .line 214
    add-int/lit8 v8, v17, 0x1

    add-int/2addr v4, v8

    .line 215
    move/from16 v27, v1

    goto :goto_24e

    .line 205
    .end local v7    # "paddingString":Ljava/lang/String;
    .end local v17    # "addedLength":I
    .restart local v27    # "paddingString":Ljava/lang/String;
    :pswitch_235
    move-object/from16 v7, v27

    .end local v27    # "paddingString":Ljava/lang/String;
    .restart local v7    # "paddingString":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v17

    .line 206
    .restart local v17    # "addedLength":I
    move/from16 v27, v1

    const/16 v1, 0x2a

    .end local v1    # "dosMax":I
    .local v27, "dosMax":I
    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v1, v17, 0x1

    add-int/2addr v6, v1

    .line 208
    add-int/lit8 v1, v17, 0x1

    add-int/2addr v4, v1

    .line 209
    goto :goto_24e

    .line 197
    .end local v7    # "paddingString":Ljava/lang/String;
    .end local v17    # "addedLength":I
    .restart local v1    # "dosMax":I
    .local v27, "paddingString":Ljava/lang/String;
    :cond_24a
    move-object/from16 v7, v27

    move/from16 v27, v1

    .line 229
    .end local v1    # "dosMax":I
    .restart local v7    # "paddingString":Ljava/lang/String;
    .local v27, "dosMax":I
    :goto_24e
    invoke-interface {v5}, Landroid/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v1

    if-eqz v1, :cond_26e

    .line 230
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    const/16 v1, 0x300

    invoke-interface {v5, v1}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, v0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 235
    const/16 v1, 0x200

    invoke-interface {v5, v1}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_26e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_235
        :pswitch_223
        :pswitch_218
        :pswitch_208
    .end packed-switch
.end method

.method public static blacklist resolveSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Landroid/icu/impl/number/Modifier$Signum;)Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .registers 4
    .param p0, "signDisplay"    # Landroid/icu/number/NumberFormatter$SignDisplay;
    .param p1, "signum"    # Landroid/icu/impl/number/Modifier$Signum;

    .line 526
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$number$NumberFormatter$SignDisplay:[I

    invoke-virtual {p0}, Landroid/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    goto :goto_5a

    .line 577
    :pswitch_c
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 566
    :pswitch_f
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_78

    .line 574
    goto :goto_5a

    .line 572
    :pswitch_1b
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 568
    :pswitch_1e
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 553
    :pswitch_21
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_84

    .line 562
    goto :goto_5a

    .line 560
    :pswitch_2d
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 558
    :pswitch_30
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 555
    :pswitch_33
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 541
    :pswitch_36
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_90

    .line 549
    goto :goto_5a

    .line 547
    :pswitch_42
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 544
    :pswitch_45
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 529
    :pswitch_48
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Landroid/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 537
    goto :goto_5a

    .line 535
    :pswitch_54
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 532
    :pswitch_57
    sget-object v0, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0

    .line 583
    :goto_5a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_36
        :pswitch_36
        :pswitch_21
        :pswitch_21
        :pswitch_f
        :pswitch_f
        :pswitch_c
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_30
        :pswitch_2d
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_57
        :pswitch_57
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method
