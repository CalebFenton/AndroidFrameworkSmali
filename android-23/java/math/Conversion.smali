.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/16 v0, 0x25

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    #@9
    .line 43
    const/16 v0, 0x23

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    #@12
    .line 24
    return-void

    #@13
    .line 33
    nop

    #@14
    :array_0
    .array-data 4
        -0x1
        -0x1
        0x1f
        0x13
        0xf
        0xd
        0xb
        0xb
        0xa
        0x9
        0x9
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
    .end array-data

    #@62
    .line 43
    :array_1
    .array-data 4
        -0x80000000
        0x4546b3db
        0x40000000    # 2.0f
        0x48c27395
        0x159fd800
        0x75db9c97
        0x40000000    # 2.0f
        0x17179149
        0x3b9aca00
        0xcc6db61
        0x19a10000
        0x309f1021
        0x57f6c100
        0xa2f1b6f
        0x10000000
        0x18754571
        0x247dbc80
        0x3547667b
        0x4c4b4000
        0x6b5a6e1d
        0x6c20a40
        0x8d2d931
        0xb640000
        0xe8d4a51
        0x1269ae40
        0x17179149
        0x1cb91000
        0x23744899
        0x2b73a840
        0x34e63b41
        0x40000000    # 2.0f
        0x4cfa3cc1    # 1.31196424E8f
        0x5c13d840
        0x6d91b519
        0x39aa400
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .locals 18
    .param p0, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 419
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 421
    move-object/from16 v0, p0

    #@5
    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    #@7
    const/4 v15, 0x2

    #@8
    if-lt v14, v15, :cond_0

    #@a
    .line 422
    move-object/from16 v0, p0

    #@c
    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    #@e
    const/4 v15, 0x2

    #@f
    if-ne v14, v15, :cond_1

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    #@15
    const/4 v15, 0x1

    #@16
    aget v14, v14, v15

    #@18
    if-lez v14, :cond_1

    #@1a
    .line 423
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    #@1d
    move-result-wide v14

    #@1e
    long-to-double v14, v14

    #@1f
    return-wide v14

    #@20
    .line 426
    :cond_1
    move-object/from16 v0, p0

    #@22
    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    #@24
    const/16 v15, 0x20

    #@26
    if-le v14, v15, :cond_3

    #@28
    .line 427
    move-object/from16 v0, p0

    #@2a
    iget v14, v0, Ljava/math/BigInteger;->sign:I

    #@2c
    if-lez v14, :cond_2

    #@2e
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@30
    :goto_0
    return-wide v14

    #@31
    .line 428
    :cond_2
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@33
    goto :goto_0

    #@34
    .line 430
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@37
    move-result-object v14

    #@38
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    #@3b
    move-result v2

    #@3c
    .line 431
    .local v2, "bitLen":I
    add-int/lit8 v14, v2, -0x1

    #@3e
    int-to-long v4, v14

    #@3f
    .line 432
    .local v4, "exponent":J
    add-int/lit8 v3, v2, -0x36

    #@41
    .line 434
    .local v3, "delta":I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@44
    move-result-object v14

    #@45
    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@48
    move-result-object v14

    #@49
    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    #@4c
    move-result-wide v6

    #@4d
    .line 439
    .local v6, "lVal":J
    const-wide v14, 0x1fffffffffffffL

    #@52
    and-long v8, v6, v14

    #@54
    .line 440
    .local v8, "mantissa":J
    const-wide/16 v14, 0x3ff

    #@56
    cmp-long v14, v4, v14

    #@58
    if-nez v14, :cond_7

    #@5a
    .line 441
    const-wide v14, 0x1fffffffffffffL

    #@5f
    cmp-long v14, v8, v14

    #@61
    if-nez v14, :cond_5

    #@63
    .line 442
    move-object/from16 v0, p0

    #@65
    iget v14, v0, Ljava/math/BigInteger;->sign:I

    #@67
    if-lez v14, :cond_4

    #@69
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@6b
    :goto_1
    return-wide v14

    #@6c
    .line 443
    :cond_4
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@6e
    goto :goto_1

    #@6f
    .line 445
    :cond_5
    const-wide v14, 0x1ffffffffffffeL

    #@74
    cmp-long v14, v8, v14

    #@76
    if-nez v14, :cond_7

    #@78
    .line 446
    move-object/from16 v0, p0

    #@7a
    iget v14, v0, Ljava/math/BigInteger;->sign:I

    #@7c
    if-lez v14, :cond_6

    #@7e
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@83
    :goto_2
    return-wide v14

    #@84
    :cond_6
    const-wide v14, -0x10000000000001L

    #@89
    goto :goto_2

    #@8a
    .line 450
    :cond_7
    const-wide/16 v14, 0x1

    #@8c
    and-long/2addr v14, v8

    #@8d
    const-wide/16 v16, 0x1

    #@8f
    cmp-long v14, v14, v16

    #@91
    if-nez v14, :cond_9

    #@93
    .line 451
    const-wide/16 v14, 0x2

    #@95
    and-long/2addr v14, v8

    #@96
    const-wide/16 v16, 0x2

    #@98
    cmp-long v14, v14, v16

    #@9a
    if-eqz v14, :cond_8

    #@9c
    .line 452
    move-object/from16 v0, p0

    #@9e
    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    #@a0
    .line 451
    invoke-static {v3, v14}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    #@a3
    move-result v14

    #@a4
    .line 450
    if-eqz v14, :cond_9

    #@a6
    .line 453
    :cond_8
    const-wide/16 v14, 0x2

    #@a8
    add-long/2addr v8, v14

    #@a9
    .line 455
    :cond_9
    const/4 v14, 0x1

    #@aa
    shr-long/2addr v8, v14

    #@ab
    .line 456
    move-object/from16 v0, p0

    #@ad
    iget v14, v0, Ljava/math/BigInteger;->sign:I

    #@af
    if-gez v14, :cond_a

    #@b1
    const-wide/high16 v10, -0x8000000000000000L

    #@b3
    .line 457
    .local v10, "resSign":J
    :goto_3
    const-wide/16 v14, 0x3ff

    #@b5
    add-long/2addr v14, v4

    #@b6
    const/16 v16, 0x34

    #@b8
    shl-long v14, v14, v16

    #@ba
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@bc
    and-long v4, v14, v16

    #@be
    .line 458
    or-long v14, v10, v4

    #@c0
    or-long v12, v14, v8

    #@c2
    .line 459
    .local v12, "result":J
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@c5
    move-result-wide v14

    #@c6
    return-wide v14

    #@c7
    .line 456
    .end local v10    # "resSign":J
    .end local v12    # "result":J
    :cond_a
    const-wide/16 v10, 0x0

    #@c9
    .restart local v10    # "resSign":J
    goto :goto_3
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 28
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 55
    move-object/from16 v0, p0

    #@5
    iget v0, v0, Ljava/math/BigInteger;->sign:I

    #@7
    move/from16 v19, v0

    #@9
    .line 56
    .local v19, "sign":I
    move-object/from16 v0, p0

    #@b
    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    #@d
    .line 57
    .local v14, "numberLength":I
    move-object/from16 v0, p0

    #@f
    iget-object v10, v0, Ljava/math/BigInteger;->digits:[I

    #@11
    .line 59
    .local v10, "digits":[I
    if-nez v19, :cond_0

    #@13
    .line 60
    const-string/jumbo v24, "0"

    #@16
    return-object v24

    #@17
    .line 62
    :cond_0
    const/16 v24, 0x1

    #@19
    move/from16 v0, v24

    #@1b
    if-ne v14, v0, :cond_2

    #@1d
    .line 63
    add-int/lit8 v24, v14, -0x1

    #@1f
    aget v11, v10, v24

    #@21
    .line 64
    .local v11, "highDigit":I
    int-to-long v0, v11

    #@22
    move-wide/from16 v24, v0

    #@24
    const-wide v26, 0xffffffffL

    #@29
    and-long v22, v24, v26

    #@2b
    .line 65
    .local v22, "v":J
    if-gez v19, :cond_1

    #@2d
    .line 66
    move-wide/from16 v0, v22

    #@2f
    neg-long v0, v0

    #@30
    move-wide/from16 v22, v0

    #@32
    .line 68
    :cond_1
    move-wide/from16 v0, v22

    #@34
    move/from16 v2, p1

    #@36
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@39
    move-result-object v24

    #@3a
    return-object v24

    #@3b
    .line 70
    .end local v11    # "highDigit":I
    .end local v22    # "v":J
    :cond_2
    const/16 v24, 0xa

    #@3d
    move/from16 v0, p1

    #@3f
    move/from16 v1, v24

    #@41
    if-eq v0, v1, :cond_3

    #@43
    const/16 v24, 0x2

    #@45
    move/from16 v0, p1

    #@47
    move/from16 v1, v24

    #@49
    if-ge v0, v1, :cond_4

    #@4b
    .line 72
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@4e
    move-result-object v24

    #@4f
    return-object v24

    #@50
    .line 71
    :cond_4
    const/16 v24, 0x24

    #@52
    move/from16 v0, p1

    #@54
    move/from16 v1, v24

    #@56
    if-gt v0, v1, :cond_3

    #@58
    .line 75
    move/from16 v0, p1

    #@5a
    int-to-double v0, v0

    #@5b
    move-wide/from16 v24, v0

    #@5d
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->log(D)D

    #@60
    move-result-wide v24

    #@61
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@63
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->log(D)D

    #@66
    move-result-wide v26

    #@67
    div-double v6, v24, v26

    #@69
    .line 76
    .local v6, "bitsForRadixDigit":D
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@6c
    move-result-object v24

    #@6d
    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    #@70
    move-result v24

    #@71
    move/from16 v0, v24

    #@73
    int-to-double v0, v0

    #@74
    move-wide/from16 v24, v0

    #@76
    div-double v26, v24, v6

    #@78
    if-gez v19, :cond_8

    #@7a
    const/16 v24, 0x1

    #@7c
    :goto_0
    move/from16 v0, v24

    #@7e
    int-to-double v0, v0

    #@7f
    move-wide/from16 v24, v0

    #@81
    add-double v24, v24, v26

    #@83
    move-wide/from16 v0, v24

    #@85
    double-to-int v0, v0

    #@86
    move/from16 v24, v0

    #@88
    add-int/lit8 v17, v24, 0x1

    #@8a
    .line 79
    .local v17, "resLengthInChars":I
    move/from16 v0, v17

    #@8c
    new-array v0, v0, [C

    #@8e
    move-object/from16 v18, v0

    #@90
    .line 80
    .local v18, "result":[C
    move/from16 v8, v17

    #@92
    .line 82
    .local v8, "currentChar":I
    const/16 v24, 0x10

    #@94
    move/from16 v0, p1

    #@96
    move/from16 v1, v24

    #@98
    if-eq v0, v1, :cond_c

    #@9a
    .line 83
    new-array v0, v14, [I

    #@9c
    move-object/from16 v20, v0

    #@9e
    .line 84
    .local v20, "temp":[I
    const/16 v24, 0x0

    #@a0
    const/16 v25, 0x0

    #@a2
    move/from16 v0, v24

    #@a4
    move-object/from16 v1, v20

    #@a6
    move/from16 v2, v25

    #@a8
    invoke-static {v10, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([II[III)V

    #@ab
    .line 85
    move/from16 v21, v14

    #@ad
    .line 86
    .local v21, "tempLen":I
    sget-object v24, Ljava/math/Conversion;->digitFitInInt:[I

    #@af
    aget v5, v24, p1

    #@b1
    .line 89
    .local v5, "charsPerInt":I
    sget-object v24, Ljava/math/Conversion;->bigRadices:[I

    #@b3
    add-int/lit8 v25, p1, -0x2

    #@b5
    aget v4, v24, v25

    #@b7
    .line 93
    .local v4, "bigRadix":I
    :cond_5
    move-object/from16 v0, v20

    #@b9
    move-object/from16 v1, v20

    #@bb
    move/from16 v2, v21

    #@bd
    invoke-static {v0, v1, v2, v4}, Ljava/math/Division;->divideArrayByInt([I[III)I

    #@c0
    move-result v16

    #@c1
    .line 95
    .local v16, "resDigit":I
    move v15, v8

    #@c2
    .line 97
    .local v15, "previous":I
    :cond_6
    add-int/lit8 v8, v8, -0x1

    #@c4
    .line 98
    rem-int v24, v16, p1

    #@c6
    .line 97
    move/from16 v0, v24

    #@c8
    move/from16 v1, p1

    #@ca
    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    #@cd
    move-result v24

    #@ce
    aput-char v24, v18, v8

    #@d0
    .line 99
    div-int v16, v16, p1

    #@d2
    if-eqz v16, :cond_7

    #@d4
    if-nez v8, :cond_6

    #@d6
    .line 100
    :cond_7
    sub-int v24, v5, v15

    #@d8
    add-int v9, v24, v8

    #@da
    .line 101
    .local v9, "delta":I
    const/4 v12, 0x0

    #@db
    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_9

    #@dd
    if-lez v8, :cond_9

    #@df
    .line 102
    add-int/lit8 v8, v8, -0x1

    #@e1
    const/16 v24, 0x30

    #@e3
    aput-char v24, v18, v8

    #@e5
    .line 101
    add-int/lit8 v12, v12, 0x1

    #@e7
    goto :goto_1

    #@e8
    .line 77
    .end local v4    # "bigRadix":I
    .end local v5    # "charsPerInt":I
    .end local v8    # "currentChar":I
    .end local v9    # "delta":I
    .end local v12    # "i":I
    .end local v15    # "previous":I
    .end local v16    # "resDigit":I
    .end local v17    # "resLengthInChars":I
    .end local v18    # "result":[C
    .end local v20    # "temp":[I
    .end local v21    # "tempLen":I
    :cond_8
    const/16 v24, 0x0

    #@ea
    goto :goto_0

    #@eb
    .line 104
    .restart local v4    # "bigRadix":I
    .restart local v5    # "charsPerInt":I
    .restart local v8    # "currentChar":I
    .restart local v9    # "delta":I
    .restart local v12    # "i":I
    .restart local v15    # "previous":I
    .restart local v16    # "resDigit":I
    .restart local v17    # "resLengthInChars":I
    .restart local v18    # "result":[C
    .restart local v20    # "temp":[I
    .restart local v21    # "tempLen":I
    :cond_9
    add-int/lit8 v12, v21, -0x1

    #@ed
    :goto_2
    if-lez v12, :cond_a

    #@ef
    aget v24, v20, v12

    #@f1
    if-nez v24, :cond_a

    #@f3
    add-int/lit8 v12, v12, -0x1

    #@f5
    goto :goto_2

    #@f6
    .line 107
    :cond_a
    add-int/lit8 v21, v12, 0x1

    #@f8
    .line 108
    const/16 v24, 0x1

    #@fa
    move/from16 v0, v21

    #@fc
    move/from16 v1, v24

    #@fe
    if-ne v0, v1, :cond_5

    #@100
    const/16 v24, 0x0

    #@102
    aget v24, v20, v24

    #@104
    if-nez v24, :cond_5

    #@106
    .line 121
    .end local v4    # "bigRadix":I
    .end local v5    # "charsPerInt":I
    .end local v9    # "delta":I
    .end local v15    # "previous":I
    .end local v16    # "resDigit":I
    .end local v20    # "temp":[I
    .end local v21    # "tempLen":I
    :cond_b
    :goto_3
    aget-char v24, v18, v8

    #@108
    const/16 v25, 0x30

    #@10a
    move/from16 v0, v24

    #@10c
    move/from16 v1, v25

    #@10e
    if-ne v0, v1, :cond_e

    #@110
    .line 122
    add-int/lit8 v8, v8, 0x1

    #@112
    goto :goto_3

    #@113
    .line 114
    .end local v12    # "i":I
    :cond_c
    const/4 v12, 0x0

    #@114
    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v14, :cond_b

    #@116
    .line 115
    const/4 v13, 0x0

    #@117
    .local v13, "j":I
    :goto_5
    const/16 v24, 0x8

    #@119
    move/from16 v0, v24

    #@11b
    if-ge v13, v0, :cond_d

    #@11d
    if-lez v8, :cond_d

    #@11f
    .line 116
    aget v24, v10, v12

    #@121
    shl-int/lit8 v25, v13, 0x2

    #@123
    shr-int v24, v24, v25

    #@125
    and-int/lit8 v16, v24, 0xf

    #@127
    .line 117
    .restart local v16    # "resDigit":I
    add-int/lit8 v8, v8, -0x1

    #@129
    const/16 v24, 0x10

    #@12b
    move/from16 v0, v16

    #@12d
    move/from16 v1, v24

    #@12f
    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    #@132
    move-result v24

    #@133
    aput-char v24, v18, v8

    #@135
    .line 115
    add-int/lit8 v13, v13, 0x1

    #@137
    goto :goto_5

    #@138
    .line 114
    .end local v16    # "resDigit":I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    #@13a
    goto :goto_4

    #@13b
    .line 124
    .end local v13    # "j":I
    :cond_e
    const/16 v24, -0x1

    #@13d
    move/from16 v0, v19

    #@13f
    move/from16 v1, v24

    #@141
    if-ne v0, v1, :cond_f

    #@143
    .line 125
    add-int/lit8 v8, v8, -0x1

    #@145
    const/16 v24, 0x2d

    #@147
    aput-char v24, v18, v8

    #@149
    .line 127
    :cond_f
    new-instance v24, Ljava/lang/String;

    #@14b
    sub-int v25, v17, v8

    #@14d
    move-object/from16 v0, v24

    #@14f
    move-object/from16 v1, v18

    #@151
    move/from16 v2, v25

    #@153
    invoke-direct {v0, v1, v8, v2}, Ljava/lang/String;-><init>([CII)V

    #@156
    return-object v24
.end method

.method static divideLongByBillion(J)J
    .locals 14
    .param p0, "a"    # J

    #@0
    .prologue
    const-wide/32 v12, 0x3b9aca00

    #@3
    const-wide/32 v10, 0x1dcd6500

    #@6
    const/4 v8, 0x1

    #@7
    .line 398
    const-wide/16 v6, 0x0

    #@9
    cmp-long v6, p0, v6

    #@b
    if-ltz v6, :cond_0

    #@d
    .line 400
    div-long v2, p0, v12

    #@f
    .line 401
    .local v2, "quot":J
    rem-long v4, p0, v12

    #@11
    .line 414
    .local v4, "rem":J
    :goto_0
    const/16 v6, 0x20

    #@13
    shl-long v6, v4, v6

    #@15
    const-wide v8, 0xffffffffL

    #@1a
    and-long/2addr v8, v2

    #@1b
    or-long/2addr v6, v8

    #@1c
    return-wide v6

    #@1d
    .line 407
    .end local v2    # "quot":J
    .end local v4    # "rem":J
    :cond_0
    ushr-long v0, p0, v8

    #@1f
    .line 409
    .local v0, "aPos":J
    div-long v2, v0, v10

    #@21
    .line 410
    .restart local v2    # "quot":J
    rem-long v4, v0, v10

    #@23
    .line 412
    .restart local v4    # "rem":J
    shl-long v6, v4, v8

    #@25
    const-wide/16 v8, 0x1

    #@27
    and-long/2addr v8, p0

    #@28
    add-long v4, v6, v8

    #@2a
    goto :goto_0
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .locals 22
    .param p0, "value"    # J
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 301
    const-wide/16 v16, 0x0

    #@2
    cmp-long v13, p0, v16

    #@4
    if-gez v13, :cond_1

    #@6
    const/4 v7, 0x1

    #@7
    .line 302
    .local v7, "negNumber":Z
    :goto_0
    if-eqz v7, :cond_0

    #@9
    .line 303
    move-wide/from16 v0, p0

    #@b
    neg-long v0, v0

    #@c
    move-wide/from16 p0, v0

    #@e
    .line 305
    :cond_0
    const-wide/16 v16, 0x0

    #@10
    cmp-long v13, p0, v16

    #@12
    if-nez v13, :cond_4

    #@14
    .line 306
    packed-switch p2, :pswitch_data_0

    #@17
    .line 315
    new-instance v11, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    .line 316
    .local v11, "result1":Ljava/lang/StringBuilder;
    if-gez p2, :cond_2

    #@1e
    .line 317
    const-string/jumbo v13, "0E+"

    #@21
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 321
    :goto_1
    const/high16 v13, -0x80000000

    #@26
    move/from16 v0, p2

    #@28
    if-ne v0, v13, :cond_3

    #@2a
    const-string/jumbo v13, "2147483648"

    #@2d
    :goto_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 322
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v13

    #@34
    return-object v13

    #@35
    .line 301
    .end local v7    # "negNumber":Z
    .end local v11    # "result1":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v7, 0x0

    #@36
    .restart local v7    # "negNumber":Z
    goto :goto_0

    #@37
    .line 307
    :pswitch_0
    const-string/jumbo v13, "0"

    #@3a
    return-object v13

    #@3b
    .line 308
    :pswitch_1
    const-string/jumbo v13, "0.0"

    #@3e
    return-object v13

    #@3f
    .line 309
    :pswitch_2
    const-string/jumbo v13, "0.00"

    #@42
    return-object v13

    #@43
    .line 310
    :pswitch_3
    const-string/jumbo v13, "0.000"

    #@46
    return-object v13

    #@47
    .line 311
    :pswitch_4
    const-string/jumbo v13, "0.0000"

    #@4a
    return-object v13

    #@4b
    .line 312
    :pswitch_5
    const-string/jumbo v13, "0.00000"

    #@4e
    return-object v13

    #@4f
    .line 313
    :pswitch_6
    const-string/jumbo v13, "0.000000"

    #@52
    return-object v13

    #@53
    .line 319
    .restart local v11    # "result1":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v13, "0E"

    #@56
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_1

    #@5a
    .line 321
    :cond_3
    move/from16 v0, p2

    #@5c
    neg-int v13, v0

    #@5d
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@60
    move-result-object v13

    #@61
    goto :goto_2

    #@62
    .line 331
    .end local v11    # "result1":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v13, 0x13

    #@64
    new-array v10, v13, [C

    #@66
    .line 326
    .local v10, "result":[C
    const/16 v2, 0x12

    #@68
    .line 335
    .local v2, "currentChar":I
    move-wide/from16 v14, p0

    #@6a
    .line 337
    .local v14, "v":J
    :cond_5
    move-wide v8, v14

    #@6b
    .line 338
    .local v8, "prev":J
    const-wide/16 v16, 0xa

    #@6d
    div-long v14, v14, v16

    #@6f
    .line 339
    add-int/lit8 v2, v2, -0x1

    #@71
    const-wide/16 v16, 0xa

    #@73
    mul-long v16, v16, v14

    #@75
    sub-long v16, v8, v16

    #@77
    const-wide/16 v18, 0x30

    #@79
    add-long v16, v16, v18

    #@7b
    move-wide/from16 v0, v16

    #@7d
    long-to-int v13, v0

    #@7e
    int-to-char v13, v13

    #@7f
    aput-char v13, v10, v2

    #@81
    .line 340
    const-wide/16 v16, 0x0

    #@83
    cmp-long v13, v14, v16

    #@85
    if-nez v13, :cond_5

    #@87
    .line 342
    int-to-long v0, v2

    #@88
    move-wide/from16 v16, v0

    #@8a
    const-wide/16 v18, 0x12

    #@8c
    sub-long v16, v18, v16

    #@8e
    move/from16 v0, p2

    #@90
    int-to-long v0, v0

    #@91
    move-wide/from16 v18, v0

    #@93
    sub-long v16, v16, v18

    #@95
    const-wide/16 v18, 0x1

    #@97
    sub-long v4, v16, v18

    #@99
    .line 343
    .local v4, "exponent":J
    if-nez p2, :cond_7

    #@9b
    .line 344
    if-eqz v7, :cond_6

    #@9d
    .line 345
    add-int/lit8 v2, v2, -0x1

    #@9f
    const/16 v13, 0x2d

    #@a1
    aput-char v13, v10, v2

    #@a3
    .line 347
    :cond_6
    new-instance v13, Ljava/lang/String;

    #@a5
    rsub-int/lit8 v16, v2, 0x12

    #@a7
    move/from16 v0, v16

    #@a9
    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    #@ac
    return-object v13

    #@ad
    .line 349
    :cond_7
    if-lez p2, :cond_d

    #@af
    const-wide/16 v16, -0x6

    #@b1
    cmp-long v13, v4, v16

    #@b3
    if-ltz v13, :cond_d

    #@b5
    .line 350
    const-wide/16 v16, 0x0

    #@b7
    cmp-long v13, v4, v16

    #@b9
    if-ltz v13, :cond_a

    #@bb
    .line 352
    long-to-int v13, v4

    #@bc
    add-int v3, v2, v13

    #@be
    .line 353
    .local v3, "insertPoint":I
    const/16 v6, 0x11

    #@c0
    .local v6, "j":I
    :goto_3
    if-lt v6, v3, :cond_8

    #@c2
    .line 354
    add-int/lit8 v13, v6, 0x1

    #@c4
    aget-char v16, v10, v6

    #@c6
    aput-char v16, v10, v13

    #@c8
    .line 353
    add-int/lit8 v6, v6, -0x1

    #@ca
    goto :goto_3

    #@cb
    .line 356
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@cd
    const/16 v13, 0x2e

    #@cf
    aput-char v13, v10, v3

    #@d1
    .line 357
    if-eqz v7, :cond_9

    #@d3
    .line 358
    add-int/lit8 v2, v2, -0x1

    #@d5
    const/16 v13, 0x2d

    #@d7
    aput-char v13, v10, v2

    #@d9
    .line 360
    :cond_9
    new-instance v13, Ljava/lang/String;

    #@db
    rsub-int/lit8 v16, v2, 0x12

    #@dd
    add-int/lit8 v16, v16, 0x1

    #@df
    move/from16 v0, v16

    #@e1
    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    #@e4
    return-object v13

    #@e5
    .line 363
    .end local v3    # "insertPoint":I
    .end local v6    # "j":I
    :cond_a
    const/4 v6, 0x2

    #@e6
    .restart local v6    # "j":I
    :goto_4
    int-to-long v0, v6

    #@e7
    move-wide/from16 v16, v0

    #@e9
    neg-long v0, v4

    #@ea
    move-wide/from16 v18, v0

    #@ec
    const-wide/16 v20, 0x1

    #@ee
    add-long v18, v18, v20

    #@f0
    cmp-long v13, v16, v18

    #@f2
    if-gez v13, :cond_b

    #@f4
    .line 364
    add-int/lit8 v2, v2, -0x1

    #@f6
    const/16 v13, 0x30

    #@f8
    aput-char v13, v10, v2

    #@fa
    .line 363
    add-int/lit8 v6, v6, 0x1

    #@fc
    goto :goto_4

    #@fd
    .line 366
    :cond_b
    add-int/lit8 v2, v2, -0x1

    #@ff
    const/16 v13, 0x2e

    #@101
    aput-char v13, v10, v2

    #@103
    .line 367
    add-int/lit8 v2, v2, -0x1

    #@105
    const/16 v13, 0x30

    #@107
    aput-char v13, v10, v2

    #@109
    .line 368
    if-eqz v7, :cond_c

    #@10b
    .line 369
    add-int/lit8 v2, v2, -0x1

    #@10d
    const/16 v13, 0x2d

    #@10f
    aput-char v13, v10, v2

    #@111
    .line 371
    :cond_c
    new-instance v13, Ljava/lang/String;

    #@113
    rsub-int/lit8 v16, v2, 0x12

    #@115
    move/from16 v0, v16

    #@117
    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    #@11a
    return-object v13

    #@11b
    .line 373
    .end local v6    # "j":I
    :cond_d
    add-int/lit8 v12, v2, 0x1

    #@11d
    .line 375
    .local v12, "startPoint":I
    new-instance v11, Ljava/lang/StringBuilder;

    #@11f
    rsub-int/lit8 v13, v12, 0x22

    #@121
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    #@124
    .line 376
    .restart local v11    # "result1":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_e

    #@126
    .line 377
    const/16 v13, 0x2d

    #@128
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12b
    .line 379
    :cond_e
    rsub-int/lit8 v13, v12, 0x12

    #@12d
    const/16 v16, 0x1

    #@12f
    move/from16 v0, v16

    #@131
    if-lt v13, v0, :cond_10

    #@133
    .line 380
    aget-char v13, v10, v2

    #@135
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@138
    .line 381
    const/16 v13, 0x2e

    #@13a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13d
    .line 382
    add-int/lit8 v13, v2, 0x1

    #@13f
    rsub-int/lit8 v16, v2, 0x12

    #@141
    add-int/lit8 v16, v16, -0x1

    #@143
    move/from16 v0, v16

    #@145
    invoke-virtual {v11, v10, v13, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@148
    .line 386
    :goto_5
    const/16 v13, 0x45

    #@14a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14d
    .line 387
    const-wide/16 v16, 0x0

    #@14f
    cmp-long v13, v4, v16

    #@151
    if-lez v13, :cond_f

    #@153
    .line 388
    const/16 v13, 0x2b

    #@155
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@158
    .line 390
    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@15b
    move-result-object v13

    #@15c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    .line 391
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v13

    #@163
    return-object v13

    #@164
    .line 384
    :cond_10
    rsub-int/lit8 v13, v2, 0x12

    #@166
    invoke-virtual {v11, v10, v2, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@169
    goto :goto_5

    #@16a
    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 44
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I

    #@0
    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    #@3
    .line 139
    move-object/from16 v0, p0

    #@5
    iget v0, v0, Ljava/math/BigInteger;->sign:I

    #@7
    move/from16 v28, v0

    #@9
    .line 140
    .local v28, "sign":I
    move-object/from16 v0, p0

    #@b
    iget v15, v0, Ljava/math/BigInteger;->numberLength:I

    #@d
    .line 141
    .local v15, "numberLength":I
    move-object/from16 v0, p0

    #@f
    iget-object v6, v0, Ljava/math/BigInteger;->digits:[I

    #@11
    .line 146
    .local v6, "digits":[I
    if-nez v28, :cond_1

    #@13
    .line 147
    packed-switch p1, :pswitch_data_0

    #@16
    .line 163
    new-instance v25, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    .line 164
    .local v25, "result1":Ljava/lang/StringBuilder;
    if-gez p1, :cond_0

    #@1d
    .line 165
    const-string/jumbo v35, "0E+"

    #@20
    move-object/from16 v0, v25

    #@22
    move-object/from16 v1, v35

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 169
    :goto_0
    move/from16 v0, p1

    #@29
    neg-int v0, v0

    #@2a
    move/from16 v35, v0

    #@2c
    move-object/from16 v0, v25

    #@2e
    move/from16 v1, v35

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    .line 170
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v35

    #@37
    return-object v35

    #@38
    .line 149
    .end local v25    # "result1":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string/jumbo v35, "0"

    #@3b
    return-object v35

    #@3c
    .line 151
    :pswitch_1
    const-string/jumbo v35, "0.0"

    #@3f
    return-object v35

    #@40
    .line 153
    :pswitch_2
    const-string/jumbo v35, "0.00"

    #@43
    return-object v35

    #@44
    .line 155
    :pswitch_3
    const-string/jumbo v35, "0.000"

    #@47
    return-object v35

    #@48
    .line 157
    :pswitch_4
    const-string/jumbo v35, "0.0000"

    #@4b
    return-object v35

    #@4c
    .line 159
    :pswitch_5
    const-string/jumbo v35, "0.00000"

    #@4f
    return-object v35

    #@50
    .line 161
    :pswitch_6
    const-string/jumbo v35, "0.000000"

    #@53
    return-object v35

    #@54
    .line 167
    .restart local v25    # "result1":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v35, "0E"

    #@57
    move-object/from16 v0, v25

    #@59
    move-object/from16 v1, v35

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    goto :goto_0

    #@5f
    .line 174
    .end local v25    # "result1":Ljava/lang/StringBuilder;
    :cond_1
    mul-int/lit8 v35, v15, 0xa

    #@61
    add-int/lit8 v35, v35, 0x1

    #@63
    add-int/lit8 v23, v35, 0x7

    #@65
    .line 179
    .local v23, "resLengthInChars":I
    add-int/lit8 v35, v23, 0x1

    #@67
    move/from16 v0, v35

    #@69
    new-array v0, v0, [C

    #@6b
    move-object/from16 v24, v0

    #@6d
    .line 183
    .local v24, "result":[C
    move/from16 v4, v23

    #@6f
    .line 184
    .local v4, "currentChar":I
    const/16 v35, 0x1

    #@71
    move/from16 v0, v35

    #@73
    if-ne v15, v0, :cond_6

    #@75
    .line 185
    const/16 v35, 0x0

    #@77
    aget v9, v6, v35

    #@79
    .line 186
    .local v9, "highDigit":I
    if-gez v9, :cond_5

    #@7b
    .line 187
    int-to-long v0, v9

    #@7c
    move-wide/from16 v38, v0

    #@7e
    const-wide v40, 0xffffffffL

    #@83
    and-long v36, v38, v40

    #@85
    .line 189
    .local v36, "v":J
    :cond_2
    move-wide/from16 v18, v36

    #@87
    .line 190
    .local v18, "prev":J
    const-wide/16 v38, 0xa

    #@89
    div-long v36, v36, v38

    #@8b
    .line 191
    add-int/lit8 v4, v4, -0x1

    #@8d
    const-wide/16 v38, 0xa

    #@8f
    mul-long v38, v38, v36

    #@91
    sub-long v38, v18, v38

    #@93
    move-wide/from16 v0, v38

    #@95
    long-to-int v0, v0

    #@96
    move/from16 v35, v0

    #@98
    add-int/lit8 v35, v35, 0x30

    #@9a
    move/from16 v0, v35

    #@9c
    int-to-char v0, v0

    #@9d
    move/from16 v35, v0

    #@9f
    aput-char v35, v24, v4

    #@a1
    .line 192
    const-wide/16 v38, 0x0

    #@a3
    cmp-long v35, v36, v38

    #@a5
    if-nez v35, :cond_2

    #@a7
    .line 238
    .end local v9    # "highDigit":I
    .end local v18    # "prev":J
    .end local v36    # "v":J
    :cond_3
    if-gez v28, :cond_d

    #@a9
    const/4 v14, 0x1

    #@aa
    .line 239
    .local v14, "negNumber":Z
    :goto_1
    sub-int v35, v23, v4

    #@ac
    sub-int v35, v35, p1

    #@ae
    add-int/lit8 v8, v35, -0x1

    #@b0
    .line 240
    .local v8, "exponent":I
    if-nez p1, :cond_e

    #@b2
    .line 241
    if-eqz v14, :cond_4

    #@b4
    .line 242
    add-int/lit8 v4, v4, -0x1

    #@b6
    const/16 v35, 0x2d

    #@b8
    aput-char v35, v24, v4

    #@ba
    .line 244
    :cond_4
    new-instance v35, Ljava/lang/String;

    #@bc
    sub-int v38, v23, v4

    #@be
    move-object/from16 v0, v35

    #@c0
    move-object/from16 v1, v24

    #@c2
    move/from16 v2, v38

    #@c4
    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    #@c7
    return-object v35

    #@c8
    .line 194
    .end local v8    # "exponent":I
    .end local v14    # "negNumber":Z
    .restart local v9    # "highDigit":I
    :cond_5
    move/from16 v34, v9

    #@ca
    .line 196
    .local v34, "v":I
    :goto_2
    move/from16 v16, v34

    #@cc
    .line 197
    .local v16, "prev":I
    div-int/lit8 v34, v34, 0xa

    #@ce
    .line 198
    add-int/lit8 v4, v4, -0x1

    #@d0
    mul-int/lit8 v35, v34, 0xa

    #@d2
    sub-int v35, v16, v35

    #@d4
    add-int/lit8 v35, v35, 0x30

    #@d6
    move/from16 v0, v35

    #@d8
    int-to-char v0, v0

    #@d9
    move/from16 v35, v0

    #@db
    aput-char v35, v24, v4

    #@dd
    .line 199
    if-eqz v34, :cond_3

    #@df
    goto :goto_2

    #@e0
    .line 202
    .end local v9    # "highDigit":I
    .end local v16    # "prev":I
    .end local v34    # "v":I
    :cond_6
    new-array v0, v15, [I

    #@e2
    move-object/from16 v30, v0

    #@e4
    .line 203
    .local v30, "temp":[I
    move/from16 v31, v15

    #@e6
    .line 204
    .local v31, "tempLen":I
    const/16 v35, 0x0

    #@e8
    const/16 v38, 0x0

    #@ea
    move/from16 v0, v35

    #@ec
    move-object/from16 v1, v30

    #@ee
    move/from16 v2, v38

    #@f0
    move/from16 v3, v31

    #@f2
    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@f5
    .line 209
    :goto_3
    const-wide/16 v26, 0x0

    #@f7
    .line 210
    .local v26, "result11":J
    add-int/lit8 v11, v31, -0x1

    #@f9
    .local v11, "i1":I
    :goto_4
    if-ltz v11, :cond_7

    #@fb
    .line 211
    const/16 v35, 0x20

    #@fd
    shl-long v38, v26, v35

    #@ff
    .line 212
    aget v35, v30, v11

    #@101
    move/from16 v0, v35

    #@103
    int-to-long v0, v0

    #@104
    move-wide/from16 v40, v0

    #@106
    const-wide v42, 0xffffffffL

    #@10b
    and-long v40, v40, v42

    #@10d
    .line 211
    add-long v32, v38, v40

    #@10f
    .line 213
    .local v32, "temp1":J
    invoke-static/range {v32 .. v33}, Ljava/math/Conversion;->divideLongByBillion(J)J

    #@112
    move-result-wide v20

    #@113
    .line 214
    .local v20, "res":J
    move-wide/from16 v0, v20

    #@115
    long-to-int v0, v0

    #@116
    move/from16 v35, v0

    #@118
    aput v35, v30, v11

    #@11a
    .line 215
    const/16 v35, 0x20

    #@11c
    shr-long v38, v20, v35

    #@11e
    move-wide/from16 v0, v38

    #@120
    long-to-int v0, v0

    #@121
    move/from16 v35, v0

    #@123
    move/from16 v0, v35

    #@125
    int-to-long v0, v0

    #@126
    move-wide/from16 v26, v0

    #@128
    .line 210
    add-int/lit8 v11, v11, -0x1

    #@12a
    goto :goto_4

    #@12b
    .line 217
    .end local v20    # "res":J
    .end local v32    # "temp1":J
    :cond_7
    move-wide/from16 v0, v26

    #@12d
    long-to-int v0, v0

    #@12e
    move/from16 v22, v0

    #@130
    .line 218
    .local v22, "resDigit":I
    move/from16 v17, v4

    #@132
    .line 220
    .local v17, "previous":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    #@134
    rem-int/lit8 v35, v22, 0xa

    #@136
    add-int/lit8 v35, v35, 0x30

    #@138
    move/from16 v0, v35

    #@13a
    int-to-char v0, v0

    #@13b
    move/from16 v35, v0

    #@13d
    aput-char v35, v24, v4

    #@13f
    .line 221
    div-int/lit8 v22, v22, 0xa

    #@141
    if-eqz v22, :cond_9

    #@143
    if-nez v4, :cond_8

    #@145
    .line 222
    :cond_9
    rsub-int/lit8 v35, v17, 0x9

    #@147
    add-int v5, v35, v4

    #@149
    .line 223
    .local v5, "delta":I
    const/4 v10, 0x0

    #@14a
    .local v10, "i":I
    :goto_5
    if-ge v10, v5, :cond_a

    #@14c
    if-lez v4, :cond_a

    #@14e
    .line 224
    add-int/lit8 v4, v4, -0x1

    #@150
    const/16 v35, 0x30

    #@152
    aput-char v35, v24, v4

    #@154
    .line 223
    add-int/lit8 v10, v10, 0x1

    #@156
    goto :goto_5

    #@157
    .line 226
    :cond_a
    add-int/lit8 v13, v31, -0x1

    #@159
    .line 227
    .local v13, "j":I
    :goto_6
    aget v35, v30, v13

    #@15b
    if-nez v35, :cond_c

    #@15d
    .line 228
    if-nez v13, :cond_b

    #@15f
    .line 234
    :goto_7
    aget-char v35, v24, v4

    #@161
    const/16 v38, 0x30

    #@163
    move/from16 v0, v35

    #@165
    move/from16 v1, v38

    #@167
    if-ne v0, v1, :cond_3

    #@169
    .line 235
    add-int/lit8 v4, v4, 0x1

    #@16b
    goto :goto_7

    #@16c
    .line 227
    :cond_b
    add-int/lit8 v13, v13, -0x1

    #@16e
    goto :goto_6

    #@16f
    .line 232
    :cond_c
    add-int/lit8 v31, v13, 0x1

    #@171
    goto :goto_3

    #@172
    .line 238
    .end local v5    # "delta":I
    .end local v10    # "i":I
    .end local v11    # "i1":I
    .end local v13    # "j":I
    .end local v17    # "previous":I
    .end local v22    # "resDigit":I
    .end local v26    # "result11":J
    .end local v30    # "temp":[I
    .end local v31    # "tempLen":I
    :cond_d
    const/4 v14, 0x0

    #@173
    .restart local v14    # "negNumber":Z
    goto/16 :goto_1

    #@175
    .line 247
    .restart local v8    # "exponent":I
    :cond_e
    if-lez p1, :cond_14

    #@177
    const/16 v35, -0x6

    #@179
    move/from16 v0, v35

    #@17b
    if-lt v8, v0, :cond_14

    #@17d
    .line 248
    if-ltz v8, :cond_11

    #@17f
    .line 250
    add-int v12, v4, v8

    #@181
    .line 251
    .local v12, "insertPoint":I
    add-int/lit8 v13, v23, -0x1

    #@183
    .restart local v13    # "j":I
    :goto_8
    if-lt v13, v12, :cond_f

    #@185
    .line 252
    add-int/lit8 v35, v13, 0x1

    #@187
    aget-char v38, v24, v13

    #@189
    aput-char v38, v24, v35

    #@18b
    .line 251
    add-int/lit8 v13, v13, -0x1

    #@18d
    goto :goto_8

    #@18e
    .line 254
    :cond_f
    add-int/lit8 v12, v12, 0x1

    #@190
    const/16 v35, 0x2e

    #@192
    aput-char v35, v24, v12

    #@194
    .line 255
    if-eqz v14, :cond_10

    #@196
    .line 256
    add-int/lit8 v4, v4, -0x1

    #@198
    const/16 v35, 0x2d

    #@19a
    aput-char v35, v24, v4

    #@19c
    .line 258
    :cond_10
    new-instance v35, Ljava/lang/String;

    #@19e
    sub-int v38, v23, v4

    #@1a0
    add-int/lit8 v38, v38, 0x1

    #@1a2
    move-object/from16 v0, v35

    #@1a4
    move-object/from16 v1, v24

    #@1a6
    move/from16 v2, v38

    #@1a8
    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    #@1ab
    return-object v35

    #@1ac
    .line 262
    .end local v12    # "insertPoint":I
    .end local v13    # "j":I
    :cond_11
    const/4 v13, 0x2

    #@1ad
    .restart local v13    # "j":I
    :goto_9
    neg-int v0, v8

    #@1ae
    move/from16 v35, v0

    #@1b0
    add-int/lit8 v35, v35, 0x1

    #@1b2
    move/from16 v0, v35

    #@1b4
    if-ge v13, v0, :cond_12

    #@1b6
    .line 263
    add-int/lit8 v4, v4, -0x1

    #@1b8
    const/16 v35, 0x30

    #@1ba
    aput-char v35, v24, v4

    #@1bc
    .line 262
    add-int/lit8 v13, v13, 0x1

    #@1be
    goto :goto_9

    #@1bf
    .line 265
    :cond_12
    add-int/lit8 v4, v4, -0x1

    #@1c1
    const/16 v35, 0x2e

    #@1c3
    aput-char v35, v24, v4

    #@1c5
    .line 266
    add-int/lit8 v4, v4, -0x1

    #@1c7
    const/16 v35, 0x30

    #@1c9
    aput-char v35, v24, v4

    #@1cb
    .line 267
    if-eqz v14, :cond_13

    #@1cd
    .line 268
    add-int/lit8 v4, v4, -0x1

    #@1cf
    const/16 v35, 0x2d

    #@1d1
    aput-char v35, v24, v4

    #@1d3
    .line 270
    :cond_13
    new-instance v35, Ljava/lang/String;

    #@1d5
    sub-int v38, v23, v4

    #@1d7
    move-object/from16 v0, v35

    #@1d9
    move-object/from16 v1, v24

    #@1db
    move/from16 v2, v38

    #@1dd
    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    #@1e0
    return-object v35

    #@1e1
    .line 273
    .end local v13    # "j":I
    :cond_14
    add-int/lit8 v29, v4, 0x1

    #@1e3
    .line 274
    .local v29, "startPoint":I
    move/from16 v7, v23

    #@1e5
    .line 275
    .local v7, "endPoint":I
    new-instance v25, Ljava/lang/StringBuilder;

    #@1e7
    add-int/lit8 v35, v7, 0x10

    #@1e9
    sub-int v35, v35, v29

    #@1eb
    move-object/from16 v0, v25

    #@1ed
    move/from16 v1, v35

    #@1ef
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f2
    .line 276
    .restart local v25    # "result1":Ljava/lang/StringBuilder;
    if-eqz v14, :cond_15

    #@1f4
    .line 277
    const/16 v35, 0x2d

    #@1f6
    move-object/from16 v0, v25

    #@1f8
    move/from16 v1, v35

    #@1fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1fd
    .line 279
    :cond_15
    sub-int v35, v7, v29

    #@1ff
    const/16 v38, 0x1

    #@201
    move/from16 v0, v35

    #@203
    move/from16 v1, v38

    #@205
    if-lt v0, v1, :cond_17

    #@207
    .line 280
    aget-char v35, v24, v4

    #@209
    move-object/from16 v0, v25

    #@20b
    move/from16 v1, v35

    #@20d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@210
    .line 281
    const/16 v35, 0x2e

    #@212
    move-object/from16 v0, v25

    #@214
    move/from16 v1, v35

    #@216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@219
    .line 282
    add-int/lit8 v35, v4, 0x1

    #@21b
    sub-int v38, v23, v4

    #@21d
    add-int/lit8 v38, v38, -0x1

    #@21f
    move-object/from16 v0, v25

    #@221
    move-object/from16 v1, v24

    #@223
    move/from16 v2, v35

    #@225
    move/from16 v3, v38

    #@227
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@22a
    .line 288
    :goto_a
    const/16 v35, 0x45

    #@22c
    move-object/from16 v0, v25

    #@22e
    move/from16 v1, v35

    #@230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@233
    .line 289
    if-lez v8, :cond_16

    #@235
    .line 290
    const/16 v35, 0x2b

    #@237
    move-object/from16 v0, v25

    #@239
    move/from16 v1, v35

    #@23b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23e
    .line 292
    :cond_16
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@241
    move-result-object v35

    #@242
    move-object/from16 v0, v25

    #@244
    move-object/from16 v1, v35

    #@246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    .line 293
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24c
    move-result-object v35

    #@24d
    return-object v35

    #@24e
    .line 285
    :cond_17
    sub-int v35, v23, v4

    #@250
    move-object/from16 v0, v25

    #@252
    move-object/from16 v1, v24

    #@254
    move/from16 v2, v35

    #@256
    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@259
    goto :goto_a

    #@25a
    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
