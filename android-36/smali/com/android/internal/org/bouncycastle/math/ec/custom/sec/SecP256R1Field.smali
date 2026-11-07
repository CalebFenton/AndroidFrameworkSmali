.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

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

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 31
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 33
    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 35
    :cond_17
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 39
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 40
    .local v1, "c":I
    if-nez v1, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 42
    :cond_1b
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 44
    :cond_20
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 48
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 49
    .local v0, "c":I
    if-nez v0, :cond_16

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 51
    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 53
    :cond_19
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 317
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 318
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 319
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 320
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 322
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 323
    long-to-int v10, v1

    aput v10, p0, v9

    .line 324
    shr-long/2addr v1, v0

    .line 325
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 326
    long-to-int v10, v1

    aput v10, p0, v9

    .line 327
    shr-long/2addr v1, v0

    .line 329
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 330
    long-to-int v10, v1

    aput v10, p0, v9

    .line 331
    shr-long/2addr v1, v0

    .line 332
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 334
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 335
    long-to-int v8, v1

    aput v8, p0, v7

    .line 336
    shr-long/2addr v1, v0

    .line 337
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 338
    long-to-int v8, v1

    aput v8, p0, v7

    .line 339
    shr-long/2addr v1, v0

    .line 341
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 342
    long-to-int v8, v1

    aput v8, p0, v7

    .line 343
    shr-long v0, v1, v0

    .line 344
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 345
    long-to-int v3, v0

    aput v3, p0, v2

    .line 347
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 57
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 62
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 67
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 73
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 74
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 76
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 81
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4
    .param p0, "x"    # [I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_c

    .line 88
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    .end local v1    # "i":I
    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 91
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 96
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 97
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 99
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 103
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 104
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 105
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 110
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 112
    :cond_1b
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 114
    :cond_20
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_13

    .line 124
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 126
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 130
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 133
    .local v0, "bb":[B
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 143
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 51
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 150
    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx08":J
    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx09":J
    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx10":J
    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 151
    .local v9, "xx11":J
    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx12":J
    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx13":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    .local v3, "xx14":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v1

    .end local v1    # "xx08":J
    .local v18, "xx08":J
    int-to-long v1, v15

    and-long v1, v1, v16

    .line 153
    .local v1, "xx15":J
    const-wide/16 v20, 0x6

    .line 155
    .local v20, "n":J
    const-wide/16 v22, 0x6

    sub-long v18, v18, v22

    .line 157
    add-long v24, v18, v5

    .line 158
    .local v24, "t0":J
    add-long v26, v5, v7

    .line 159
    .local v26, "t1":J
    add-long v28, v7, v9

    sub-long v28, v28, v1

    .line 160
    .local v28, "t2":J
    add-long v30, v9, v11

    .line 161
    .local v30, "t3":J
    add-long v32, v11, v13

    .line 162
    .local v32, "t4":J
    add-long v34, v13, v3

    .line 163
    .local v34, "t5":J
    add-long v36, v3, v1

    .line 164
    .local v36, "t6":J
    sub-long v38, v34, v24

    .line 166
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 167
    .local v40, "cc":J
    const/16 v42, 0x0

    aget v15, p0, v42

    move-wide/from16 v43, v1

    .end local v1    # "xx15":J
    .local v43, "xx15":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v30

    sub-long v1, v1, v38

    add-long v1, v40, v1

    .line 168
    .end local v40    # "cc":J
    .local v1, "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 169
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 170
    const/16 v40, 0x1

    move/from16 v41, v15

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .local v45, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v26

    sub-long v1, v1, v32

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 171
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 172
    shr-long v1, v1, v41

    .line 173
    const/16 v42, 0x2

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v28

    sub-long v1, v1, v34

    add-long v1, v45, v1

    .line 174
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 175
    shr-long v1, v1, v41

    .line 176
    const/16 v42, 0x3

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v30, v40

    add-long v1, v1, v47

    add-long v1, v1, v38

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 177
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 178
    shr-long v1, v1, v41

    .line 179
    const/16 v42, 0x4

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v32, v40

    add-long v1, v1, v47

    add-long/2addr v1, v3

    sub-long v1, v1, v26

    add-long v1, v45, v1

    .line 180
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 181
    shr-long v1, v1, v41

    .line 182
    const/16 v42, 0x5

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v34, v40

    add-long v1, v1, v47

    sub-long v1, v1, v28

    add-long v1, v45, v1

    .line 183
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 184
    shr-long v1, v1, v41

    .line 185
    const/16 v42, 0x6

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v36, v40

    add-long v1, v1, v47

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 186
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 187
    shr-long v1, v1, v41

    .line 188
    const/16 v42, 0x7

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v15, v43, v40

    add-long/2addr v1, v15

    add-long v1, v1, v18

    sub-long v1, v1, v28

    sub-long v1, v1, v32

    add-long v1, v45, v1

    .line 189
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 190
    shr-long v1, v1, v41

    .line 191
    add-long v1, v1, v22

    .line 195
    long-to-int v15, v1

    invoke-static {v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 196
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 15
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 200
    const-wide/16 v0, 0x0

    .line 202
    .local v0, "cc":J
    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_6b

    .line 204
    int-to-long v5, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 206
    .local v5, "xx08":J
    const/4 v9, 0x0

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v10, v5

    add-long/2addr v0, v10

    .line 207
    long-to-int v10, v0

    aput v10, p1, v9

    .line 208
    const/16 v9, 0x20

    shr-long/2addr v0, v9

    .line 209
    cmp-long v10, v0, v3

    if-eqz v10, :cond_33

    .line 211
    const/4 v10, 0x1

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 212
    long-to-int v11, v0

    aput v11, p1, v10

    .line 213
    shr-long/2addr v0, v9

    .line 214
    const/4 v10, 0x2

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 215
    long-to-int v11, v0

    aput v11, p1, v10

    .line 216
    shr-long/2addr v0, v9

    .line 218
    :cond_33
    const/4 v10, 0x3

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 219
    long-to-int v11, v0

    aput v11, p1, v10

    .line 220
    shr-long/2addr v0, v9

    .line 221
    cmp-long v10, v0, v3

    if-eqz v10, :cond_56

    .line 223
    const/4 v10, 0x4

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 224
    long-to-int v11, v0

    aput v11, p1, v10

    .line 225
    shr-long/2addr v0, v9

    .line 226
    const/4 v10, 0x5

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 227
    long-to-int v11, v0

    aput v11, p1, v10

    .line 228
    shr-long/2addr v0, v9

    .line 230
    :cond_56
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 231
    long-to-int v11, v0

    aput v11, p1, v10

    .line 232
    shr-long/2addr v0, v9

    .line 233
    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v7, v10

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 234
    long-to-int v7, v0

    aput v7, p1, v2

    .line 235
    shr-long/2addr v0, v9

    .line 240
    .end local v5    # "xx08":J
    :cond_6b
    cmp-long v3, v0, v3

    if-nez v3, :cond_7c

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7f

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 242
    :cond_7c
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 244
    :cond_7f
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 248
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 249
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 250
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 251
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "tt"    # [I

    .line 255
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 256
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 257
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 263
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 264
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 265
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 267
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 269
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 270
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_a

    .line 272
    :cond_15
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 278
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 279
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 281
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 283
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 284
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_6

    .line 286
    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 351
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 352
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 353
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 354
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 356
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 357
    long-to-int v10, v1

    aput v10, p0, v9

    .line 358
    shr-long/2addr v1, v0

    .line 359
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 360
    long-to-int v10, v1

    aput v10, p0, v9

    .line 361
    shr-long/2addr v1, v0

    .line 363
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 364
    long-to-int v10, v1

    aput v10, p0, v9

    .line 365
    shr-long/2addr v1, v0

    .line 366
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 368
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 369
    long-to-int v8, v1

    aput v8, p0, v7

    .line 370
    shr-long/2addr v1, v0

    .line 371
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 372
    long-to-int v8, v1

    aput v8, p0, v7

    .line 373
    shr-long/2addr v1, v0

    .line 375
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 376
    long-to-int v8, v1

    aput v8, p0, v7

    .line 377
    shr-long v0, v1, v0

    .line 378
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 379
    long-to-int v3, v0

    aput v3, p0, v2

    .line 381
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 291
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 293
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 295
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 6
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 299
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 300
    .local v1, "c":I
    if-eqz v1, :cond_d

    .line 302
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 304
    :cond_d
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 308
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 309
    .local v0, "c":I
    if-nez v0, :cond_17

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 311
    :cond_17
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 313
    :cond_1a
    return-void
.end method
