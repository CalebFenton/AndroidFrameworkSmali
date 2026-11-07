.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P5:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt11:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

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
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 31
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 33
    :cond_14
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 40
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 42
    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_28

    .line 44
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 47
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 51
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 52
    .local v0, "c":I
    if-nez v0, :cond_15

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 54
    :cond_15
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 56
    :cond_18
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 292
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 293
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 294
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 295
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 297
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 298
    long-to-int v10, v1

    aput v10, p0, v9

    .line 299
    shr-long/2addr v1, v0

    .line 301
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 302
    long-to-int v3, v1

    aput v3, p0, v9

    .line 303
    shr-long v0, v1, v0

    .line 304
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_38

    .line 306
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 308
    :cond_38
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 60
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 61
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 63
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 65
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 70
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_c

    .line 72
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 76
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 77
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 79
    .end local v0    # "c":I
    :goto_15
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 83
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 84
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4
    .param p0, "x"    # [I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_b

    .line 91
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    .end local v1    # "i":I
    :cond_b
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 94
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 99
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 100
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 101
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 102
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 107
    .local v0, "c":I
    const/16 v1, 0xc

    if-nez v0, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 109
    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_28

    .line 111
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 114
    :cond_28
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_13

    .line 124
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    .line 126
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 130
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 133
    .local v0, "bb":[B
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

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
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 39
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 150
    move-object/from16 v0, p1

    const/4 v1, 0x6

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xx06":J
    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    .local v6, "xx07":J
    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    .line 151
    .local v8, "xx08":J
    const/16 v10, 0x9

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .local v10, "xx09":J
    const/16 v12, 0xa

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    .local v12, "xx10":J
    const/16 v14, 0xb

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v4

    .line 153
    .local v14, "xx11":J
    add-long v16, v2, v12

    .line 154
    .local v16, "t0":J
    add-long v18, v6, v14

    .line 156
    .local v18, "t1":J
    const-wide/16 v20, 0x0

    .line 157
    .local v20, "cc":J
    const/16 v22, 0x0

    move-wide/from16 v23, v4

    aget v4, p0, v22

    int-to-long v4, v4

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long v4, v20, v4

    .line 158
    .end local v20    # "cc":J
    .local v4, "cc":J
    long-to-int v1, v4

    .line 159
    .local v1, "z0":I
    const/16 v21, 0x20

    shr-long v4, v4, v21

    .line 160
    const/16 v25, 0x1

    move-wide/from16 v26, v2

    .end local v2    # "xx06":J
    .local v26, "xx06":J
    aget v2, p0, v25

    int-to-long v2, v2

    and-long v2, v2, v23

    add-long v2, v2, v18

    add-long/2addr v4, v2

    .line 161
    long-to-int v2, v4

    aput v2, v0, v25

    .line 162
    shr-long v2, v4, v21

    .line 164
    .end local v4    # "cc":J
    .local v2, "cc":J
    add-long v16, v16, v8

    .line 165
    add-long v18, v18, v10

    .line 167
    const/4 v4, 0x2

    aget v5, p0, v4

    move/from16 v28, v4

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long/2addr v2, v4

    .line 168
    and-long v4, v2, v23

    .line 169
    .local v4, "z2":J
    shr-long v2, v2, v21

    .line 170
    move-wide/from16 v29, v2

    .end local v2    # "cc":J
    .local v29, "cc":J
    const/4 v2, 0x3

    aget v3, p0, v2

    move/from16 v31, v2

    int-to-long v2, v3

    and-long v2, v2, v23

    add-long v2, v2, v18

    add-long v2, v29, v2

    .line 171
    .end local v29    # "cc":J
    .restart local v2    # "cc":J
    move-wide/from16 v29, v4

    .end local v4    # "z2":J
    .local v29, "z2":J
    long-to-int v4, v2

    aput v4, v0, v31

    .line 172
    shr-long v2, v2, v21

    .line 174
    sub-long v16, v16, v26

    .line 175
    sub-long v18, v18, v6

    .line 177
    const/4 v4, 0x4

    aget v5, p0, v4

    move/from16 v32, v4

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long/2addr v2, v4

    .line 178
    long-to-int v4, v2

    aput v4, v0, v32

    .line 179
    shr-long v2, v2, v21

    .line 180
    const/4 v4, 0x5

    aget v5, p0, v4

    move/from16 v32, v4

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v18

    add-long/2addr v2, v4

    .line 181
    long-to-int v4, v2

    aput v4, v0, v32

    .line 182
    shr-long v2, v2, v21

    .line 184
    add-long v4, v29, v2

    .line 186
    .end local v29    # "z2":J
    .restart local v4    # "z2":J
    move-wide/from16 v29, v2

    .end local v2    # "cc":J
    .local v29, "cc":J
    int-to-long v2, v1

    and-long v2, v2, v23

    add-long v2, v29, v2

    .line 187
    .end local v29    # "cc":J
    .restart local v2    # "cc":J
    move/from16 v29, v1

    .end local v1    # "z0":I
    .local v29, "z0":I
    long-to-int v1, v2

    aput v1, v0, v22

    .line 188
    shr-long v1, v2, v21

    .line 189
    .end local v2    # "cc":J
    .local v1, "cc":J
    const-wide/16 v33, 0x0

    cmp-long v3, v1, v33

    if-eqz v3, :cond_c5

    .line 191
    aget v3, v0, v25

    move-wide/from16 v35, v1

    .end local v1    # "cc":J
    .local v35, "cc":J
    int-to-long v1, v3

    and-long v1, v1, v23

    add-long v1, v35, v1

    .line 192
    .end local v35    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v3, v1

    aput v3, v0, v25

    .line 193
    shr-long v22, v1, v21

    add-long v4, v4, v22

    goto :goto_c7

    .line 189
    :cond_c5
    move-wide/from16 v35, v1

    .line 195
    :goto_c7
    long-to-int v3, v4

    aput v3, v0, v28

    .line 196
    shr-long v1, v4, v21

    .line 200
    cmp-long v3, v1, v33

    if-eqz v3, :cond_dc

    move-wide/from16 v20, v1

    move/from16 v1, v31

    const/4 v3, 0x6

    .end local v1    # "cc":J
    .restart local v20    # "cc":J
    invoke-static {v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_eb

    goto :goto_de

    .end local v20    # "cc":J
    .restart local v1    # "cc":J
    :cond_dc
    move-wide/from16 v20, v1

    .end local v1    # "cc":J
    .restart local v20    # "cc":J
    :goto_de
    aget v1, v0, v32

    const/4 v2, -0x1

    if-ne v1, v2, :cond_ee

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 201
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 203
    :cond_eb
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 205
    :cond_ee
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 209
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_33

    .line 213
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 215
    .local v4, "xx06":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 216
    long-to-int v9, v0

    aput v9, p1, v8

    .line 217
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 218
    cmp-long v9, v0, v2

    if-eqz v9, :cond_28

    .line 220
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 221
    long-to-int v10, v0

    aput v10, p1, v9

    .line 222
    shr-long/2addr v0, v8

    .line 224
    :cond_28
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 225
    long-to-int v6, v0

    aput v6, p1, v9

    .line 226
    shr-long/2addr v0, v8

    .line 231
    .end local v4    # "xx06":J
    :cond_33
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_4d

    :cond_3f
    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_50

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 232
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 234
    :cond_4d
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 236
    :cond_50
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 240
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 241
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 242
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 243
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 249
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 250
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 251
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 253
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 255
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 256
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_a

    .line 258
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 312
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 313
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 314
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 315
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 317
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 318
    long-to-int v10, v1

    aput v10, p0, v9

    .line 319
    shr-long/2addr v1, v0

    .line 321
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 322
    long-to-int v3, v1

    aput v3, p0, v9

    .line 323
    shr-long v0, v1, v0

    .line 324
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_38

    .line 326
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 328
    :cond_38
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 262
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 263
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 265
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    .line 267
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 271
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 272
    .local v1, "c":I
    if-eqz v1, :cond_19

    .line 274
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_19

    .line 276
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 279
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 283
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 284
    .local v0, "c":I
    if-nez v0, :cond_16

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 286
    :cond_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 288
    :cond_19
    return-void
.end method
