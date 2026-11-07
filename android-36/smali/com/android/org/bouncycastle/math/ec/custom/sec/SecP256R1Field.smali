.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    const/16 v0, 0x10

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x7

    .line 31
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_15

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 33
    :cond_16
    :goto_16
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    const/16 v0, 0x8

    .line 48
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x7

    .line 49
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 51
    :cond_18
    :goto_18
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    const/4 v0, 0x0

    .line 317
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    .line 318
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    .line 322
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 323
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    .line 325
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 326
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    .line 329
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 330
    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    const/4 v7, 0x4

    .line 334
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 335
    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    .line 337
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 338
    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_50
    const/4 v7, 0x6

    .line 341
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 342
    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    .line 344
    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v0, v0

    .line 345
    aput v0, p0, v2

    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x7

    .line 58
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    :cond_15
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_c

    .line 88
    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 96
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 103
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 104
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0x10

    if-nez p0, :cond_1d

    const/16 p0, 0xf

    .line 110
    aget p0, p2, p0

    ushr-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_1c

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    return-void

    .line 112
    :cond_1d
    :goto_1d
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void

    .line 124
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x20

    .line 130
    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 134
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 35

    move-object/from16 v0, p1

    const/16 v1, 0x8

    .line 150
    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0xc

    .line 151
    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    const-wide/16 v20, 0x6

    sub-long v18, v18, v20

    add-long v22, v18, v5

    add-long/2addr v5, v7

    add-long/2addr v7, v9

    sub-long/2addr v7, v1

    add-long/2addr v9, v11

    add-long/2addr v11, v13

    add-long/2addr v13, v3

    add-long v24, v3, v1

    sub-long v22, v13, v22

    const/16 v26, 0x0

    .line 167
    aget v15, p0, v26

    move-wide/from16 v27, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v9

    sub-long v1, v1, v22

    long-to-int v15, v1

    .line 168
    aput v15, v0, v26

    const/16 v15, 0x20

    shr-long/2addr v1, v15

    const/16 v26, 0x1

    move/from16 v29, v15

    .line 170
    aget v15, p0, v26

    move-wide/from16 v30, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v5

    sub-long/2addr v1, v11

    sub-long v1, v1, v24

    add-long v1, v30, v1

    long-to-int v15, v1

    .line 171
    aput v15, v0, v26

    shr-long v1, v1, v29

    const/16 v30, 0x2

    .line 173
    aget v15, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v13

    add-long v1, v31, v1

    long-to-int v15, v1

    .line 174
    aput v15, v0, v30

    shr-long v1, v1, v29

    const/16 v30, 0x3

    .line 176
    aget v15, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v9, v9, v26

    add-long/2addr v1, v9

    add-long v1, v1, v22

    sub-long v1, v1, v24

    add-long v1, v31, v1

    long-to-int v9, v1

    .line 177
    aput v9, v0, v30

    shr-long v1, v1, v29

    const/4 v9, 0x4

    .line 179
    aget v10, p0, v9

    move v15, v9

    int-to-long v9, v10

    and-long v9, v9, v16

    shl-long v30, v11, v26

    add-long v9, v9, v30

    add-long/2addr v9, v3

    sub-long/2addr v9, v5

    add-long/2addr v1, v9

    long-to-int v3, v1

    .line 180
    aput v3, v0, v15

    shr-long v1, v1, v29

    const/4 v3, 0x5

    .line 182
    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v13, v26

    add-long/2addr v4, v9

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    long-to-int v4, v1

    .line 183
    aput v4, v0, v3

    shr-long v1, v1, v29

    const/4 v3, 0x6

    .line 185
    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v24, v26

    add-long/2addr v4, v9

    add-long v4, v4, v22

    add-long/2addr v1, v4

    long-to-int v4, v1

    .line 186
    aput v4, v0, v3

    shr-long v1, v1, v29

    const/4 v3, 0x7

    .line 188
    aget v4, p0, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    shl-long v9, v27, v26

    add-long/2addr v4, v9

    add-long v4, v4, v18

    sub-long/2addr v4, v7

    sub-long/2addr v4, v11

    add-long/2addr v1, v4

    long-to-int v4, v1

    .line 189
    aput v4, v0, v3

    shr-long v1, v1, v29

    add-long v1, v1, v20

    long-to-int v1, v1

    .line 195
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_6a

    int-to-long v3, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 p0, 0x0

    .line 206
    aget v7, p1, p0

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v7, v3

    long-to-int v9, v7

    .line 207
    aput v9, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v7, p0

    cmp-long v9, v7, v1

    if-eqz v9, :cond_30

    const/4 v9, 0x1

    .line 211
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 212
    aput v10, p1, v9

    shr-long/2addr v7, p0

    const/4 v9, 0x2

    .line 214
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 215
    aput v10, p1, v9

    shr-long/2addr v7, p0

    :cond_30
    const/4 v9, 0x3

    .line 218
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 219
    aput v10, p1, v9

    shr-long/2addr v7, p0

    cmp-long v9, v7, v1

    if-eqz v9, :cond_53

    const/4 v9, 0x4

    .line 223
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 224
    aput v10, p1, v9

    shr-long/2addr v7, p0

    const/4 v9, 0x5

    .line 226
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 227
    aput v10, p1, v9

    shr-long/2addr v7, p0

    :cond_53
    const/4 v9, 0x6

    .line 230
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v10, v3

    add-long/2addr v7, v10

    long-to-int v10, v7

    .line 231
    aput v10, p1, v9

    shr-long/2addr v7, p0

    .line 233
    aget v9, p1, v0

    int-to-long v9, v9

    and-long/2addr v5, v9

    add-long/2addr v5, v3

    add-long/2addr v7, v5

    long-to-int v3, v7

    .line 234
    aput v3, p1, v0

    shr-long v3, v7, p0

    goto :goto_6b

    :cond_6a
    move-wide v3, v1

    :goto_6b
    cmp-long p0, v3, v1

    if-nez p0, :cond_7e

    .line 240
    aget p0, p1, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7d

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_7d

    goto :goto_7e

    :cond_7d
    return-void

    .line 242
    :cond_7e
    :goto_7e
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 248
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 249
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 250
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 255
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 256
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 278
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 279
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 283
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 284
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_6

    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    const/4 v0, 0x0

    .line 351
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    .line 352
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    .line 356
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 357
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    .line 359
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 360
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    .line 363
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 364
    aput v10, p0, v9

    shr-long/2addr v1, v0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    const/4 v7, 0x4

    .line 368
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 369
    aput v8, p0, v7

    shr-long/2addr v1, v0

    const/4 v7, 0x5

    .line 371
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 372
    aput v8, p0, v7

    shr-long/2addr v1, v0

    :cond_50
    const/4 v7, 0x6

    .line 375
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 376
    aput v8, p0, v7

    shr-long v0, v1, v0

    const/4 v2, 0x7

    .line 378
    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v0, v0

    .line 379
    aput v0, p0, v2

    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_9

    .line 293
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    :cond_9
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 308
    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x7

    .line 309
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 311
    :cond_19
    :goto_19
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    return-void
.end method
