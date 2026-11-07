.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0xc

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v0, 0x18

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    const/16 v0, 0x11

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

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

.method public static blacklist add([I[I[I)V
    .registers 4

    const/16 v0, 0xc

    .line 33
    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_19

    const/16 p0, 0xb

    .line 34
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_18

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 36
    :cond_19
    :goto_19
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 4

    const/16 v0, 0x18

    .line 42
    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_17

    const/16 p0, 0x17

    .line 43
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 45
    :cond_17
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p1

    if-eqz p1, :cond_24

    .line 47
    array-length p0, p0

    invoke-static {v0, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 4

    const/16 v0, 0xc

    .line 54
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_19

    const/16 p0, 0xb

    .line 55
    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_18

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 57
    :cond_19
    :goto_19
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13

    const/4 v0, 0x0

    .line 316
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    .line 317
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v7, 0x1

    .line 319
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 320
    aput v8, p0, v7

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    const/4 v9, 0x2

    .line 324
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 325
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2e
    const/4 v9, 0x3

    .line 328
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 329
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x4

    .line 331
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 332
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_4f

    const/16 v0, 0xc

    const/4 v1, 0x5

    .line 336
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_4f
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    const/16 v0, 0x180

    .line 63
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    const/16 v0, 0xb

    .line 64
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v1, 0xc

    invoke-static {v1, p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 66
    invoke-static {v1, v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_1a
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xc

    if-ge v0, v2, :cond_c

    .line 94
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

    const/16 v0, 0x18

    .line 102
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 103
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 104
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 109
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 110
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4

    .line 115
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_e

    .line 117
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    return-void

    .line 121
    :cond_e
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x30

    .line 127
    new-array v0, v0, [B

    .line 130
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 131
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 133
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 142
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 44

    move-object/from16 v0, p1

    const/16 v1, 0x10

    .line 147
    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0x14

    .line 148
    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    const/16 v15, 0xc

    .line 152
    aget v15, p0, v15

    move-wide/from16 v20, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v11

    const-wide/16 v22, 0x1

    sub-long v1, v1, v22

    const/16 v15, 0xd

    .line 153
    aget v15, p0, v15

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    const/16 v15, 0xe

    .line 154
    aget v15, p0, v15

    move-wide/from16 v26, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    add-long v1, v1, v20

    const/16 v15, 0xf

    .line 155
    aget v15, p0, v15

    move-wide/from16 v28, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v20

    add-long v30, v5, v13

    sub-long v32, v13, v20

    sub-long v3, v3, v20

    add-long v34, v24, v32

    const/16 v36, 0x0

    .line 162
    aget v15, p0, v36

    move-wide/from16 v37, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v34

    long-to-int v15, v1

    .line 163
    aput v15, v0, v36

    const/16 v15, 0x20

    shr-long/2addr v1, v15

    const/16 v36, 0x1

    move/from16 v39, v15

    .line 165
    aget v15, p0, v36

    move-wide/from16 v40, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v20

    sub-long v1, v1, v24

    add-long v1, v1, v26

    add-long v1, v40, v1

    long-to-int v15, v1

    .line 166
    aput v15, v0, v36

    shr-long v1, v1, v39

    const/16 v20, 0x2

    .line 168
    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v13

    sub-long v1, v1, v26

    add-long v1, v1, v28

    add-long v1, v24, v1

    long-to-int v15, v1

    .line 169
    aput v15, v0, v20

    shr-long v1, v1, v39

    const/16 v20, 0x3

    .line 171
    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v28

    add-long v1, v1, v37

    add-long v1, v1, v34

    add-long v1, v24, v1

    long-to-int v15, v1

    .line 172
    aput v15, v0, v20

    shr-long v1, v1, v39

    const/16 v20, 0x4

    .line 174
    aget v15, p0, v20

    move-wide/from16 v24, v1

    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v13

    add-long v1, v1, v26

    sub-long v1, v1, v37

    add-long v1, v1, v34

    add-long v1, v24, v1

    long-to-int v13, v1

    .line 175
    aput v13, v0, v20

    shr-long v1, v1, v39

    const/4 v13, 0x5

    .line 177
    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    sub-long v14, v14, v18

    add-long v14, v14, v26

    add-long v14, v14, v28

    add-long v14, v14, v30

    add-long/2addr v1, v14

    long-to-int v14, v1

    .line 178
    aput v14, v0, v13

    shr-long v1, v1, v39

    const/4 v13, 0x6

    .line 180
    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v14, v7

    sub-long/2addr v14, v5

    add-long v14, v14, v28

    add-long v14, v14, v37

    add-long/2addr v1, v14

    long-to-int v14, v1

    .line 181
    aput v14, v0, v13

    shr-long v1, v1, v39

    const/4 v13, 0x7

    .line 183
    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long v14, v14, v18

    add-long/2addr v14, v9

    sub-long/2addr v14, v7

    add-long v14, v14, v37

    add-long/2addr v1, v14

    long-to-int v14, v1

    .line 184
    aput v14, v0, v13

    shr-long v1, v1, v39

    const/16 v13, 0x8

    .line 186
    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long v14, v14, v18

    add-long/2addr v14, v5

    add-long/2addr v14, v11

    sub-long/2addr v14, v9

    add-long/2addr v1, v14

    long-to-int v5, v1

    .line 187
    aput v5, v0, v13

    shr-long v1, v1, v39

    const/16 v5, 0x9

    .line 189
    aget v6, p0, v5

    int-to-long v13, v6

    and-long v13, v13, v16

    add-long/2addr v13, v7

    sub-long/2addr v13, v11

    add-long v13, v13, v30

    add-long/2addr v1, v13

    long-to-int v6, v1

    .line 190
    aput v6, v0, v5

    shr-long v1, v1, v39

    const/16 v5, 0xa

    .line 192
    aget v6, p0, v5

    int-to-long v13, v6

    and-long v13, v13, v16

    add-long/2addr v13, v7

    add-long/2addr v13, v9

    sub-long v13, v13, v32

    add-long/2addr v13, v3

    add-long/2addr v1, v13

    long-to-int v6, v1

    .line 193
    aput v6, v0, v5

    shr-long v1, v1, v39

    const/16 v5, 0xb

    .line 195
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long/2addr v6, v9

    add-long/2addr v6, v11

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int v3, v1

    .line 196
    aput v3, v0, v5

    shr-long v1, v1, v39

    add-long v1, v1, v22

    long-to-int v1, v1

    .line 202
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 13

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_48

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 p0, 0x0

    .line 213
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v6, v2

    long-to-int v8, v6

    .line 214
    aput v8, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v6, p0

    const/4 v8, 0x1

    .line 216
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    sub-long/2addr v9, v2

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 217
    aput v9, p1, v8

    shr-long/2addr v6, p0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_30

    const/4 v8, 0x2

    .line 221
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 222
    aput v9, p1, v8

    shr-long/2addr v6, p0

    :cond_30
    const/4 v8, 0x3

    .line 225
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v2

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 226
    aput v9, p1, v8

    shr-long/2addr v6, p0

    const/4 v8, 0x4

    .line 228
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    .line 229
    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_49

    :cond_48
    move-wide v2, v0

    :goto_49
    cmp-long p0, v2, v0

    const/16 v0, 0xc

    if-eqz p0, :cond_56

    const/4 p0, 0x5

    .line 235
    invoke-static {v0, p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_65

    :cond_56
    const/16 p0, 0xb

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_68

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 236
    invoke-static {v0, p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_68

    .line 238
    :cond_65
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    :cond_68
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    const/16 v0, 0x18

    .line 244
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 245
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 246
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 251
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 252
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 274
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 275
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 279
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 280
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_6

    :cond_11
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13

    const/4 v0, 0x0

    .line 342
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    .line 343
    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v7, 0x1

    .line 345
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    long-to-int v8, v1

    .line 346
    aput v8, p0, v7

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    const/4 v9, 0x2

    .line 350
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 351
    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_2e
    const/4 v9, 0x3

    .line 354
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    long-to-int v10, v1

    .line 355
    aput v10, p0, v9

    shr-long/2addr v1, v0

    const/4 v9, 0x4

    .line 357
    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 358
    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_4f

    const/16 v0, 0xc

    const/4 v1, 0x5

    .line 362
    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_4f
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4

    const/16 v0, 0xc

    .line 286
    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_b

    .line 289
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    :cond_b
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 307
    invoke-static {v1, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_1a

    const/16 p0, 0xb

    .line 308
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 310
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    return-void
.end method
