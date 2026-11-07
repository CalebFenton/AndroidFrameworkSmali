.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    const/16 v0, 0xc

    .line 21
    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    const/16 v0, 0x9

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_48
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
        0x2
    .end array-data
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x5

    .line 31
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_15

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 33
    :cond_16
    :goto_16
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 3

    const/4 v0, 0x6

    .line 51
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x5

    .line 52
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 54
    :cond_17
    :goto_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    const/4 v0, 0x0

    .line 292
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    .line 293
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    const/4 v9, 0x1

    .line 297
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 298
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_23
    const/4 v9, 0x2

    .line 301
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 302
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_38

    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 306
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_38
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x5

    .line 61
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 63
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    :cond_15
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    .line 91
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

    .line 99
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 100
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 101
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xc

    if-nez p0, :cond_17

    const/16 p0, 0xb

    .line 107
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 109
    :cond_17
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 111
    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    return-void

    .line 124
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x18

    .line 130
    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 134
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 27

    move-object/from16 v0, p1

    const/4 v1, 0x6

    .line 150
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    const/16 v10, 0x9

    .line 151
    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xa

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xb

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v2

    add-long/2addr v14, v6

    const/16 v16, 0x0

    move-wide/from16 v17, v4

    .line 157
    aget v4, p0, v16

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v12

    long-to-int v1, v4

    const/16 v19, 0x20

    shr-long v4, v4, v19

    const/16 v20, 0x1

    move-wide/from16 v21, v2

    .line 160
    aget v2, p0, v20

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v14

    add-long/2addr v4, v2

    long-to-int v2, v4

    .line 161
    aput v2, v0, v20

    shr-long v3, v4, v19

    add-long/2addr v12, v8

    add-long/2addr v14, v10

    const/4 v5, 0x2

    .line 167
    aget v8, p0, v5

    int-to-long v8, v8

    and-long v8, v8, v17

    add-long/2addr v8, v12

    add-long/2addr v3, v8

    and-long v8, v3, v17

    shr-long v3, v3, v19

    const/4 v10, 0x3

    .line 170
    aget v11, p0, v10

    move-wide/from16 v23, v6

    move v7, v5

    int-to-long v5, v11

    and-long v5, v5, v17

    add-long/2addr v5, v14

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 171
    aput v5, v0, v10

    shr-long v3, v3, v19

    sub-long v12, v12, v21

    sub-long v14, v14, v23

    const/4 v5, 0x4

    .line 177
    aget v6, p0, v5

    move v11, v5

    int-to-long v5, v6

    and-long v5, v5, v17

    add-long/2addr v5, v12

    add-long/2addr v3, v5

    long-to-int v5, v3

    .line 178
    aput v5, v0, v11

    shr-long v3, v3, v19

    const/4 v5, 0x5

    .line 180
    aget v6, p0, v5

    int-to-long v11, v6

    and-long v11, v11, v17

    add-long/2addr v11, v14

    add-long/2addr v3, v11

    long-to-int v6, v3

    .line 181
    aput v6, v0, v5

    shr-long v3, v3, v19

    add-long/2addr v8, v3

    int-to-long v11, v1

    and-long v11, v11, v17

    add-long/2addr v3, v11

    long-to-int v1, v3

    .line 187
    aput v1, v0, v16

    shr-long v3, v3, v19

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-eqz v1, :cond_a1

    int-to-long v1, v2

    and-long v1, v1, v17

    add-long/2addr v3, v1

    long-to-int v1, v3

    .line 192
    aput v1, v0, v20

    shr-long v1, v3, v19

    add-long/2addr v8, v1

    :cond_a1
    long-to-int v1, v8

    .line 195
    aput v1, v0, v7

    shr-long v1, v8, v19

    cmp-long v1, v1, v11

    if-eqz v1, :cond_b1

    const/4 v1, 0x6

    .line 200
    invoke-static {v1, v0, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_be

    :cond_b1
    aget v1, v0, v5

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c1

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 201
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 203
    :cond_be
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_c1
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_32

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 p0, 0x0

    .line 215
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v6, v2

    long-to-int v8, v6

    .line 216
    aput v8, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v6, p0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    .line 220
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 221
    aput v9, p1, v8

    shr-long/2addr v6, p0

    :cond_25
    const/4 v8, 0x2

    .line 224
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    .line 225
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_33

    :cond_32
    move-wide v2, v0

    :goto_33
    cmp-long p0, v2, v0

    if-eqz p0, :cond_3f

    const/4 p0, 0x6

    const/4 v0, 0x3

    .line 231
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_4d

    :cond_3f
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_50

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 232
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_50

    .line 234
    :cond_4d
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_50
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 240
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 242
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 249
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 250
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 251
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 255
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 256
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_a

    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    const/4 v0, 0x0

    .line 312
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    .line 313
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    const/4 v9, 0x1

    .line 317
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 318
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_23
    const/4 v9, 0x2

    .line 321
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 322
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_38

    const/4 v0, 0x6

    const/4 v1, 0x3

    .line 326
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_38
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 262
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_9

    .line 265
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    :cond_9
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 283
    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x5

    .line 284
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 286
    :cond_18
    :goto_18
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    return-void
.end method
