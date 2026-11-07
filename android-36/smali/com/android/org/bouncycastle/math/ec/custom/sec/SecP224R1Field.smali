.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    const/16 v0, 0xe

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    const/16 v0, 0xb

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4e
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x6

    .line 32
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_15

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 34
    :cond_16
    :goto_16
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    const/4 v0, 0x7

    .line 52
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x6

    .line 53
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 55
    :cond_17
    :goto_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    const/4 v0, 0x0

    .line 299
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    .line 300
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    .line 304
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 305
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    .line 307
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 308
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    .line 311
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 312
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_42

    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 316
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_42
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 61
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x6

    .line 62
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 64
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    :cond_15
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_b

    .line 92
    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 100
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 102
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 107
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xe

    if-nez p0, :cond_17

    const/16 p0, 0xd

    .line 108
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 110
    :cond_17
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 112
    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 119
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    return-void

    .line 125
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x1c

    .line 131
    new-array v0, v0, [B

    .line 134
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 135
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 137
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 144
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 146
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 36

    move-object/from16 v0, p1

    const/16 v1, 0xa

    .line 151
    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0xb

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0xc

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0xd

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x7

    .line 155
    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    add-long/2addr v12, v5

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const/16 v16, 0x8

    move-wide/from16 v17, v3

    .line 156
    aget v3, p0, v16

    int-to-long v3, v3

    and-long v3, v3, v17

    add-long/2addr v3, v7

    const/16 v16, 0x9

    move-wide/from16 v19, v14

    .line 157
    aget v14, p0, v16

    int-to-long v14, v14

    and-long v14, v14, v17

    add-long/2addr v14, v9

    const/16 v16, 0x0

    .line 160
    aget v11, p0, v16

    move-wide/from16 v21, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    sub-long/2addr v1, v12

    and-long v23, v1, v17

    const/16 v11, 0x20

    shr-long/2addr v1, v11

    const/16 v25, 0x1

    move/from16 v26, v11

    .line 163
    aget v11, p0, v25

    move-wide/from16 v27, v1

    int-to-long v1, v11

    and-long v1, v1, v17

    sub-long/2addr v1, v3

    add-long v1, v27, v1

    long-to-int v11, v1

    .line 164
    aput v11, v0, v25

    shr-long v1, v1, v26

    const/16 v27, 0x2

    move-wide/from16 v28, v1

    .line 166
    aget v1, p0, v27

    int-to-long v1, v1

    and-long v1, v1, v17

    sub-long/2addr v1, v14

    add-long v1, v28, v1

    move-wide/from16 v28, v3

    long-to-int v3, v1

    .line 167
    aput v3, v0, v27

    shr-long v1, v1, v26

    const/16 v30, 0x3

    .line 169
    aget v4, p0, v30

    move-wide/from16 v31, v1

    int-to-long v1, v4

    and-long v1, v1, v17

    add-long/2addr v1, v12

    sub-long v1, v1, v21

    add-long v1, v31, v1

    and-long v12, v1, v17

    shr-long v1, v1, v26

    const/16 v31, 0x4

    .line 172
    aget v4, p0, v31

    move-wide/from16 v32, v1

    int-to-long v1, v4

    and-long v1, v1, v17

    add-long v1, v1, v28

    sub-long/2addr v1, v5

    add-long v1, v32, v1

    long-to-int v4, v1

    .line 173
    aput v4, v0, v31

    shr-long v1, v1, v26

    const/4 v4, 0x5

    .line 175
    aget v5, p0, v4

    int-to-long v5, v5

    and-long v5, v5, v17

    add-long/2addr v5, v14

    sub-long/2addr v5, v7

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 176
    aput v5, v0, v4

    shr-long v1, v1, v26

    const/4 v4, 0x6

    .line 178
    aget v5, p0, v4

    int-to-long v5, v5

    and-long v5, v5, v17

    add-long v5, v5, v21

    sub-long/2addr v5, v9

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 179
    aput v5, v0, v4

    shr-long v1, v1, v26

    add-long v1, v1, v19

    add-long/2addr v12, v1

    sub-long v1, v23, v1

    long-to-int v5, v1

    .line 188
    aput v5, v0, v16

    shr-long v1, v1, v26

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_d6

    int-to-long v7, v11

    and-long v7, v7, v17

    add-long/2addr v1, v7

    long-to-int v7, v1

    .line 193
    aput v7, v0, v25

    shr-long v1, v1, v26

    int-to-long v7, v3

    and-long v7, v7, v17

    add-long/2addr v1, v7

    long-to-int v3, v1

    .line 196
    aput v3, v0, v27

    shr-long v1, v1, v26

    add-long/2addr v12, v1

    :cond_d6
    long-to-int v1, v12

    .line 199
    aput v1, v0, v30

    shr-long v1, v12, v26

    cmp-long v1, v1, v5

    if-eqz v1, :cond_e8

    move/from16 v2, v31

    const/4 v1, 0x7

    .line 204
    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_f5

    :cond_e8
    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f8

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 205
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 207
    :cond_f5
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_f8
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3c

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 p0, 0x0

    .line 219
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v6, v2

    long-to-int v8, v6

    .line 220
    aput v8, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v6, p0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_2f

    const/4 v8, 0x1

    .line 224
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 225
    aput v9, p1, v8

    shr-long/2addr v6, p0

    const/4 v8, 0x2

    .line 227
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 228
    aput v9, p1, v8

    shr-long/2addr v6, p0

    :cond_2f
    const/4 v8, 0x3

    .line 231
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    .line 232
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_3d

    :cond_3c
    move-wide v2, v0

    :goto_3d
    cmp-long p0, v2, v0

    if-eqz p0, :cond_49

    const/4 p0, 0x7

    const/4 v0, 0x4

    .line 238
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_57

    :cond_49
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5a

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 239
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 241
    :cond_57
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    :cond_5a
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 247
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 248
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 249
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 256
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 257
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 258
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 262
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 263
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_a

    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    const/4 v0, 0x0

    .line 322
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    .line 323
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    const/4 v9, 0x1

    .line 327
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 328
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x2

    .line 330
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 331
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2d
    const/4 v9, 0x3

    .line 334
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 335
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_42

    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 339
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_42
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 269
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_9

    .line 272
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    :cond_9
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 290
    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x6

    .line 291
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 293
    :cond_18
    :goto_18
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    return-void
.end method
