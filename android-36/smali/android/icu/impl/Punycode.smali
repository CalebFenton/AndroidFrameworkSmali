.class public final Landroid/icu/impl/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# static fields
.field private static final blacklist BASE:I = 0x24

.field private static final blacklist CAPITAL_A:I = 0x41

.field private static final blacklist CAPITAL_Z:I = 0x5a

.field private static final blacklist DAMP:I = 0x2bc

.field private static final blacklist DECODE_MAX_CHARS:I = 0x7d0

.field private static final blacklist DELIMITER:C = '-'

.field private static final blacklist ENCODE_MAX_CODE_UNITS:I = 0x3e8

.field private static final blacklist HYPHEN:C = '-'

.field private static final blacklist INITIAL_BIAS:I = 0x48

.field private static final blacklist INITIAL_N:I = 0x80

.field private static final blacklist SKEW:I = 0x26

.field private static final blacklist SMALL_A:I = 0x61

.field private static final blacklist SMALL_Z:I = 0x7a

.field private static final blacklist TMAX:I = 0x1a

.field private static final blacklist TMIN:I = 0x1

.field private static final blacklist ZERO:I = 0x30


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist adaptBias(IIZ)I
    .registers 6
    .param p0, "delta"    # I
    .param p1, "length"    # I
    .param p2, "firstTime"    # Z

    .line 47
    if-eqz p2, :cond_5

    .line 48
    div-int/lit16 p0, p0, 0x2bc

    goto :goto_7

    .line 50
    :cond_5
    div-int/lit8 p0, p0, 0x2

    .line 52
    :goto_7
    div-int v0, p0, p1

    add-int/2addr p0, v0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "count":I
    :goto_b
    const/16 v1, 0x1c7

    if-le p0, v1, :cond_14

    .line 56
    div-int/lit8 p0, p0, 0x23

    .line 55
    add-int/lit8 v0, v0, 0x24

    goto :goto_b

    .line 59
    :cond_14
    mul-int/lit8 v1, p0, 0x24

    add-int/lit8 v2, p0, 0x26

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private static blacklist asciiCaseMap(CZ)C
    .registers 3
    .param p0, "b"    # C
    .param p1, "uppercase"    # Z

    .line 86
    if-eqz p1, :cond_e

    .line 87
    const/16 v0, 0x61

    if-gt v0, p0, :cond_19

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_19

    .line 88
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    goto :goto_19

    .line 91
    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_19

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_19

    .line 92
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 95
    :cond_19
    :goto_19
    return p0
.end method

.method public static blacklist decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .registers 27
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "caseFlags"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 279
    .local v2, "srcLength":I
    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_185

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v3, "dest":Ljava/lang/StringBuilder;
    move v4, v2

    .local v4, "j":I
    :cond_16
    if-lez v4, :cond_23

    .line 296
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_16

    .line 297
    nop

    .line 300
    :cond_23
    move v5, v4

    .local v5, "destCPCount":I
    move v6, v4

    .line 302
    .local v6, "basicLength":I
    const/4 v4, 0x0

    :goto_26
    const/4 v7, 0x0

    const-string v8, "Illegal char found"

    if-ge v4, v6, :cond_4c

    .line 303
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 304
    .local v9, "b":C
    invoke-static {v9}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 307
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    if-eqz v1, :cond_43

    array-length v7, v1

    if-ge v4, v7, :cond_43

    .line 310
    invoke-static {v9}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v7

    aput-boolean v7, v1, v4

    .line 302
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 305
    :cond_46
    new-instance v10, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v10, v8, v7}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v10

    .line 315
    .end local v9    # "b":C
    :cond_4c
    const/16 v9, 0x80

    .line 316
    .local v9, "n":I
    const/4 v10, 0x0

    .line 317
    .local v10, "i":I
    const/16 v11, 0x48

    .line 318
    .local v11, "bias":I
    const v12, 0x3b9aca00

    .line 325
    .local v12, "firstSupplementaryIndex":I
    if-lez v6, :cond_59

    add-int/lit8 v13, v6, 0x1

    goto :goto_5a

    :cond_59
    move v13, v7

    .local v13, "in":I
    :goto_5a
    if-ge v13, v2, :cond_184

    .line 335
    move v14, v10

    .local v14, "oldi":I
    const/4 v15, 0x1

    .local v15, "w":I
    const/16 v16, 0x24

    move/from16 v24, v16

    move/from16 v16, v7

    move/from16 v7, v24

    .line 336
    .local v7, "k":I
    :goto_66
    move/from16 v17, v4

    .end local v4    # "j":I
    .local v17, "j":I
    if-ge v13, v2, :cond_17b

    .line 340
    add-int/lit8 v18, v13, 0x1

    .end local v13    # "in":I
    .local v18, "in":I
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/impl/Punycode;->decodeDigit(I)I

    move-result v13

    .line 341
    .local v13, "digit":I
    if-ltz v13, :cond_16d

    .line 344
    const v19, 0x7fffffff

    sub-int v20, v19, v10

    div-int v4, v20, v15

    if-gt v13, v4, :cond_164

    .line 349
    mul-int v4, v13, v15

    add-int/2addr v10, v4

    .line 350
    sub-int v4, v7, v11

    .line 351
    .local v4, "t":I
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "destCPCount":I
    .local v20, "destCPCount":I
    if-ge v4, v5, :cond_8b

    .line 352
    const/4 v4, 0x1

    goto :goto_91

    .line 353
    :cond_8b
    add-int/lit8 v5, v11, 0x1a

    if-lt v7, v5, :cond_91

    .line 354
    const/16 v4, 0x1a

    .line 356
    :cond_91
    :goto_91
    if-ge v13, v4, :cond_142

    .line 357
    nop

    .line 372
    add-int/lit8 v5, v20, 0x1

    .line 373
    .end local v20    # "destCPCount":I
    .restart local v5    # "destCPCount":I
    move/from16 v21, v4

    .end local v4    # "t":I
    .local v21, "t":I
    sub-int v4, v10, v14

    move/from16 v22, v6

    if-nez v14, :cond_a0

    const/4 v6, 0x1

    goto :goto_a2

    :cond_a0
    move/from16 v6, v16

    .end local v6    # "basicLength":I
    .local v22, "basicLength":I
    :goto_a2
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v11

    .line 379
    div-int v4, v10, v5

    sub-int v6, v19, v9

    if-gt v4, v6, :cond_139

    .line 384
    div-int v4, v10, v5

    add-int/2addr v9, v4

    .line 385
    rem-int/2addr v10, v5

    .line 389
    const v4, 0x10ffff

    if-gt v9, v4, :cond_12e

    invoke-static {v9}, Landroid/icu/impl/Punycode;->isSurrogate(I)Z

    move-result v4

    if-nez v4, :cond_12e

    .line 395
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 408
    .local v4, "cpLength":I
    if-gt v10, v12, :cond_cd

    .line 409
    move v6, v10

    .line 410
    .local v6, "codeUnitIndex":I
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "destCPCount":I
    .restart local v20    # "destCPCount":I
    if-le v4, v5, :cond_ca

    .line 411
    move v5, v6

    move v12, v5

    .end local v12    # "firstSupplementaryIndex":I
    .local v5, "firstSupplementaryIndex":I
    goto :goto_d5

    .line 413
    .end local v5    # "firstSupplementaryIndex":I
    .restart local v12    # "firstSupplementaryIndex":I
    :cond_ca
    add-int/lit8 v12, v12, 0x1

    goto :goto_d5

    .line 416
    .end local v6    # "codeUnitIndex":I
    .end local v20    # "destCPCount":I
    .local v5, "destCPCount":I
    :cond_cd
    move/from16 v20, v5

    .end local v5    # "destCPCount":I
    .restart local v20    # "destCPCount":I
    sub-int v5, v10, v12

    invoke-virtual {v3, v12, v5}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v6

    .line 420
    .restart local v6    # "codeUnitIndex":I
    :goto_d5
    if-eqz v1, :cond_105

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v23, v7

    .end local v7    # "k":I
    .local v23, "k":I
    array-length v7, v1

    if-gt v5, v7, :cond_107

    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v6, v5, :cond_f1

    .line 422
    add-int v5, v6, v4

    .line 424
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    .line 422
    invoke-static {v1, v6, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :cond_f1
    add-int/lit8 v5, v18, -0x1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v5

    aput-boolean v5, v1, v6

    .line 428
    const/4 v5, 0x2

    if-ne v4, v5, :cond_107

    .line 429
    add-int/lit8 v5, v6, 0x1

    aput-boolean v16, v1, v5

    goto :goto_107

    .line 420
    .end local v23    # "k":I
    .restart local v7    # "k":I
    :cond_105
    move/from16 v23, v7

    .line 432
    .end local v7    # "k":I
    .restart local v23    # "k":I
    :cond_107
    :goto_107
    const/4 v5, 0x1

    if-ne v4, v5, :cond_10f

    .line 434
    int-to-char v5, v9

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_11f

    .line 437
    :cond_10f
    invoke-static {v9}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v5, v6, 0x1

    invoke-static {v9}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 440
    :goto_11f
    nop

    .end local v6    # "codeUnitIndex":I
    add-int/lit8 v10, v10, 0x1

    .line 441
    move/from16 v7, v16

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v5, v20

    move/from16 v6, v22

    goto/16 :goto_5a

    .line 389
    .end local v4    # "cpLength":I
    .end local v20    # "destCPCount":I
    .end local v23    # "k":I
    .restart local v5    # "destCPCount":I
    .restart local v7    # "k":I
    :cond_12e
    move/from16 v20, v5

    move/from16 v23, v7

    .line 391
    .end local v5    # "destCPCount":I
    .end local v7    # "k":I
    .restart local v20    # "destCPCount":I
    .restart local v23    # "k":I
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 381
    .end local v20    # "destCPCount":I
    .end local v23    # "k":I
    .restart local v5    # "destCPCount":I
    .restart local v7    # "k":I
    :cond_139
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "destCPCount":I
    .restart local v20    # "destCPCount":I
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v4, v8, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 360
    .end local v21    # "t":I
    .end local v22    # "basicLength":I
    .local v4, "t":I
    .local v6, "basicLength":I
    :cond_142
    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v7

    .end local v4    # "t":I
    .end local v6    # "basicLength":I
    .end local v7    # "k":I
    .restart local v21    # "t":I
    .restart local v22    # "basicLength":I
    .restart local v23    # "k":I
    rsub-int/lit8 v4, v21, 0x24

    div-int v4, v19, v4

    if-gt v15, v4, :cond_15d

    .line 364
    rsub-int/lit8 v4, v21, 0x24

    mul-int/2addr v15, v4

    .line 335
    add-int/lit8 v7, v23, 0x24

    move/from16 v4, v17

    move/from16 v13, v18

    move/from16 v5, v20

    move/from16 v6, v22

    .end local v23    # "k":I
    .restart local v7    # "k":I
    goto/16 :goto_66

    .line 362
    .end local v7    # "k":I
    .restart local v23    # "k":I
    :cond_15d
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 346
    .end local v20    # "destCPCount":I
    .end local v21    # "t":I
    .end local v22    # "basicLength":I
    .end local v23    # "k":I
    .restart local v5    # "destCPCount":I
    .restart local v6    # "basicLength":I
    .restart local v7    # "k":I
    :cond_164
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "destCPCount":I
    .restart local v20    # "destCPCount":I
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v4, v8, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 342
    .end local v20    # "destCPCount":I
    .restart local v5    # "destCPCount":I
    :cond_16d
    move/from16 v20, v5

    move/from16 v22, v6

    .end local v5    # "destCPCount":I
    .end local v6    # "basicLength":I
    .restart local v20    # "destCPCount":I
    .restart local v22    # "basicLength":I
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    const-string v5, "Invalid char found"

    move/from16 v6, v16

    invoke-direct {v4, v5, v6}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 337
    .end local v18    # "in":I
    .end local v20    # "destCPCount":I
    .end local v22    # "basicLength":I
    .restart local v5    # "destCPCount":I
    .restart local v6    # "basicLength":I
    .local v13, "in":I
    :cond_17b
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "destCPCount":I
    .restart local v20    # "destCPCount":I
    new-instance v4, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v4, v8, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 442
    .end local v7    # "k":I
    .end local v14    # "oldi":I
    .end local v15    # "w":I
    .end local v17    # "j":I
    .end local v20    # "destCPCount":I
    .local v4, "j":I
    .restart local v5    # "destCPCount":I
    :cond_184
    return-object v3

    .line 280
    .end local v3    # "dest":Ljava/lang/StringBuilder;
    .end local v4    # "j":I
    .end local v5    # "destCPCount":I
    .end local v6    # "basicLength":I
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "bias":I
    .end local v12    # "firstSupplementaryIndex":I
    .end local v13    # "in":I
    :cond_185
    new-instance v3, Landroid/icu/util/ICUInputTooLongException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ICUInputTooLongException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final blacklist decodeDigit(I)I
    .registers 3
    .param p0, "cp"    # I

    .line 67
    const/16 v0, 0x5a

    const/4 v1, -0x1

    if-gt p0, v0, :cond_16

    .line 68
    const/16 v0, 0x39

    if-gt p0, v0, :cond_13

    .line 69
    const/16 v0, 0x30

    if-ge p0, v0, :cond_e

    .line 70
    return v1

    .line 72
    :cond_e
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    return v0

    .line 75
    :cond_13
    add-int/lit8 v0, p0, -0x41

    return v0

    .line 77
    :cond_16
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1d

    .line 78
    add-int/lit8 v0, p0, -0x61

    return v0

    .line 80
    :cond_1d
    return v1
.end method

.method private static blacklist digitToBasic(IZ)C
    .registers 3
    .param p0, "digit"    # I
    .param p1, "uppercase"    # Z

    .line 107
    const/16 v0, 0x1a

    if-ge p0, v0, :cond_e

    .line 108
    if-eqz p1, :cond_a

    .line 109
    add-int/lit8 v0, p0, 0x41

    int-to-char v0, v0

    return v0

    .line 111
    :cond_a
    add-int/lit8 v0, p0, 0x61

    int-to-char v0, v0

    return v0

    .line 114
    :cond_e
    add-int/lit8 v0, p0, 0x16

    int-to-char v0, v0

    return v0
.end method

.method public static blacklist encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .registers 21
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "caseFlags"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 135
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 136
    .local v1, "srcLength":I
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_124

    .line 140
    new-array v2, v1, [I

    .line 141
    .local v2, "cpBuffer":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    .local v3, "dest":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 148
    .local v4, "srcCPCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_13
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v1, :cond_72

    .line 149
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 150
    .local v8, "c":C
    invoke-static {v8}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 151
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "srcCPCount":I
    .local v9, "srcCPCount":I
    aput v6, v2, v4

    .line 152
    if-eqz p1, :cond_2e

    aget-boolean v4, p1, v5

    invoke-static {v8, v4}, Landroid/icu/impl/Punycode;->asciiCaseMap(CZ)C

    move-result v4

    goto :goto_2f

    :cond_2e
    move v4, v8

    :goto_2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v9

    goto :goto_68

    .line 154
    .end local v9    # "srcCPCount":I
    .restart local v4    # "srcCPCount":I
    :cond_34
    if-eqz p1, :cond_3b

    aget-boolean v9, p1, v5

    if-eqz v9, :cond_3b

    move v6, v7

    :cond_3b
    shl-int/lit8 v6, v6, 0x1f

    .line 155
    .local v6, "n":I
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v9

    if-nez v9, :cond_45

    .line 156
    or-int/2addr v6, v8

    goto :goto_63

    .line 157
    :cond_45
    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    add-int/lit8 v9, v5, 0x1

    if-ge v9, v1, :cond_6a

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v10, v9

    .local v10, "c2":C
    invoke-static {v9}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 158
    add-int/lit8 v5, v5, 0x1

    .line 160
    invoke-static {v8, v10}, Landroid/icu/lang/UCharacter;->getCodePoint(CC)I

    move-result v9

    or-int/2addr v6, v9

    .line 165
    .end local v10    # "c2":C
    :goto_63
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "srcCPCount":I
    .restart local v9    # "srcCPCount":I
    aput v6, v2, v4

    move v4, v9

    .line 148
    .end local v6    # "n":I
    .end local v9    # "srcCPCount":I
    .restart local v4    # "srcCPCount":I
    :goto_68
    add-int/2addr v5, v7

    goto :goto_13

    .line 163
    .restart local v6    # "n":I
    :cond_6a
    new-instance v9, Landroid/icu/text/StringPrepParseException;

    const-string v10, "Illegal char found"

    invoke-direct {v9, v10, v7}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 170
    .end local v6    # "n":I
    .end local v8    # "c":C
    :cond_72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 171
    .local v8, "basicLength":I
    if-lez v8, :cond_7d

    .line 172
    const/16 v9, 0x2d

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_7d
    const/16 v9, 0x80

    .line 183
    .local v9, "n":I
    const/4 v10, 0x0

    .line 184
    .local v10, "delta":I
    const/16 v11, 0x48

    .line 187
    .local v11, "bias":I
    move v12, v8

    .local v12, "handledCPCount":I
    :goto_83
    if-ge v12, v4, :cond_123

    .line 192
    const v13, 0x7fffffff

    .local v13, "m":I
    const/4 v5, 0x0

    :goto_89
    const v14, 0x7fffffff

    if-ge v5, v4, :cond_99

    .line 193
    aget v15, v2, v5

    and-int/2addr v14, v15

    .line 194
    .local v14, "q":I
    if-gt v9, v14, :cond_96

    if-ge v14, v13, :cond_96

    .line 195
    move v13, v14

    .line 192
    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 203
    .end local v14    # "q":I
    :cond_99
    sub-int v15, v13, v9

    sub-int v16, v14, v12

    sub-int v16, v16, v10

    add-int/lit8 v17, v12, 0x1

    move/from16 v18, v14

    div-int v14, v16, v17

    if-gt v15, v14, :cond_11b

    .line 206
    sub-int v14, v13, v9

    add-int/lit8 v15, v12, 0x1

    mul-int/2addr v14, v15

    add-int/2addr v10, v14

    .line 207
    move v9, v13

    .line 210
    const/4 v5, 0x0

    :goto_af
    if-ge v5, v4, :cond_111

    .line 211
    aget v14, v2, v5

    and-int v14, v14, v18

    .line 212
    .restart local v14    # "q":I
    if-ge v14, v9, :cond_bb

    .line 213
    add-int/lit8 v10, v10, 0x1

    move v7, v6

    goto :goto_10a

    .line 214
    :cond_bb
    if-ne v14, v9, :cond_109

    .line 216
    move v14, v10

    const/16 v15, 0x24

    .line 228
    .local v15, "k":I
    :goto_c0
    sub-int v6, v15, v11

    .line 229
    .local v6, "t":I
    if-ge v6, v7, :cond_c6

    .line 230
    const/4 v6, 0x1

    goto :goto_cc

    .line 231
    :cond_c6
    add-int/lit8 v7, v11, 0x1a

    if-lt v15, v7, :cond_cc

    .line 232
    const/16 v6, 0x1a

    .line 235
    :cond_cc
    :goto_cc
    if-ge v14, v6, :cond_ee

    .line 236
    nop

    .line 243
    aget v7, v2, v5

    if-gez v7, :cond_d5

    const/4 v7, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v7, 0x0

    :goto_d6
    invoke-static {v14, v7}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v7, v12, 0x1

    if-ne v12, v8, :cond_e3

    const/4 v0, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    invoke-static {v10, v7, v0}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v11

    .line 245
    const/4 v0, 0x0

    .line 246
    .end local v10    # "delta":I
    .local v0, "delta":I
    add-int/lit8 v12, v12, 0x1

    move v10, v0

    const/4 v7, 0x0

    goto :goto_10a

    .line 239
    .end local v0    # "delta":I
    .restart local v10    # "delta":I
    :cond_ee
    sub-int v0, v14, v6

    rsub-int/lit8 v7, v6, 0x24

    rem-int/2addr v0, v7

    add-int/2addr v0, v6

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    sub-int v0, v14, v6

    rsub-int/lit8 v16, v6, 0x24

    div-int v14, v0, v16

    .line 216
    add-int/lit8 v15, v15, 0x24

    move-object/from16 v0, p0

    move v6, v7

    const/4 v7, 0x1

    goto :goto_c0

    .line 214
    .end local v6    # "t":I
    .end local v15    # "k":I
    :cond_109
    move v7, v6

    .line 210
    :goto_10a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v6, v7

    const/4 v7, 0x1

    goto :goto_af

    .line 250
    .end local v14    # "q":I
    :cond_111
    move v7, v6

    add-int/lit8 v10, v10, 0x1

    .line 251
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x1

    goto/16 :goto_83

    .line 204
    :cond_11b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Internal program error"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    .end local v13    # "m":I
    :cond_123
    return-object v3

    .line 137
    .end local v2    # "cpBuffer":[I
    .end local v3    # "dest":Ljava/lang/StringBuilder;
    .end local v4    # "srcCPCount":I
    .end local v5    # "j":I
    .end local v8    # "basicLength":I
    .end local v9    # "n":I
    .end local v10    # "delta":I
    .end local v11    # "bias":I
    .end local v12    # "handledCPCount":I
    :cond_124
    new-instance v0, Landroid/icu/util/ICUInputTooLongException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UTF-16 code units"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/icu/util/ICUInputTooLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isBasic(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 258
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist isBasicUpperCase(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 262
    const/16 v0, 0x41

    if-gt v0, p0, :cond_a

    const/16 v0, 0x5a

    if-lt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist isSurrogate(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 266
    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
