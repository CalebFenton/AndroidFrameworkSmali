.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P11:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt23:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 22
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    :array_1c
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_6c
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 33
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 34
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 36
    :cond_17
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 38
    :cond_1a
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 42
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 43
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0x17

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 45
    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_28

    .line 47
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 50
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 54
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 55
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 57
    :cond_17
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 59
    :cond_1a
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 316
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 317
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 318
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 319
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 320
    long-to-int v8, v1

    aput v8, p0, v7

    .line 321
    shr-long/2addr v1, v0

    .line 322
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 324
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 325
    long-to-int v10, v1

    aput v10, p0, v9

    .line 326
    shr-long/2addr v1, v0

    .line 328
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 329
    long-to-int v10, v1

    aput v10, p0, v9

    .line 330
    shr-long/2addr v1, v0

    .line 331
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 332
    long-to-int v3, v1

    aput v3, p0, v9

    .line 333
    shr-long v0, v1, v0

    .line 334
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_4f

    .line 336
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 338
    :cond_4f
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 63
    const/16 v0, 0x180

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 64
    .local v0, "z":[I
    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v2, 0xc

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 66
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 68
    :cond_1c
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 73
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-nez v1, :cond_d

    .line 75
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 79
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 80
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 82
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 87
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4
    .param p0, "x"    # [I

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_c

    .line 94
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "i":I
    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 97
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 102
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 103
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 104
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 105
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 109
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 110
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 111
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 115
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_10

    .line 117
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_15

    .line 121
    :cond_10
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 123
    :goto_15
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 127
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 130
    .local v0, "bb":[B
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 133
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 140
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 142
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 49
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 147
    move-object/from16 v0, p1

    const/16 v1, 0x10

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx16":J
    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx17":J
    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx18":J
    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 148
    .local v9, "xx19":J
    const/16 v11, 0x14

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx20":J
    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx21":J
    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    .local v3, "xx22":J
    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v1

    .end local v1    # "xx16":J
    .local v18, "xx16":J
    int-to-long v1, v15

    and-long v1, v1, v16

    .line 150
    .local v1, "xx23":J
    const-wide/16 v20, 0x1

    .line 152
    .local v20, "n":J
    const/16 v15, 0xc

    aget v15, p0, v15

    move-wide/from16 v22, v1

    .end local v1    # "xx23":J
    .local v22, "xx23":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v11

    const-wide/16 v24, 0x1

    sub-long v1, v1, v24

    .line 153
    .local v1, "t0":J
    const/16 v15, 0xd

    aget v15, p0, v15

    move-wide/from16 v26, v1

    .end local v1    # "t0":J
    .local v26, "t0":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    .line 154
    .local v1, "t1":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v28, v1

    .end local v1    # "t1":J
    .local v28, "t1":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    add-long v1, v1, v22

    .line 155
    .local v1, "t2":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v30, v1

    .end local v1    # "t2":J
    .local v30, "t2":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v22

    .line 156
    .local v1, "t3":J
    add-long v32, v5, v13

    .line 157
    .local v32, "t4":J
    sub-long v34, v13, v22

    .line 158
    .local v34, "t5":J
    sub-long v36, v3, v22

    .line 159
    .local v36, "t6":J
    add-long v38, v26, v34

    .line 161
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 162
    .local v40, "cc":J
    const/16 v42, 0x0

    aget v15, p0, v42

    move-wide/from16 v43, v1

    .end local v1    # "t3":J
    .local v43, "t3":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v38

    add-long v1, v40, v1

    .line 163
    .end local v40    # "cc":J
    .local v1, "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 164
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 165
    const/16 v40, 0x1

    move/from16 v41, v15

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .local v45, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v22

    sub-long v1, v1, v26

    add-long v1, v1, v28

    add-long v1, v45, v1

    .line 166
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 167
    shr-long v1, v1, v41

    .line 168
    const/16 v40, 0x2

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v13

    sub-long v1, v1, v28

    add-long v1, v1, v30

    add-long v1, v45, v1

    .line 169
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 170
    shr-long v1, v1, v41

    .line 171
    const/16 v40, 0x3

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v30

    add-long v1, v1, v43

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 172
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 173
    shr-long v1, v1, v41

    .line 174
    const/16 v40, 0x4

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v13

    add-long v1, v1, v28

    sub-long v1, v1, v43

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 175
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 176
    shr-long v1, v1, v41

    .line 177
    const/16 v40, 0x5

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v18

    add-long v1, v1, v28

    add-long v1, v1, v30

    add-long v1, v1, v32

    add-long v1, v45, v1

    .line 178
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 179
    shr-long v1, v1, v41

    .line 180
    const/16 v40, 0x6

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v5

    add-long v1, v1, v30

    add-long v1, v1, v43

    add-long v1, v45, v1

    .line 181
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 182
    shr-long v1, v1, v41

    .line 183
    const/16 v40, 0x7

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v9

    sub-long/2addr v1, v7

    add-long v1, v1, v43

    add-long v1, v45, v1

    .line 184
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 185
    shr-long v1, v1, v41

    .line 186
    const/16 v40, 0x8

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v5

    add-long/2addr v1, v11

    sub-long/2addr v1, v9

    add-long v1, v45, v1

    .line 187
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 188
    shr-long v1, v1, v41

    .line 189
    const/16 v40, 0x9

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v11

    add-long v1, v1, v32

    add-long v1, v45, v1

    .line 190
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 191
    shr-long v1, v1, v41

    .line 192
    const/16 v40, 0xa

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    add-long/2addr v1, v9

    sub-long v1, v1, v34

    add-long v1, v1, v36

    add-long v1, v45, v1

    .line 193
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 194
    shr-long v1, v1, v41

    .line 195
    const/16 v40, 0xb

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v9

    add-long/2addr v1, v11

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 196
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 197
    shr-long v1, v1, v41

    .line 198
    add-long v1, v1, v24

    .line 202
    long-to-int v15, v1

    invoke-static {v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 203
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 207
    const-wide/16 v0, 0x0

    .line 209
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_49

    .line 211
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 213
    .local v4, "xx12":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 214
    long-to-int v9, v0

    aput v9, p1, v8

    .line 215
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 216
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    sub-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 217
    long-to-int v10, v0

    aput v10, p1, v9

    .line 218
    shr-long/2addr v0, v8

    .line 219
    cmp-long v9, v0, v2

    if-eqz v9, :cond_33

    .line 221
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 222
    long-to-int v10, v0

    aput v10, p1, v9

    .line 223
    shr-long/2addr v0, v8

    .line 225
    :cond_33
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 226
    long-to-int v10, v0

    aput v10, p1, v9

    .line 227
    shr-long/2addr v0, v8

    .line 228
    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 229
    long-to-int v6, v0

    aput v6, p1, v9

    .line 230
    shr-long/2addr v0, v8

    .line 235
    .end local v4    # "xx12":J
    :cond_49
    cmp-long v2, v0, v2

    const/16 v3, 0xc

    if-eqz v2, :cond_56

    const/4 v2, 0x5

    invoke-static {v3, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_65

    :cond_56
    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_68

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 236
    invoke-static {v3, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 238
    :cond_65
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 240
    :cond_68
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 244
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 245
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 246
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 247
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "tt"    # [I

    .line 251
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 252
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 253
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 259
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 260
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 261
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 263
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 265
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 266
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_c

    .line 268
    :cond_17
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 274
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 275
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 277
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 279
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 280
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_6

    .line 282
    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 342
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 343
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 344
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 345
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 346
    long-to-int v8, v1

    aput v8, p0, v7

    .line 347
    shr-long/2addr v1, v0

    .line 348
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 350
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 351
    long-to-int v10, v1

    aput v10, p0, v9

    .line 352
    shr-long/2addr v1, v0

    .line 354
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 355
    long-to-int v10, v1

    aput v10, p0, v9

    .line 356
    shr-long/2addr v1, v0

    .line 357
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 358
    long-to-int v3, v1

    aput v3, p0, v9

    .line 359
    shr-long v0, v1, v0

    .line 360
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_4f

    .line 362
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 364
    :cond_4f
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 286
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 287
    .local v0, "c":I
    if-eqz v0, :cond_b

    .line 289
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 291
    :cond_b
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 295
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 296
    .local v1, "c":I
    if-eqz v1, :cond_19

    .line 298
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_19

    .line 300
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 303
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 307
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 308
    .local v0, "c":I
    if-nez v0, :cond_18

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 310
    :cond_18
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 312
    :cond_1b
    return-void
.end method
