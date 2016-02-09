.class public final Landroid/icu/impl/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# static fields
.field private static final BASE:I = 0x24

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final DAMP:I = 0x2bc

.field private static final DELIMITER:C = '-'

.field private static final HYPHEN:C = '-'

.field private static final INITIAL_BIAS:I = 0x48

.field private static final INITIAL_N:I = 0x80

.field private static final SKEW:I = 0x26

.field private static final SMALL_A:I = 0x61

.field private static final SMALL_Z:I = 0x7a

.field private static final TMAX:I = 0x1a

.field private static final TMIN:I = 0x1

.field private static final ZERO:I = 0x30

.field static final basicToDigit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/16 v0, 0x100

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/impl/Punycode;->basicToDigit:[I

    #@9
    .line 17
    return-void

    #@a
    .line 62
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static adaptBias(IIZ)I
    .locals 3
    .param p0, "delta"    # I
    .param p1, "length"    # I
    .param p2, "firstTime"    # Z

    #@0
    .prologue
    .line 42
    if-eqz p2, :cond_0

    #@2
    .line 43
    div-int/lit16 p0, p0, 0x2bc

    #@4
    .line 47
    :goto_0
    div-int v1, p0, p1

    #@6
    add-int/2addr p0, v1

    #@7
    .line 49
    const/4 v0, 0x0

    #@8
    .line 50
    .local v0, "count":I
    :goto_1
    const/16 v1, 0x1c7

    #@a
    if-le p0, v1, :cond_1

    #@c
    .line 51
    div-int/lit8 p0, p0, 0x23

    #@e
    .line 50
    add-int/lit8 v0, v0, 0x24

    #@10
    goto :goto_1

    #@11
    .line 45
    .end local v0    # "count":I
    :cond_0
    div-int/lit8 p0, p0, 0x2

    #@13
    goto :goto_0

    #@14
    .line 54
    .restart local v0    # "count":I
    :cond_1
    mul-int/lit8 v1, p0, 0x24

    #@16
    add-int/lit8 v2, p0, 0x26

    #@18
    div-int/2addr v1, v2

    #@19
    add-int/2addr v1, v0

    #@1a
    return v1
.end method

.method private static asciiCaseMap(CZ)C
    .locals 1
    .param p0, "b"    # C
    .param p1, "uppercase"    # Z

    #@0
    .prologue
    .line 90
    if-eqz p1, :cond_1

    #@2
    .line 91
    const/16 v0, 0x61

    #@4
    if-gt v0, p0, :cond_0

    #@6
    const/16 v0, 0x7a

    #@8
    if-gt p0, v0, :cond_0

    #@a
    .line 92
    add-int/lit8 v0, p0, -0x20

    #@c
    int-to-char p0, v0

    #@d
    .line 99
    :cond_0
    :goto_0
    return p0

    #@e
    .line 95
    :cond_1
    const/16 v0, 0x41

    #@10
    if-gt v0, p0, :cond_0

    #@12
    const/16 v0, 0x5a

    #@14
    if-gt p0, v0, :cond_0

    #@16
    .line 96
    add-int/lit8 v0, p0, 0x20

    #@18
    int-to-char p0, v0

    #@19
    goto :goto_0
.end method

.method public static decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 26
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "caseFlags"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v20

    #@4
    .line 273
    .local v20, "srcLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    #@6
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v23

    #@a
    move/from16 v0, v23

    #@c
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 286
    .local v9, "dest":Ljava/lang/StringBuilder;
    move/from16 v16, v20

    #@11
    .local v16, "j":I
    :cond_0
    if-lez v16, :cond_1

    #@13
    .line 287
    add-int/lit8 v16, v16, -0x1

    #@15
    move-object/from16 v0, p0

    #@17
    move/from16 v1, v16

    #@19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v23

    #@1d
    const/16 v24, 0x2d

    #@1f
    move/from16 v0, v23

    #@21
    move/from16 v1, v24

    #@23
    if-ne v0, v1, :cond_0

    #@25
    .line 291
    :cond_1
    move/from16 v10, v16

    #@27
    .local v10, "destCPCount":I
    move/from16 v5, v16

    #@29
    .line 293
    .local v5, "basicLength":I
    const/16 v16, 0x0

    #@2b
    :goto_0
    move/from16 v0, v16

    #@2d
    if-ge v0, v5, :cond_4

    #@2f
    .line 294
    move-object/from16 v0, p0

    #@31
    move/from16 v1, v16

    #@33
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@36
    move-result v4

    #@37
    .line 295
    .local v4, "b":C
    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    #@3a
    move-result v23

    #@3b
    if-nez v23, :cond_2

    #@3d
    .line 296
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@3f
    const-string/jumbo v24, "Illegal char found"

    #@42
    const/16 v25, 0x0

    #@44
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@47
    throw v23

    #@48
    .line 298
    :cond_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    .line 300
    if-eqz p1, :cond_3

    #@4d
    move-object/from16 v0, p1

    #@4f
    array-length v0, v0

    #@50
    move/from16 v23, v0

    #@52
    move/from16 v0, v16

    #@54
    move/from16 v1, v23

    #@56
    if-ge v0, v1, :cond_3

    #@58
    .line 301
    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    #@5b
    move-result v23

    #@5c
    aput-boolean v23, p1, v16

    #@5e
    .line 293
    :cond_3
    add-int/lit8 v16, v16, 0x1

    #@60
    goto :goto_0

    #@61
    .line 306
    .end local v4    # "b":C
    :cond_4
    const/16 v18, 0x80

    #@63
    .line 307
    .local v18, "n":I
    const/4 v13, 0x0

    #@64
    .line 308
    .local v13, "i":I
    const/16 v6, 0x48

    #@66
    .line 309
    .local v6, "bias":I
    const v12, 0x3b9aca00

    #@69
    .line 316
    .local v12, "firstSupplementaryIndex":I
    if-lez v5, :cond_5

    #@6b
    add-int/lit8 v14, v5, 0x1

    #@6d
    .local v14, "in":I
    :goto_1
    move/from16 v0, v20

    #@6f
    if-ge v14, v0, :cond_16

    #@71
    .line 326
    move/from16 v19, v13

    #@73
    .local v19, "oldi":I
    const/16 v22, 0x1

    #@75
    .local v22, "w":I
    const/16 v17, 0x24

    #@77
    .local v17, "k":I
    move v15, v14

    #@78
    .line 327
    .end local v14    # "in":I
    .local v15, "in":I
    :goto_2
    move/from16 v0, v20

    #@7a
    if-lt v15, v0, :cond_6

    #@7c
    .line 328
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@7e
    const-string/jumbo v24, "Illegal char found"

    #@81
    const/16 v25, 0x1

    #@83
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@86
    throw v23

    #@87
    .line 316
    .end local v15    # "in":I
    .end local v17    # "k":I
    .end local v19    # "oldi":I
    .end local v22    # "w":I
    :cond_5
    const/4 v14, 0x0

    #@88
    .restart local v14    # "in":I
    goto :goto_1

    #@89
    .line 331
    .end local v14    # "in":I
    .restart local v15    # "in":I
    .restart local v17    # "k":I
    .restart local v19    # "oldi":I
    .restart local v22    # "w":I
    :cond_6
    sget-object v23, Landroid/icu/impl/Punycode;->basicToDigit:[I

    #@8b
    add-int/lit8 v14, v15, 0x1

    #@8d
    .end local v15    # "in":I
    .restart local v14    # "in":I
    move-object/from16 v0, p0

    #@8f
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    #@92
    move-result v24

    #@93
    move/from16 v0, v24

    #@95
    and-int/lit16 v0, v0, 0xff

    #@97
    move/from16 v24, v0

    #@99
    aget v11, v23, v24

    #@9b
    .line 332
    .local v11, "digit":I
    if-gez v11, :cond_7

    #@9d
    .line 333
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@9f
    const-string/jumbo v24, "Invalid char found"

    #@a2
    const/16 v25, 0x0

    #@a4
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@a7
    throw v23

    #@a8
    .line 335
    :cond_7
    const v23, 0x7fffffff

    #@ab
    sub-int v23, v23, v13

    #@ad
    div-int v23, v23, v22

    #@af
    move/from16 v0, v23

    #@b1
    if-le v11, v0, :cond_8

    #@b3
    .line 337
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@b5
    const-string/jumbo v24, "Illegal char found"

    #@b8
    const/16 v25, 0x1

    #@ba
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@bd
    throw v23

    #@be
    .line 340
    :cond_8
    mul-int v23, v11, v22

    #@c0
    add-int v13, v13, v23

    #@c2
    .line 341
    sub-int v21, v17, v6

    #@c4
    .line 342
    .local v21, "t":I
    const/16 v23, 0x1

    #@c6
    move/from16 v0, v21

    #@c8
    move/from16 v1, v23

    #@ca
    if-ge v0, v1, :cond_a

    #@cc
    .line 343
    const/16 v21, 0x1

    #@ce
    .line 347
    :cond_9
    :goto_3
    move/from16 v0, v21

    #@d0
    if-ge v11, v0, :cond_b

    #@d2
    .line 363
    add-int/lit8 v10, v10, 0x1

    #@d4
    .line 364
    sub-int v24, v13, v19

    #@d6
    if-nez v19, :cond_d

    #@d8
    const/16 v23, 0x1

    #@da
    :goto_4
    move/from16 v0, v24

    #@dc
    move/from16 v1, v23

    #@de
    invoke-static {v0, v10, v1}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    #@e1
    move-result v6

    #@e2
    .line 370
    div-int v23, v13, v10

    #@e4
    const v24, 0x7fffffff

    #@e7
    sub-int v24, v24, v18

    #@e9
    move/from16 v0, v23

    #@eb
    move/from16 v1, v24

    #@ed
    if-le v0, v1, :cond_e

    #@ef
    .line 372
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@f1
    const-string/jumbo v24, "Illegal char found"

    #@f4
    const/16 v25, 0x1

    #@f6
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@f9
    throw v23

    #@fa
    .line 344
    :cond_a
    add-int/lit8 v23, v6, 0x1a

    #@fc
    move/from16 v0, v17

    #@fe
    move/from16 v1, v23

    #@100
    if-lt v0, v1, :cond_9

    #@102
    .line 345
    const/16 v21, 0x1a

    #@104
    goto :goto_3

    #@105
    .line 351
    :cond_b
    rsub-int/lit8 v23, v21, 0x24

    #@107
    const v24, 0x7fffffff

    #@10a
    div-int v23, v24, v23

    #@10c
    move/from16 v0, v22

    #@10e
    move/from16 v1, v23

    #@110
    if-le v0, v1, :cond_c

    #@112
    .line 353
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@114
    const-string/jumbo v24, "Illegal char found"

    #@117
    const/16 v25, 0x1

    #@119
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@11c
    throw v23

    #@11d
    .line 355
    :cond_c
    rsub-int/lit8 v23, v21, 0x24

    #@11f
    mul-int v22, v22, v23

    #@121
    .line 326
    add-int/lit8 v17, v17, 0x24

    #@123
    move v15, v14

    #@124
    .end local v14    # "in":I
    .restart local v15    # "in":I
    goto/16 :goto_2

    #@126
    .line 364
    .end local v15    # "in":I
    .restart local v14    # "in":I
    :cond_d
    const/16 v23, 0x0

    #@128
    goto :goto_4

    #@129
    .line 375
    :cond_e
    div-int v23, v13, v10

    #@12b
    add-int v18, v18, v23

    #@12d
    .line 376
    rem-int/2addr v13, v10

    #@12e
    .line 380
    const v23, 0x10ffff

    #@131
    move/from16 v0, v18

    #@133
    move/from16 v1, v23

    #@135
    if-gt v0, v1, :cond_f

    #@137
    invoke-static/range {v18 .. v18}, Landroid/icu/impl/Punycode;->isSurrogate(I)Z

    #@13a
    move-result v23

    #@13b
    if-eqz v23, :cond_10

    #@13d
    .line 382
    :cond_f
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    #@13f
    const-string/jumbo v24, "Illegal char found"

    #@142
    const/16 v25, 0x1

    #@144
    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@147
    throw v23

    #@148
    .line 386
    :cond_10
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->charCount(I)I

    #@14b
    move-result v8

    #@14c
    .line 399
    .local v8, "cpLength":I
    if-gt v13, v12, :cond_14

    #@14e
    .line 400
    move v7, v13

    #@14f
    .line 401
    .local v7, "codeUnitIndex":I
    const/16 v23, 0x1

    #@151
    move/from16 v0, v23

    #@153
    if-le v8, v0, :cond_13

    #@155
    .line 402
    move v12, v7

    #@156
    .line 411
    :goto_5
    if-eqz p1, :cond_12

    #@158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    #@15b
    move-result v23

    #@15c
    add-int v23, v23, v8

    #@15e
    move-object/from16 v0, p1

    #@160
    array-length v0, v0

    #@161
    move/from16 v24, v0

    #@163
    move/from16 v0, v23

    #@165
    move/from16 v1, v24

    #@167
    if-gt v0, v1, :cond_12

    #@169
    .line 412
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    #@16c
    move-result v23

    #@16d
    move/from16 v0, v23

    #@16f
    if-ge v7, v0, :cond_11

    #@171
    .line 414
    add-int v23, v7, v8

    #@173
    .line 415
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    #@176
    move-result v24

    #@177
    sub-int v24, v24, v7

    #@179
    .line 413
    move-object/from16 v0, p1

    #@17b
    move-object/from16 v1, p1

    #@17d
    move/from16 v2, v23

    #@17f
    move/from16 v3, v24

    #@181
    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@184
    .line 418
    :cond_11
    add-int/lit8 v23, v14, -0x1

    #@186
    move-object/from16 v0, p0

    #@188
    move/from16 v1, v23

    #@18a
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18d
    move-result v23

    #@18e
    invoke-static/range {v23 .. v23}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    #@191
    move-result v23

    #@192
    aput-boolean v23, p1, v7

    #@194
    .line 419
    const/16 v23, 0x2

    #@196
    move/from16 v0, v23

    #@198
    if-ne v8, v0, :cond_12

    #@19a
    .line 420
    add-int/lit8 v23, v7, 0x1

    #@19c
    const/16 v24, 0x0

    #@19e
    aput-boolean v24, p1, v23

    #@1a0
    .line 423
    :cond_12
    const/16 v23, 0x1

    #@1a2
    move/from16 v0, v23

    #@1a4
    if-ne v8, v0, :cond_15

    #@1a6
    .line 425
    move/from16 v0, v18

    #@1a8
    int-to-char v0, v0

    #@1a9
    move/from16 v23, v0

    #@1ab
    move/from16 v0, v23

    #@1ad
    invoke-virtual {v9, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@1b0
    .line 431
    :goto_6
    add-int/lit8 v13, v13, 0x1

    #@1b2
    goto/16 :goto_1

    #@1b4
    .line 404
    :cond_13
    add-int/lit8 v12, v12, 0x1

    #@1b6
    goto :goto_5

    #@1b7
    .line 407
    .end local v7    # "codeUnitIndex":I
    :cond_14
    sub-int v23, v13, v12

    #@1b9
    move/from16 v0, v23

    #@1bb
    invoke-virtual {v9, v12, v0}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    #@1be
    move-result v7

    #@1bf
    .restart local v7    # "codeUnitIndex":I
    goto :goto_5

    #@1c0
    .line 428
    :cond_15
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@1c3
    move-result v23

    #@1c4
    move/from16 v0, v23

    #@1c6
    invoke-virtual {v9, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@1c9
    .line 429
    add-int/lit8 v23, v7, 0x1

    #@1cb
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@1ce
    move-result v24

    #@1cf
    move/from16 v0, v23

    #@1d1
    move/from16 v1, v24

    #@1d3
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@1d6
    goto :goto_6

    #@1d7
    .line 433
    .end local v7    # "codeUnitIndex":I
    .end local v8    # "cpLength":I
    .end local v11    # "digit":I
    .end local v17    # "k":I
    .end local v19    # "oldi":I
    .end local v21    # "t":I
    .end local v22    # "w":I
    :cond_16
    return-object v9
.end method

.method private static digitToBasic(IZ)C
    .locals 1
    .param p0, "digit"    # I
    .param p1, "uppercase"    # Z

    #@0
    .prologue
    .line 111
    const/16 v0, 0x1a

    #@2
    if-ge p0, v0, :cond_1

    #@4
    .line 112
    if-eqz p1, :cond_0

    #@6
    .line 113
    add-int/lit8 v0, p0, 0x41

    #@8
    int-to-char v0, v0

    #@9
    return v0

    #@a
    .line 115
    :cond_0
    add-int/lit8 v0, p0, 0x61

    #@c
    int-to-char v0, v0

    #@d
    return v0

    #@e
    .line 118
    :cond_1
    add-int/lit8 v0, p0, 0x16

    #@10
    int-to-char v0, v0

    #@11
    return v0
.end method

.method public static encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 22
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "caseFlags"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v17

    #@4
    .line 134
    .local v17, "srcLength":I
    move/from16 v0, v17

    #@6
    new-array v6, v0, [I

    #@8
    .line 135
    .local v6, "cpBuffer":[I
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    move/from16 v0, v17

    #@c
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 140
    .local v8, "dest":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    #@10
    .line 142
    .local v15, "srcCPCount":I
    const/4 v10, 0x0

    #@11
    .local v10, "j":I
    move/from16 v16, v15

    #@13
    .end local v15    # "srcCPCount":I
    .local v16, "srcCPCount":I
    :goto_0
    move/from16 v0, v17

    #@15
    if-ge v10, v0, :cond_5

    #@17
    .line 143
    move-object/from16 v0, p0

    #@19
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v4

    #@1d
    .line 144
    .local v4, "c":C
    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    #@20
    move-result v19

    #@21
    if-eqz v19, :cond_1

    #@23
    .line 145
    add-int/lit8 v15, v16, 0x1

    #@25
    .end local v16    # "srcCPCount":I
    .restart local v15    # "srcCPCount":I
    const/16 v19, 0x0

    #@27
    aput v19, v6, v16

    #@29
    .line 146
    if-eqz p1, :cond_0

    #@2b
    aget-boolean v19, p1, v10

    #@2d
    move/from16 v0, v19

    #@2f
    invoke-static {v4, v0}, Landroid/icu/impl/Punycode;->asciiCaseMap(CZ)C

    #@32
    move-result v4

    #@33
    .end local v4    # "c":C
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 142
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@38
    move/from16 v16, v15

    #@3a
    .end local v15    # "srcCPCount":I
    .restart local v16    # "srcCPCount":I
    goto :goto_0

    #@3b
    .line 148
    .restart local v4    # "c":C
    :cond_1
    if-eqz p1, :cond_2

    #@3d
    aget-boolean v19, p1, v10

    #@3f
    if-eqz v19, :cond_2

    #@41
    const/16 v19, 0x1

    #@43
    :goto_2
    shl-int/lit8 v13, v19, 0x1f

    #@45
    .line 149
    .local v13, "n":I
    invoke-static {v4}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@48
    move-result v19

    #@49
    if-nez v19, :cond_3

    #@4b
    .line 150
    or-int/2addr v13, v4

    #@4c
    .line 159
    :goto_3
    add-int/lit8 v15, v16, 0x1

    #@4e
    .end local v16    # "srcCPCount":I
    .restart local v15    # "srcCPCount":I
    aput v13, v6, v16

    #@50
    goto :goto_1

    #@51
    .line 148
    .end local v13    # "n":I
    .end local v15    # "srcCPCount":I
    .restart local v16    # "srcCPCount":I
    :cond_2
    const/16 v19, 0x0

    #@53
    goto :goto_2

    #@54
    .line 151
    .restart local v13    # "n":I
    :cond_3
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@57
    move-result v19

    #@58
    if-eqz v19, :cond_4

    #@5a
    add-int/lit8 v19, v10, 0x1

    #@5c
    move/from16 v0, v19

    #@5e
    move/from16 v1, v17

    #@60
    if-ge v0, v1, :cond_4

    #@62
    add-int/lit8 v19, v10, 0x1

    #@64
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v19

    #@68
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@6b
    move-result v5

    #@6c
    .local v5, "c2":C
    invoke-static {v5}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@6f
    move-result v19

    #@70
    if-eqz v19, :cond_4

    #@72
    .line 152
    add-int/lit8 v10, v10, 0x1

    #@74
    .line 154
    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->getCodePoint(CC)I

    #@77
    move-result v19

    #@78
    or-int v13, v13, v19

    #@7a
    goto :goto_3

    #@7b
    .line 157
    .end local v5    # "c2":C
    :cond_4
    new-instance v19, Landroid/icu/text/StringPrepParseException;

    #@7d
    const-string/jumbo v20, "Illegal char found"

    #@80
    const/16 v21, 0x1

    #@82
    invoke-direct/range {v19 .. v21}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@85
    throw v19

    #@86
    .line 164
    .end local v4    # "c":C
    .end local v13    # "n":I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    #@89
    move-result v2

    #@8a
    .line 165
    .local v2, "basicLength":I
    if-lez v2, :cond_6

    #@8c
    .line 166
    const/16 v19, 0x2d

    #@8e
    move/from16 v0, v19

    #@90
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@93
    .line 176
    :cond_6
    const/16 v13, 0x80

    #@95
    .line 177
    .restart local v13    # "n":I
    const/4 v7, 0x0

    #@96
    .line 178
    .local v7, "delta":I
    const/16 v3, 0x48

    #@98
    .line 181
    .local v3, "bias":I
    move v9, v2

    #@99
    .local v9, "handledCPCount":I
    :goto_4
    move/from16 v0, v16

    #@9b
    if-ge v9, v0, :cond_12

    #@9d
    .line 186
    const v12, 0x7fffffff

    #@a0
    .local v12, "m":I
    const/4 v10, 0x0

    #@a1
    :goto_5
    move/from16 v0, v16

    #@a3
    if-ge v10, v0, :cond_8

    #@a5
    .line 187
    aget v19, v6, v10

    #@a7
    const v20, 0x7fffffff

    #@aa
    and-int v14, v19, v20

    #@ac
    .line 188
    .local v14, "q":I
    if-gt v13, v14, :cond_7

    #@ae
    if-ge v14, v12, :cond_7

    #@b0
    .line 189
    move v12, v14

    #@b1
    .line 186
    :cond_7
    add-int/lit8 v10, v10, 0x1

    #@b3
    goto :goto_5

    #@b4
    .line 197
    .end local v14    # "q":I
    :cond_8
    sub-int v19, v12, v13

    #@b6
    const v20, 0x7fffffff

    #@b9
    sub-int v20, v20, v7

    #@bb
    add-int/lit8 v21, v9, 0x1

    #@bd
    div-int v20, v20, v21

    #@bf
    move/from16 v0, v19

    #@c1
    move/from16 v1, v20

    #@c3
    if-le v0, v1, :cond_9

    #@c5
    .line 198
    new-instance v19, Ljava/lang/IllegalStateException;

    #@c7
    const-string/jumbo v20, "Internal program error"

    #@ca
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v19

    #@ce
    .line 200
    :cond_9
    sub-int v19, v12, v13

    #@d0
    add-int/lit8 v20, v9, 0x1

    #@d2
    mul-int v19, v19, v20

    #@d4
    add-int v7, v7, v19

    #@d6
    .line 201
    move v13, v12

    #@d7
    .line 204
    const/4 v10, 0x0

    #@d8
    :goto_6
    move/from16 v0, v16

    #@da
    if-ge v10, v0, :cond_11

    #@dc
    .line 205
    aget v19, v6, v10

    #@de
    const v20, 0x7fffffff

    #@e1
    and-int v14, v19, v20

    #@e3
    .line 206
    .restart local v14    # "q":I
    if-ge v14, v13, :cond_b

    #@e5
    .line 207
    add-int/lit8 v7, v7, 0x1

    #@e7
    .line 204
    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@e9
    goto :goto_6

    #@ea
    .line 208
    :cond_b
    if-ne v14, v13, :cond_a

    #@ec
    .line 210
    move v14, v7

    #@ed
    const/16 v11, 0x24

    #@ef
    .line 222
    .local v11, "k":I
    :goto_8
    sub-int v18, v11, v3

    #@f1
    .line 223
    .local v18, "t":I
    const/16 v19, 0x1

    #@f3
    move/from16 v0, v18

    #@f5
    move/from16 v1, v19

    #@f7
    if-ge v0, v1, :cond_d

    #@f9
    .line 224
    const/16 v18, 0x1

    #@fb
    .line 229
    :cond_c
    :goto_9
    move/from16 v0, v18

    #@fd
    if-ge v14, v0, :cond_e

    #@ff
    .line 237
    aget v19, v6, v10

    #@101
    if-gez v19, :cond_f

    #@103
    const/16 v19, 0x1

    #@105
    :goto_a
    move/from16 v0, v19

    #@107
    invoke-static {v14, v0}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    #@10a
    move-result v19

    #@10b
    move/from16 v0, v19

    #@10d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@110
    .line 238
    add-int/lit8 v20, v9, 0x1

    #@112
    if-ne v9, v2, :cond_10

    #@114
    const/16 v19, 0x1

    #@116
    :goto_b
    move/from16 v0, v20

    #@118
    move/from16 v1, v19

    #@11a
    invoke-static {v7, v0, v1}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    #@11d
    move-result v3

    #@11e
    .line 239
    const/4 v7, 0x0

    #@11f
    .line 240
    add-int/lit8 v9, v9, 0x1

    #@121
    goto :goto_7

    #@122
    .line 225
    :cond_d
    add-int/lit8 v19, v3, 0x1a

    #@124
    move/from16 v0, v19

    #@126
    if-lt v11, v0, :cond_c

    #@128
    .line 226
    const/16 v18, 0x1a

    #@12a
    goto :goto_9

    #@12b
    .line 233
    :cond_e
    sub-int v19, v14, v18

    #@12d
    rsub-int/lit8 v20, v18, 0x24

    #@12f
    rem-int v19, v19, v20

    #@131
    add-int v19, v19, v18

    #@133
    const/16 v20, 0x0

    #@135
    invoke-static/range {v19 .. v20}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    #@138
    move-result v19

    #@139
    move/from16 v0, v19

    #@13b
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13e
    .line 234
    sub-int v19, v14, v18

    #@140
    rsub-int/lit8 v20, v18, 0x24

    #@142
    div-int v14, v19, v20

    #@144
    .line 210
    add-int/lit8 v11, v11, 0x24

    #@146
    goto :goto_8

    #@147
    .line 237
    :cond_f
    const/16 v19, 0x0

    #@149
    goto :goto_a

    #@14a
    .line 238
    :cond_10
    const/16 v19, 0x0

    #@14c
    goto :goto_b

    #@14d
    .line 244
    .end local v11    # "k":I
    .end local v14    # "q":I
    .end local v18    # "t":I
    :cond_11
    add-int/lit8 v7, v7, 0x1

    #@14f
    .line 245
    add-int/lit8 v13, v13, 0x1

    #@151
    goto/16 :goto_4

    #@153
    .line 248
    .end local v12    # "m":I
    :cond_12
    return-object v8
.end method

.method private static isBasic(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 252
    const/16 v0, 0x80

    #@2
    if-ge p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static isBasicUpperCase(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 256
    const/16 v1, 0x41

    #@3
    if-gt v1, p0, :cond_0

    #@5
    const/16 v1, 0x5a

    #@7
    if-lt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static isSurrogate(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 260
    and-int/lit16 v0, p0, -0x800

    #@2
    const v1, 0xd800

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
