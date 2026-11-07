.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# direct methods
.method public static blacklist add([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 18
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 19
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 21
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 22
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 24
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 25
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 27
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 28
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 30
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 31
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 33
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 34
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 36
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 37
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 72
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 73
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 75
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 76
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 78
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 79
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 81
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 82
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 84
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 85
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 87
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 88
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 90
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 91
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist copy([II[II)V
    .registers 6

    .line 251
    aget v0, p0, p1

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 252
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    .line 253
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    .line 254
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    .line 255
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    .line 256
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 p1, p1, 0x6

    .line 257
    aget p0, p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4

    const/4 v0, 0x0

    .line 240
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 241
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 242
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 243
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 244
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 245
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 246
    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    const/4 v0, 0x7

    .line 262
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    const/16 v0, 0xe

    .line 267
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5

    const/4 v0, 0x6

    :goto_1
    if-ltz v0, :cond_e

    .line 288
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    .line 298
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_26

    .line 303
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x7

    if-ge v1, v2, :cond_25

    .line 308
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    .line 309
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    return-object v0

    .line 300
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 318
    aget p0, p0, v0

    :goto_5
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_8
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_16

    const/4 v2, 0x7

    if-lt v1, v2, :cond_10

    goto :goto_16

    :cond_10
    and-int/lit8 p1, p1, 0x1f

    .line 326
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_5

    :cond_16
    :goto_16
    return v0
.end method

.method public static blacklist gte([I[I)Z
    .registers 7

    const/4 v0, 0x6

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 333
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 334
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    if-le v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5

    const/4 v0, 0x0

    .line 359
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x7

    if-ge v1, v3, :cond_13

    .line 365
    aget v3, p0, v1

    if-eqz v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return v2
.end method

.method public static blacklist isZero([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_d

    .line 377
    aget v2, p0, v1

    if-eqz v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist mul([I[I[I)V
    .registers 33

    const/4 v0, 0x0

    .line 387
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 388
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 389
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 390
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 391
    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    .line 392
    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    const/4 v15, 0x6

    move/from16 v21, v4

    .line 393
    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    .line 396
    aget v6, p0, v16

    int-to-long v6, v6

    and-long v6, v6, v19

    move/from16 v25, v8

    move-wide/from16 v26, v9

    mul-long v8, v6, v17

    long-to-int v10, v8

    .line 398
    aput v10, p2, v16

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    mul-long v28, v6, v23

    add-long v8, v8, v28

    move/from16 p1, v10

    long-to-int v10, v8

    .line 401
    aput v10, p2, v22

    ushr-long v8, v8, p1

    mul-long v28, v6, v26

    add-long v8, v8, v28

    long-to-int v10, v8

    .line 404
    aput v10, p2, v25

    ushr-long v8, v8, p1

    mul-long v28, v6, v12

    add-long v8, v8, v28

    long-to-int v10, v8

    .line 407
    aput v10, p2, v11

    ushr-long v8, v8, p1

    mul-long v10, v6, v0

    add-long/2addr v8, v10

    long-to-int v10, v8

    .line 410
    aput v10, p2, v14

    ushr-long v8, v8, p1

    mul-long v10, v6, v2

    add-long/2addr v8, v10

    long-to-int v10, v8

    .line 413
    aput v10, p2, v21

    ushr-long v8, v8, p1

    mul-long/2addr v6, v4

    add-long/2addr v8, v6

    long-to-int v6, v8

    .line 416
    aput v6, p2, v15

    ushr-long v6, v8, p1

    long-to-int v6, v6

    const/4 v7, 0x7

    .line 418
    aput v6, p2, v7

    move/from16 v6, v22

    :goto_82
    if-ge v6, v7, :cond_102

    .line 423
    aget v8, p0, v6

    int-to-long v8, v8

    and-long v8, v8, v19

    mul-long v10, v8, v17

    .line 424
    aget v14, p2, v6

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    long-to-int v14, v10

    .line 425
    aput v14, p2, v6

    ushr-long v10, v10, p1

    mul-long v14, v8, v23

    add-int/lit8 v16, v6, 0x1

    .line 427
    aget v7, p2, v16

    move-wide/from16 v28, v0

    int-to-long v0, v7

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v10, v14

    long-to-int v0, v10

    .line 428
    aput v0, p2, v16

    ushr-long v0, v10, p1

    mul-long v10, v8, v26

    add-int/lit8 v7, v6, 0x2

    .line 430
    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 431
    aput v10, p2, v7

    ushr-long v0, v0, p1

    mul-long v10, v8, v12

    add-int/lit8 v7, v6, 0x3

    .line 433
    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 434
    aput v10, p2, v7

    ushr-long v0, v0, p1

    mul-long v10, v8, v28

    add-int/lit8 v7, v6, 0x4

    .line 436
    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 437
    aput v10, p2, v7

    ushr-long v0, v0, p1

    mul-long v10, v8, v2

    add-int/lit8 v7, v6, 0x5

    .line 439
    aget v14, p2, v7

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 440
    aput v10, p2, v7

    ushr-long v0, v0, p1

    mul-long/2addr v8, v4

    add-int/lit8 v7, v6, 0x6

    .line 442
    aget v10, p2, v7

    int-to-long v10, v10

    and-long v10, v10, v19

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    long-to-int v8, v0

    .line 443
    aput v8, p2, v7

    ushr-long v0, v0, p1

    add-int/lit8 v6, v6, 0x7

    long-to-int v0, v0

    .line 445
    aput v0, p2, v6

    move/from16 v6, v16

    move-wide/from16 v0, v28

    const/4 v7, 0x7

    goto :goto_82

    :cond_102
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 19

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 606
    aget p0, p1, p2

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    .line 607
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 608
    aput p0, p5, p6

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    add-int/lit8 v8, p2, 0x1

    .line 610
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v4

    add-int/lit8 v4, p4, 0x1

    .line 611
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v10, v4

    add-long/2addr v6, v10

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 612
    aput v5, p5, v4

    ushr-long v4, v6, p0

    add-int/lit8 v6, p2, 0x2

    .line 614
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x2

    .line 615
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x2

    long-to-int v9, v4

    .line 616
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v8, p2, 0x3

    .line 618
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x3

    .line 619
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 620
    aput v7, p5, v6

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    .line 622
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x4

    .line 623
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x4

    long-to-int v9, v4

    .line 624
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v8, p2, 0x5

    .line 626
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x5

    .line 627
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    .line 628
    aput v7, p5, v6

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x6

    .line 630
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-long/2addr v0, v8

    add-int/lit8 v6, p4, 0x6

    .line 631
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v4

    .line 632
    aput v1, p5, v0

    ushr-long v0, v4, p0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 15

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long v6, v0, v4

    .line 726
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 727
    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x1

    .line 730
    aget v5, p3, v4

    int-to-long v8, v5

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v6, v0

    long-to-int v0, v6

    .line 731
    aput v0, p3, v4

    ushr-long v0, v6, p0

    add-int/lit8 v4, p4, 0x2

    .line 733
    aget v5, p3, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr p1, v5

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 734
    aput p1, p3, v4

    ushr-long p1, v0, p0

    add-int/lit8 v0, p4, 0x3

    .line 736
    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    .line 737
    aput v1, p3, v0

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_48

    const/4 p0, 0x0

    return p0

    :cond_48
    const/4 p0, 0x7

    const/4 p1, 0x4

    .line 739
    invoke-static {p0, p3, p4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 12

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long/2addr v0, p0

    .line 748
    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 749
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    .line 751
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr p0, v6

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 752
    aput p0, p2, v5

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 754
    aget v1, p2, v0

    int-to-long v5, v1

    and-long v1, v5, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 755
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_36

    const/4 p0, 0x0

    return p0

    :cond_36
    const/4 p0, 0x7

    const/4 p1, 0x3

    .line 757
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 35

    const/4 v0, 0x0

    .line 516
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 517
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 518
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 519
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 520
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 521
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    .line 522
    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v30, v19

    move-wide/from16 v19, v3

    move-wide/from16 v3, v30

    const/4 v2, 0x0

    :goto_33
    const/4 v15, 0x7

    if-ge v2, v15, :cond_e0

    .line 527
    aget v15, p0, v2

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    mul-long v15, v0, v17

    move-wide/from16 v23, v0

    .line 528
    aget v0, p2, v2

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v0, v15

    long-to-int v15, v0

    .line 529
    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    mul-long v25, v23, v5

    add-int/lit8 v16, v2, 0x1

    move/from16 p1, v15

    .line 531
    aget v15, p2, v16

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v25, v25, v0

    add-long v0, v27, v25

    long-to-int v15, v0

    .line 532
    aput v15, p2, v16

    ushr-long v0, v0, p1

    mul-long v25, v23, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v27, v0

    .line 534
    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v25, v25, v0

    add-long v0, v27, v25

    move/from16 v25, v2

    long-to-int v2, v0

    .line 535
    aput v2, p2, v15

    ushr-long v0, v0, p1

    mul-long v26, v23, v9

    add-int/lit8 v2, v25, 0x3

    .line 537
    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v28, v26

    long-to-int v15, v0

    .line 538
    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v26, v23, v11

    add-int/lit8 v2, v25, 0x4

    .line 540
    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v28, v26

    long-to-int v15, v0

    .line 541
    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v26, v23, v13

    add-int/lit8 v2, v25, 0x5

    .line 543
    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v26, v26, v0

    add-long v0, v28, v26

    long-to-int v15, v0

    .line 544
    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v23, v23, v21

    add-int/lit8 v2, v25, 0x6

    .line 546
    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v23, v23, v0

    add-long v0, v26, v23

    long-to-int v15, v0

    .line 547
    aput v15, p2, v2

    ushr-long v0, v0, p1

    add-int/lit8 v2, v25, 0x7

    .line 550
    aget v15, p2, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v0, v23, v0

    add-long/2addr v3, v0

    long-to-int v0, v3

    .line 551
    aput v0, p2, v2

    ushr-long v3, v3, p1

    move/from16 v2, v16

    move-wide/from16 v0, v21

    goto/16 :goto_33

    :cond_e0
    long-to-int v0, v3

    return v0
.end method

.method public static blacklist square([I[I)V
    .registers 44

    const/4 v0, 0x0

    .line 792
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0xe

    move v8, v0

    const/4 v7, 0x6

    :goto_e
    add-int/lit8 v9, v7, -0x1

    .line 800
    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    .line 802
    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    .line 803
    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_20e

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    .line 811
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 816
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 817
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 822
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 827
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    move/from16 v16, v0

    .line 828
    aget v0, p1, v15

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    const/16 v19, 0x4

    .line 829
    aget v0, p1, v19

    move/from16 v21, v6

    const/16 v20, 0x6

    int-to-long v5, v0

    and-long v5, v5, v17

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v0, v13

    shl-int/lit8 v22, v0, 0x1

    or-int v21, v22, v21

    .line 833
    aput v21, p1, v10

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v13, v13, v16

    mul-long v21, v11, v8

    add-long v13, v13, v21

    add-long/2addr v3, v13

    ushr-long v13, v3, v16

    add-long/2addr v5, v13

    and-long v3, v3, v17

    .line 840
    aget v10, p0, v15

    int-to-long v13, v10

    and-long v13, v13, v17

    const/4 v10, 0x5

    move/from16 v21, v7

    .line 841
    aget v7, p1, v10

    move-wide/from16 v22, v11

    move v12, v10

    int-to-long v10, v7

    and-long v10, v10, v17

    ushr-long v24, v5, v16

    add-long v10, v10, v24

    and-long v5, v5, v17

    .line 842
    aget v7, p1, v20

    move-wide/from16 v24, v13

    move v14, v12

    int-to-long v12, v7

    and-long v12, v12, v17

    ushr-long v26, v10, v16

    add-long v12, v12, v26

    and-long v10, v10, v17

    mul-long v26, v24, v1

    add-long v3, v3, v26

    long-to-int v7, v3

    shl-int/lit8 v26, v7, 0x1

    or-int v0, v26, v0

    .line 846
    aput v0, p1, v15

    ushr-int/lit8 v0, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v26, v24, v8

    add-long v3, v3, v26

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v26, v24, v22

    add-long v3, v3, v26

    add-long/2addr v10, v3

    and-long v3, v5, v17

    ushr-long v5, v10, v16

    add-long/2addr v12, v5

    and-long v5, v10, v17

    .line 855
    aget v7, p0, v19

    int-to-long v10, v7

    and-long v10, v10, v17

    const/4 v7, 0x7

    .line 856
    aget v15, p1, v7

    move-wide/from16 v26, v8

    move v9, v7

    int-to-long v7, v15

    and-long v7, v7, v17

    ushr-long v28, v12, v16

    add-long v7, v7, v28

    and-long v12, v12, v17

    const/16 v15, 0x8

    move/from16 v28, v9

    .line 857
    aget v9, p1, v15

    move/from16 v29, v14

    move/from16 v30, v15

    int-to-long v14, v9

    and-long v14, v14, v17

    ushr-long v31, v7, v16

    add-long v14, v14, v31

    and-long v7, v7, v17

    mul-long v31, v10, v1

    add-long v3, v3, v31

    long-to-int v9, v3

    shl-int/lit8 v31, v9, 0x1

    or-int v0, v31, v0

    .line 861
    aput v0, p1, v19

    ushr-int/lit8 v0, v9, 0x1f

    ushr-long v3, v3, v16

    mul-long v31, v10, v26

    add-long v3, v3, v31

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v31, v10, v22

    add-long v3, v3, v31

    add-long/2addr v12, v3

    and-long v3, v5, v17

    ushr-long v5, v12, v16

    mul-long v31, v10, v24

    add-long v5, v5, v31

    add-long/2addr v7, v5

    and-long v5, v12, v17

    ushr-long v12, v7, v16

    add-long/2addr v14, v12

    and-long v7, v7, v17

    .line 872
    aget v9, p0, v29

    int-to-long v12, v9

    and-long v12, v12, v17

    const/16 v19, 0x9

    .line 873
    aget v9, p1, v19

    move-wide/from16 v31, v1

    move v2, v0

    int-to-long v0, v9

    and-long v0, v0, v17

    ushr-long v33, v14, v16

    add-long v0, v0, v33

    and-long v14, v14, v17

    const/16 v33, 0xa

    .line 874
    aget v9, p1, v33

    move-wide/from16 v34, v0

    int-to-long v0, v9

    and-long v0, v0, v17

    ushr-long v36, v34, v16

    add-long v0, v0, v36

    and-long v34, v34, v17

    mul-long v36, v12, v31

    add-long v3, v3, v36

    long-to-int v9, v3

    shl-int/lit8 v36, v9, 0x1

    or-int v2, v36, v2

    .line 878
    aput v2, p1, v29

    ushr-int/lit8 v2, v9, 0x1f

    ushr-long v3, v3, v16

    mul-long v36, v12, v26

    add-long v3, v3, v36

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v36, v12, v22

    add-long v3, v3, v36

    add-long/2addr v7, v3

    and-long v3, v5, v17

    ushr-long v5, v7, v16

    mul-long v36, v12, v24

    add-long v5, v5, v36

    add-long/2addr v14, v5

    and-long v5, v7, v17

    ushr-long v7, v14, v16

    mul-long v36, v12, v10

    add-long v7, v7, v36

    add-long v34, v34, v7

    and-long v7, v14, v17

    ushr-long v14, v34, v16

    add-long/2addr v0, v14

    and-long v14, v34, v17

    .line 891
    aget v9, p0, v20

    move-wide/from16 v34, v0

    int-to-long v0, v9

    and-long v0, v0, v17

    const/16 p0, 0xb

    .line 892
    aget v9, p1, p0

    move-wide/from16 v36, v0

    int-to-long v0, v9

    and-long v0, v0, v17

    ushr-long v38, v34, v16

    add-long v0, v0, v38

    and-long v34, v34, v17

    const/16 v29, 0xc

    .line 893
    aget v9, p1, v29

    move-wide/from16 v38, v0

    int-to-long v0, v9

    and-long v0, v0, v17

    ushr-long v40, v38, v16

    add-long v0, v0, v40

    and-long v17, v38, v17

    mul-long v31, v31, v36

    add-long v3, v3, v31

    long-to-int v9, v3

    shl-int/lit8 v31, v9, 0x1

    or-int v2, v31, v2

    .line 897
    aput v2, p1, v20

    ushr-int/lit8 v2, v9, 0x1f

    ushr-long v3, v3, v16

    mul-long v26, v26, v36

    add-long v3, v3, v26

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v22, v22, v36

    add-long v3, v3, v22

    add-long/2addr v7, v3

    ushr-long v3, v7, v16

    mul-long v22, v36, v24

    add-long v3, v3, v22

    add-long/2addr v14, v3

    ushr-long v3, v14, v16

    mul-long v9, v36, v10

    add-long/2addr v3, v9

    add-long v3, v34, v3

    ushr-long v9, v3, v16

    mul-long v11, v36, v12

    add-long/2addr v9, v11

    add-long v9, v17, v9

    ushr-long v11, v9, v16

    add-long/2addr v0, v11

    long-to-int v5, v5

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 908
    aput v2, p1, v28

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v5, v7

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 911
    aput v2, p1, v30

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v5, v14

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 914
    aput v2, p1, v19

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 917
    aput v2, p1, v33

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v9

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 920
    aput v2, p1, p0

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v0

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 923
    aput v2, p1, v29

    ushr-int/lit8 v2, v3, 0x1f

    const/16 v3, 0xd

    .line 925
    aget v4, p1, v3

    ushr-long v0, v0, v16

    long-to-int v0, v0

    add-int/2addr v4, v0

    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    .line 926
    aput v0, p1, v3

    return-void

    :cond_20e
    move v7, v9

    goto/16 :goto_e
.end method

.method public static blacklist sub([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 1071
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1072
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1074
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1075
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1077
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1078
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1080
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1081
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1083
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1084
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1086
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1087
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1089
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1090
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[I)I
    .registers 12

    const/4 v0, 0x0

    .line 1152
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1153
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1155
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1156
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1158
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1159
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1161
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1162
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1164
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1165
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1167
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1168
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1170
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1171
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x1c

    .line 1205
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_16

    .line 1208
    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    .line 1211
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1214
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
