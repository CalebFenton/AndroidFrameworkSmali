.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


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
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 34
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 42
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

    .line 43
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 45
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

    .line 46
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 48
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

    .line 49
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 51
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

    .line 52
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 54
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

    .line 55
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 57
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

    .line 58
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([II[III)I
    .registers 14

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 90
    aget p4, p0, p1

    int-to-long v4, p4

    and-long/2addr v4, v2

    aget p4, p2, p3

    int-to-long v6, p4

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int p4, v0

    .line 91
    aput p4, p2, p3

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 93
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 94
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 96
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 97
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 99
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 100
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    .line 102
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 103
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x5

    .line 105
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x5

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 106
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 15

    .line 114
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 115
    aput v4, p0, p1

    .line 116
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 118
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 119
    aput v6, p0, v5

    .line 120
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 122
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 123
    aput v6, p0, v5

    .line 124
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 126
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 127
    aput v6, p0, v5

    .line 128
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 130
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 131
    aput v6, p0, v5

    .line 132
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x5

    .line 134
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 p3, p3, 0x5

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    long-to-int v2, v0

    .line 135
    aput v2, p0, p1

    .line 136
    aput v2, p2, p3

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist copy([II[II)V
    .registers 6

    .line 153
    aget v0, p0, p1

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 154
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    .line 155
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    .line 156
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    .line 157
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x5

    add-int/lit8 p1, p1, 0x5

    .line 158
    aget p0, p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    const/4 v0, 0x6

    .line 177
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    const/16 v0, 0xc

    .line 187
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 8

    .line 197
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    return v0

    :cond_a
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 204
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5

    const/4 v0, 0x5

    :goto_1
    if-ltz v0, :cond_e

    .line 213
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

    .line 235
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_26

    .line 240
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x6

    if-ge v1, v2, :cond_25

    .line 245
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    .line 246
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    return-object v0

    .line 237
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 273
    aget p0, p0, v0

    :goto_5
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_8
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_16

    const/4 v2, 0x6

    if-lt v1, v2, :cond_10

    goto :goto_16

    :cond_10
    and-int/lit8 p1, p1, 0x1f

    .line 281
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_5

    :cond_16
    :goto_16
    return v0
.end method

.method public static blacklist gte([II[II)Z
    .registers 9

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    add-int v2, p1, v0

    .line 302
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 303
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    if-le v2, v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 288
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 289
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

    .line 314
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x6

    if-ge v1, v3, :cond_13

    .line 320
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
    const/4 v2, 0x6

    if-ge v1, v2, :cond_d

    .line 348
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

.method public static blacklist mul([II[II[II)V
    .registers 30

    .line 427
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 428
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 429
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 430
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 431
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    .line 432
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 435
    aget v14, p0, p1

    int-to-long v14, v14

    and-long/2addr v14, v2

    move-wide/from16 v16, v2

    mul-long v2, v14, v0

    move-wide/from16 v18, v0

    long-to-int v0, v2

    .line 437
    aput v0, p4, p5

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v20, v14, v4

    add-long v1, v1, v20

    add-int/lit8 v3, p5, 0x1

    move/from16 p2, v0

    long-to-int v0, v1

    .line 440
    aput v0, p4, v3

    ushr-long v0, v1, p2

    mul-long v2, v14, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    .line 443
    aput v3, p4, v2

    ushr-long v0, v0, p2

    mul-long v2, v14, v8

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    .line 446
    aput v3, p4, v2

    ushr-long v0, v0, p2

    mul-long v2, v14, v10

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    .line 449
    aput v3, p4, v2

    ushr-long v0, v0, p2

    mul-long/2addr v14, v12

    add-long/2addr v0, v14

    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    .line 452
    aput v3, p4, v2

    ushr-long v0, v0, p2

    add-int/lit8 v2, p5, 0x6

    long-to-int v0, v0

    .line 454
    aput v0, p4, v2

    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    :goto_75
    const/4 v2, 0x6

    if-ge v1, v2, :cond_ff

    add-int/lit8 v2, v0, 0x1

    add-int v3, p1, v1

    .line 460
    aget v3, p0, v3

    int-to-long v14, v3

    and-long v14, v14, v16

    mul-long v20, v14, v18

    .line 461
    aget v3, p4, v2

    move/from16 p3, v0

    move/from16 p5, v1

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v0, v20, v0

    long-to-int v3, v0

    .line 462
    aput v3, p4, v2

    ushr-long v0, v0, p2

    mul-long v20, v14, v4

    add-int/lit8 v3, p3, 0x2

    move-wide/from16 v22, v0

    .line 464
    aget v0, p4, v3

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long v20, v20, v0

    add-long v0, v22, v20

    move/from16 v20, v2

    long-to-int v2, v0

    .line 465
    aput v2, p4, v3

    ushr-long v0, v0, p2

    mul-long v2, v14, v6

    add-int/lit8 v21, p3, 0x3

    move-wide/from16 v22, v0

    .line 467
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v22, v2

    long-to-int v2, v0

    .line 468
    aput v2, p4, v21

    ushr-long v0, v0, p2

    mul-long v2, v14, v8

    add-int/lit8 v21, p3, 0x4

    move-wide/from16 v22, v0

    .line 470
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v22, v2

    long-to-int v2, v0

    .line 471
    aput v2, p4, v21

    ushr-long v0, v0, p2

    mul-long v2, v14, v10

    add-int/lit8 v21, p3, 0x5

    move-wide/from16 v22, v0

    .line 473
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v22, v2

    long-to-int v2, v0

    .line 474
    aput v2, p4, v21

    ushr-long v0, v0, p2

    mul-long/2addr v14, v12

    add-int/lit8 v2, p3, 0x6

    .line 476
    aget v3, p4, v2

    move-wide/from16 v21, v0

    int-to-long v0, v3

    and-long v0, v0, v16

    add-long/2addr v14, v0

    add-long v0, v21, v14

    long-to-int v3, v0

    .line 477
    aput v3, p4, v2

    ushr-long v0, v0, p2

    add-int/lit8 v2, p3, 0x7

    long-to-int v0, v0

    .line 479
    aput v0, p4, v2

    add-int/lit8 v1, p5, 0x1

    move/from16 v0, v20

    goto/16 :goto_75

    :cond_ff
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 29

    const/4 v0, 0x0

    .line 370
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 371
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 372
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 373
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 374
    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    .line 375
    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 378
    aget v15, p0, v16

    move/from16 p1, v4

    move/from16 v21, v5

    int-to-long v4, v15

    and-long v4, v4, v19

    move v15, v8

    move-wide/from16 v22, v9

    mul-long v8, v4, v17

    long-to-int v10, v8

    .line 380
    aput v10, p2, v16

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    mul-long v24, v4, v6

    add-long v8, v8, v24

    move/from16 v16, v10

    long-to-int v10, v8

    .line 383
    aput v10, p2, v21

    ushr-long v8, v8, v16

    mul-long v24, v4, v22

    add-long v8, v8, v24

    long-to-int v10, v8

    .line 386
    aput v10, p2, v15

    ushr-long v8, v8, v16

    mul-long v24, v4, v12

    add-long v8, v8, v24

    long-to-int v10, v8

    .line 389
    aput v10, p2, v11

    ushr-long v8, v8, v16

    mul-long v10, v4, v0

    add-long/2addr v8, v10

    long-to-int v10, v8

    .line 392
    aput v10, p2, v14

    ushr-long v8, v8, v16

    mul-long/2addr v4, v2

    add-long/2addr v8, v4

    long-to-int v4, v8

    .line 395
    aput v4, p2, p1

    ushr-long v4, v8, v16

    long-to-int v4, v4

    const/4 v5, 0x6

    .line 397
    aput v4, p2, v5

    :goto_6f
    move/from16 v4, v21

    if-ge v4, v5, :cond_df

    .line 402
    aget v8, p0, v4

    int-to-long v8, v8

    and-long v8, v8, v19

    mul-long v10, v8, v17

    .line 403
    aget v14, p2, v4

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    long-to-int v14, v10

    .line 404
    aput v14, p2, v4

    ushr-long v10, v10, v16

    mul-long v14, v8, v6

    add-int/lit8 v21, v4, 0x1

    .line 406
    aget v5, p2, v21

    move-wide/from16 v24, v0

    int-to-long v0, v5

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v10, v14

    long-to-int v0, v10

    .line 407
    aput v0, p2, v21

    ushr-long v0, v10, v16

    mul-long v10, v8, v22

    add-int/lit8 v5, v4, 0x2

    .line 409
    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 410
    aput v10, p2, v5

    ushr-long v0, v0, v16

    mul-long v10, v8, v12

    add-int/lit8 v5, v4, 0x3

    .line 412
    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 413
    aput v10, p2, v5

    ushr-long v0, v0, v16

    mul-long v10, v8, v24

    add-int/lit8 v5, v4, 0x4

    .line 415
    aget v14, p2, v5

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    long-to-int v10, v0

    .line 416
    aput v10, p2, v5

    ushr-long v0, v0, v16

    mul-long/2addr v8, v2

    add-int/lit8 v5, v4, 0x5

    .line 418
    aget v10, p2, v5

    int-to-long v10, v10

    and-long v10, v10, v19

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    long-to-int v8, v0

    .line 419
    aput v8, p2, v5

    ushr-long v0, v0, v16

    add-int/lit8 v4, v4, 0x6

    long-to-int v0, v0

    .line 421
    aput v0, p2, v4

    move-wide/from16 v0, v24

    const/4 v5, 0x6

    goto :goto_6f

    :cond_df
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 19

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 567
    aget p0, p1, p2

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    .line 568
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 569
    aput p0, p5, p6

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    add-int/lit8 v8, p2, 0x1

    .line 571
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v4

    add-int/lit8 v4, p4, 0x1

    .line 572
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v10, v4

    add-long/2addr v6, v10

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 573
    aput v5, p5, v4

    ushr-long v4, v6, p0

    add-int/lit8 v6, p2, 0x2

    .line 575
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x2

    .line 576
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x2

    long-to-int v9, v4

    .line 577
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v8, p2, 0x3

    .line 579
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x3

    .line 580
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 581
    aput v7, p5, v6

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    .line 583
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x4

    .line 584
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x4

    long-to-int v9, v4

    .line 585
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x5

    .line 587
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x5

    .line 588
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x5

    long-to-int v1, v4

    .line 589
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

    .line 628
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 629
    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x1

    .line 632
    aget v5, p3, v4

    int-to-long v8, v5

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v6, v0

    long-to-int v0, v6

    .line 633
    aput v0, p3, v4

    ushr-long v0, v6, p0

    add-int/lit8 v4, p4, 0x2

    .line 635
    aget v5, p3, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr p1, v5

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 636
    aput p1, p3, v4

    ushr-long p1, v0, p0

    add-int/lit8 v0, p4, 0x3

    .line 638
    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    .line 639
    aput v1, p3, v0

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_48

    const/4 p0, 0x0

    return p0

    :cond_48
    const/4 p0, 0x6

    const/4 p1, 0x4

    .line 641
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

    .line 650
    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 651
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    .line 653
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr p0, v6

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 654
    aput p0, p2, v5

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 656
    aget v1, p2, v0

    int-to-long v5, v1

    and-long v1, v5, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 657
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_36

    const/4 p0, 0x0

    return p0

    :cond_36
    const/4 p0, 0x6

    const/4 p1, 0x3

    .line 659
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 31

    const/4 v0, 0x0

    .line 485
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 486
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 487
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 488
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 489
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 490
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v3

    move-wide v3, v15

    :goto_28
    const/4 v15, 0x6

    if-ge v0, v15, :cond_c2

    .line 495
    aget v15, p0, v0

    move-wide/from16 v19, v1

    move v2, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    mul-long v15, v0, v19

    move-wide/from16 v21, v0

    .line 496
    aget v0, p2, v2

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v0, v15

    long-to-int v15, v0

    .line 497
    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    mul-long v23, v21, v5

    add-int/lit8 v16, v2, 0x1

    move/from16 p1, v15

    .line 499
    aget v15, p2, v16

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v25, v23

    long-to-int v15, v0

    .line 500
    aput v15, p2, v16

    ushr-long v0, v0, p1

    mul-long v23, v21, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v25, v0

    .line 502
    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v25, v23

    move/from16 v23, v2

    long-to-int v2, v0

    .line 503
    aput v2, p2, v15

    ushr-long v0, v0, p1

    mul-long v24, v21, v9

    add-int/lit8 v2, v23, 0x3

    .line 505
    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v0, v26, v24

    long-to-int v15, v0

    .line 506
    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v24, v21, v11

    add-int/lit8 v2, v23, 0x4

    .line 508
    aget v15, p2, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v0, v26, v24

    long-to-int v15, v0

    .line 509
    aput v15, p2, v2

    ushr-long v0, v0, p1

    mul-long v21, v21, v13

    add-int/lit8 v2, v23, 0x5

    .line 511
    aget v15, p2, v2

    move-wide/from16 v24, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v21, v21, v0

    add-long v0, v24, v21

    long-to-int v15, v0

    .line 512
    aput v15, p2, v2

    ushr-long v0, v0, p1

    add-int/lit8 v2, v23, 0x6

    .line 515
    aget v15, p2, v2

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    add-long v0, v21, v0

    add-long/2addr v3, v0

    long-to-int v0, v3

    .line 516
    aput v0, p2, v2

    ushr-long v3, v3, p1

    move/from16 v0, v16

    move-wide/from16 v1, v19

    goto/16 :goto_28

    :cond_c2
    long-to-int v0, v3

    return v0
.end method

.method public static blacklist square([II[II)V
    .registers 41

    .line 810
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x5

    :goto_d
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    .line 818
    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long/2addr v9, v9

    add-int/lit8 v7, v6, -0x1

    add-int v7, p3, v7

    shl-int/lit8 v4, v4, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v4, v12

    .line 820
    aput v4, p2, v7

    add-int/lit8 v6, v6, -0x2

    add-int v4, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    .line 821
    aput v12, p2, v4

    long-to-int v4, v9

    if-gtz v8, :cond_1c5

    mul-long v8, v0, v0

    shl-int/lit8 v4, v4, 0x1f

    int-to-long v12, v4

    and-long/2addr v12, v2

    ushr-long v10, v8, v11

    or-long/2addr v10, v12

    long-to-int v4, v8

    .line 829
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v8, p1, 0x1

    .line 834
    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v12, p3, 0x2

    .line 835
    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v8, v0

    add-long/2addr v10, v15

    long-to-int v15, v10

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v6, v17, v6

    .line 840
    aput v6, p2, v16

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v10, v4

    add-long/2addr v13, v10

    add-int/lit8 v10, p1, 0x2

    .line 845
    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v15, p3, 0x3

    move-wide/from16 v16, v2

    .line 846
    aget v2, p2, v15

    int-to-long v2, v2

    and-long v2, v2, v16

    add-int/lit8 v18, p3, 0x4

    move/from16 v19, v4

    .line 847
    aget v4, p2, v18

    move/from16 v21, v6

    const/16 v20, 0x5

    int-to-long v5, v4

    and-long v4, v5, v16

    mul-long v22, v10, v0

    add-long v13, v13, v22

    long-to-int v6, v13

    shl-int/lit8 v22, v6, 0x1

    or-int v21, v22, v21

    .line 851
    aput v21, p2, v12

    ushr-int/lit8 v6, v6, 0x1f

    ushr-long v12, v13, v19

    mul-long v21, v10, v8

    add-long v12, v12, v21

    add-long/2addr v2, v12

    ushr-long v12, v2, v19

    add-long/2addr v4, v12

    and-long v2, v2, v16

    add-int/lit8 v12, p1, 0x3

    .line 858
    aget v12, p0, v12

    int-to-long v12, v12

    and-long v12, v12, v16

    add-int/lit8 v14, p3, 0x5

    move/from16 v21, v7

    .line 859
    aget v7, p2, v14

    move-wide/from16 v22, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    ushr-long v24, v4, v19

    add-long v0, v0, v24

    and-long v4, v4, v16

    add-int/lit8 v7, p3, 0x6

    move-wide/from16 v24, v0

    .line 860
    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v26, v24, v19

    add-long v0, v0, v26

    and-long v24, v24, v16

    mul-long v26, v12, v22

    add-long v2, v2, v26

    move-wide/from16 v26, v0

    long-to-int v0, v2

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v6

    .line 864
    aput v1, p2, v15

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v1, v2, v19

    mul-long v28, v12, v8

    add-long v1, v1, v28

    add-long/2addr v4, v1

    ushr-long v1, v4, v19

    mul-long v28, v12, v10

    add-long v1, v1, v28

    add-long v24, v24, v1

    and-long v1, v4, v16

    ushr-long v3, v24, v19

    add-long v3, v26, v3

    and-long v5, v24, v16

    add-int/lit8 v15, p1, 0x4

    .line 873
    aget v15, p0, v15

    move/from16 v24, v0

    move-wide/from16 v25, v1

    int-to-long v0, v15

    and-long v0, v0, v16

    add-int/lit8 v2, p3, 0x7

    .line 874
    aget v15, p2, v2

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    ushr-long v29, v3, v19

    add-long v0, v0, v29

    and-long v3, v3, v16

    add-int/lit8 v15, p3, 0x8

    move-wide/from16 v29, v0

    .line 875
    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v31, v29, v19

    add-long v0, v0, v31

    and-long v29, v29, v16

    mul-long v31, v27, v22

    move-wide/from16 v33, v0

    add-long v0, v25, v31

    move/from16 v25, v2

    long-to-int v2, v0

    shl-int/lit8 v26, v2, 0x1

    or-int v24, v26, v24

    .line 879
    aput v24, p2, v18

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v31, v27, v8

    add-long v0, v0, v31

    add-long/2addr v5, v0

    ushr-long v0, v5, v19

    mul-long v31, v27, v10

    add-long v0, v0, v31

    add-long/2addr v3, v0

    and-long v0, v5, v16

    ushr-long v5, v3, v19

    mul-long v31, v27, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    and-long v3, v3, v16

    ushr-long v5, v29, v19

    add-long v5, v33, v5

    and-long v29, v29, v16

    add-int/lit8 v18, p1, 0x5

    move-wide/from16 v31, v0

    .line 890
    aget v0, p0, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-int/lit8 v18, p3, 0x9

    move-wide/from16 p0, v0

    .line 891
    aget v0, p2, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v33, v5, v19

    add-long v0, v0, v33

    and-long v5, v5, v16

    add-int/lit8 v20, p3, 0xa

    move-wide/from16 v33, v0

    .line 892
    aget v0, p2, v20

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v35, v33, v19

    add-long v0, v0, v35

    and-long v16, v33, v16

    mul-long v22, v22, p0

    move-wide/from16 v33, v0

    add-long v0, v31, v22

    move/from16 v24, v2

    long-to-int v2, v0

    shl-int/lit8 v22, v2, 0x1

    or-int v22, v22, v24

    .line 896
    aput v22, p2, v14

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v8, v8, p0

    add-long/2addr v0, v8

    add-long/2addr v3, v0

    ushr-long v0, v3, v19

    mul-long v8, p0, v10

    add-long/2addr v0, v8

    add-long v0, v29, v0

    ushr-long v8, v0, v19

    mul-long v10, p0, v12

    add-long/2addr v8, v10

    add-long/2addr v5, v8

    ushr-long v8, v5, v19

    mul-long v10, p0, v27

    add-long/2addr v8, v10

    add-long v8, v16, v8

    ushr-long v10, v8, v19

    add-long v10, v33, v10

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 906
    aput v2, p2, v7

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v0, v0

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    .line 909
    aput v1, p2, v25

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 912
    aput v0, p2, v15

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v8

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 915
    aput v0, p2, v18

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 918
    aput v0, p2, v20

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xb

    .line 920
    aget v2, p2, v1

    ushr-long v3, v10, v19

    long-to-int v3, v3

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 921
    aput v0, p2, v1

    return-void

    :cond_1c5
    move v7, v8

    goto/16 :goto_d
.end method

.method public static blacklist square([I[I)V
    .registers 39

    const/4 v0, 0x0

    .line 694
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0xc

    move v8, v0

    const/4 v7, 0x5

    :goto_e
    add-int/lit8 v9, v7, -0x1

    .line 702
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

    .line 704
    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    .line 705
    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_1a2

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    .line 713
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 718
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 719
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 724
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 729
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    move/from16 v16, v0

    .line 730
    aget v0, p1, v15

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    const/16 v19, 0x4

    .line 731
    aget v0, p1, v19

    move/from16 v21, v6

    const/16 v20, 0x5

    int-to-long v5, v0

    and-long v5, v5, v17

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v0, v13

    shl-int/lit8 v22, v0, 0x1

    or-int v21, v22, v21

    .line 735
    aput v21, p1, v10

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v13, v13, v16

    mul-long v21, v11, v8

    add-long v13, v13, v21

    add-long/2addr v3, v13

    ushr-long v13, v3, v16

    add-long/2addr v5, v13

    and-long v3, v3, v17

    .line 742
    aget v10, p0, v15

    int-to-long v13, v10

    and-long v13, v13, v17

    .line 743
    aget v10, p1, v20

    move/from16 v21, v7

    move-wide/from16 v22, v8

    int-to-long v7, v10

    and-long v7, v7, v17

    ushr-long v9, v5, v16

    add-long/2addr v7, v9

    and-long v5, v5, v17

    const/4 v9, 0x6

    .line 744
    aget v10, p1, v9

    move/from16 v24, v9

    int-to-long v9, v10

    and-long v9, v9, v17

    ushr-long v25, v7, v16

    add-long v9, v9, v25

    and-long v7, v7, v17

    mul-long v25, v13, v1

    add-long v3, v3, v25

    move/from16 v25, v15

    long-to-int v15, v3

    shl-int/lit8 v26, v15, 0x1

    or-int v0, v26, v0

    .line 748
    aput v0, p1, v25

    ushr-int/lit8 v0, v15, 0x1f

    ushr-long v3, v3, v16

    mul-long v25, v13, v22

    add-long v3, v3, v25

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v25, v13, v11

    add-long v3, v3, v25

    add-long/2addr v7, v3

    and-long v3, v5, v17

    ushr-long v5, v7, v16

    add-long/2addr v9, v5

    and-long v5, v7, v17

    .line 757
    aget v7, p0, v19

    int-to-long v7, v7

    and-long v7, v7, v17

    const/16 v25, 0x7

    .line 758
    aget v15, p1, v25

    move-wide/from16 v26, v1

    move v2, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    ushr-long v28, v9, v16

    add-long v0, v0, v28

    and-long v9, v9, v17

    const/16 v28, 0x8

    .line 759
    aget v15, p1, v28

    move-wide/from16 v29, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    ushr-long v31, v29, v16

    add-long v0, v0, v31

    and-long v29, v29, v17

    mul-long v31, v7, v26

    add-long v3, v3, v31

    long-to-int v15, v3

    shl-int/lit8 v31, v15, 0x1

    or-int v2, v31, v2

    .line 763
    aput v2, p1, v19

    ushr-int/lit8 v2, v15, 0x1f

    ushr-long v3, v3, v16

    mul-long v31, v7, v22

    add-long v3, v3, v31

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v31, v7, v11

    add-long v3, v3, v31

    add-long/2addr v9, v3

    and-long v3, v5, v17

    ushr-long v5, v9, v16

    mul-long v31, v7, v13

    add-long v5, v5, v31

    add-long v29, v29, v5

    and-long v5, v9, v17

    ushr-long v9, v29, v16

    add-long/2addr v0, v9

    and-long v9, v29, v17

    .line 774
    aget v15, p0, v20

    move-wide/from16 v29, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    const/16 p0, 0x9

    .line 775
    aget v15, p1, p0

    move-wide/from16 v31, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    ushr-long v33, v29, v16

    add-long v0, v0, v33

    and-long v29, v29, v17

    const/16 v19, 0xa

    .line 776
    aget v15, p1, v19

    move-wide/from16 v33, v0

    int-to-long v0, v15

    and-long v0, v0, v17

    ushr-long v35, v33, v16

    add-long v0, v0, v35

    and-long v17, v33, v17

    mul-long v26, v26, v31

    add-long v3, v3, v26

    long-to-int v15, v3

    shl-int/lit8 v26, v15, 0x1

    or-int v2, v26, v2

    .line 780
    aput v2, p1, v20

    ushr-int/lit8 v2, v15, 0x1f

    ushr-long v3, v3, v16

    mul-long v22, v22, v31

    add-long v3, v3, v22

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v11, v11, v31

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    ushr-long v3, v9, v16

    mul-long v11, v31, v13

    add-long/2addr v3, v11

    add-long v3, v29, v3

    ushr-long v11, v3, v16

    mul-long v7, v7, v31

    add-long/2addr v11, v7

    add-long v7, v17, v11

    ushr-long v11, v7, v16

    add-long/2addr v0, v11

    long-to-int v5, v5

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 790
    aput v2, p1, v24

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v5, v9

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 793
    aput v2, p1, v25

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 796
    aput v2, p1, v28

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v7

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 799
    aput v2, p1, p0

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v0

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 802
    aput v2, p1, v19

    ushr-int/lit8 v2, v3, 0x1f

    const/16 v3, 0xb

    .line 804
    aget v4, p1, v3

    ushr-long v0, v0, v16

    long-to-int v0, v0

    add-int/2addr v4, v0

    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    .line 805
    aput v0, p1, v3

    return-void

    :cond_1a2
    move v7, v9

    goto/16 :goto_e
.end method

.method public static blacklist sub([II[II[II)I
    .registers 15

    .line 951
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 952
    aput v4, p4, p5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 954
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 955
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 957
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 958
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 960
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 961
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 963
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 964
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x5

    .line 966
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x5

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x5

    long-to-int p0, v0

    .line 967
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist sub([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 927
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 928
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 930
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 931
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 933
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 934
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 936
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 937
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 939
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 940
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 942
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 943
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[I)I
    .registers 12

    const/4 v0, 0x0

    .line 999
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1000
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1002
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1003
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1005
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1006
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1008
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1009
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1011
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1012
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1014
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1015
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x18

    .line 1046
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_16

    .line 1049
    aget v2, p0, v1

    if-eqz v2, :cond_13

    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    .line 1052
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1055
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
