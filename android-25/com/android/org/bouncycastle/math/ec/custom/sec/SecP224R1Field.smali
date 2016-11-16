.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P6:I = -0x1

.field static final PExt:[I

.field private static final PExt13:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@8
    .line 14
    const/16 v0, 0xe

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    #@11
    .line 16
    const/16 v0, 0xb

    #@13
    new-array v0, v0, [I

    #@15
    fill-array-data v0, :array_2

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@1a
    .line 8
    return-void

    #@1b
    .line 13
    nop

    #@1c
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    #@2e
    .line 14
    :array_1
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

    #@4e
    .line 16
    :array_2
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x6

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 26
    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    #@17
    .line 21
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 32
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 33
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xd

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 35
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 37
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 30
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 44
    const/4 v1, 0x7

    #@1
    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@4
    move-result v0

    #@5
    .line 45
    .local v0, "c":I
    if-nez v0, :cond_0

    #@7
    const/4 v1, 0x6

    #@8
    aget v1, p1, v1

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_1

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@f
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 47
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    #@18
    .line 42
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 12
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const-wide v8, 0xffffffffL

    #@8
    const/16 v6, 0x20

    #@a
    .line 255
    aget v2, p0, v7

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v8

    #@e
    const-wide/16 v4, 0x1

    #@10
    sub-long v0, v2, v4

    #@12
    .line 256
    .local v0, "c":J
    long-to-int v2, v0

    #@13
    aput v2, p0, v7

    #@15
    .line 257
    shr-long/2addr v0, v6

    #@16
    .line 258
    const-wide/16 v2, 0x0

    #@18
    cmp-long v2, v0, v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 260
    aget v2, p0, v10

    #@1e
    int-to-long v2, v2

    #@1f
    and-long/2addr v2, v8

    #@20
    add-long/2addr v0, v2

    #@21
    .line 261
    long-to-int v2, v0

    #@22
    aput v2, p0, v10

    #@24
    .line 262
    shr-long/2addr v0, v6

    #@25
    .line 263
    aget v2, p0, v11

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v8

    #@29
    add-long/2addr v0, v2

    #@2a
    .line 264
    long-to-int v2, v0

    #@2b
    aput v2, p0, v11

    #@2d
    .line 265
    shr-long/2addr v0, v6

    #@2e
    .line 267
    :cond_0
    const/4 v2, 0x3

    #@2f
    aget v2, p0, v2

    #@31
    int-to-long v2, v2

    #@32
    and-long/2addr v2, v8

    #@33
    const-wide/16 v4, 0x1

    #@35
    add-long/2addr v2, v4

    #@36
    add-long/2addr v0, v2

    #@37
    .line 268
    long-to-int v2, v0

    #@38
    const/4 v3, 0x3

    #@39
    aput v2, p0, v3

    #@3b
    .line 269
    shr-long/2addr v0, v6

    #@3c
    .line 270
    const-wide/16 v2, 0x0

    #@3e
    cmp-long v2, v0, v2

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 272
    const/4 v2, 0x7

    #@43
    const/4 v3, 0x4

    #@44
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@47
    .line 253
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "z":[I
    const/4 v1, 0x6

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 56
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@14
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    #@17
    .line 58
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    const/4 v2, 0x0

    #@2
    .line 63
    aget v1, p0, v2

    #@4
    and-int/lit8 v1, v1, 0x1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 65
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@b
    .line 61
    :goto_0
    return-void

    #@c
    .line 69
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@e
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    #@11
    move-result v0

    #@12
    .line 70
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@15
    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 76
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    #@7
    .line 78
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    #@a
    .line 74
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 84
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xd

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 86
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 88
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 81
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->zero([I)V

    #@9
    .line 93
    :goto_0
    return-void

    #@a
    .line 101
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    #@f
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 30
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 107
    const/16 v26, 0xa

    #@2
    aget v26, p0, v26

    #@4
    move/from16 v0, v26

    #@6
    int-to-long v0, v0

    #@7
    move-wide/from16 v26, v0

    #@9
    const-wide v28, 0xffffffffL

    #@e
    and-long v14, v26, v28

    #@10
    .local v14, "xx10":J
    const/16 v26, 0xb

    #@12
    aget v26, p0, v26

    #@14
    move/from16 v0, v26

    #@16
    int-to-long v0, v0

    #@17
    move-wide/from16 v26, v0

    #@19
    const-wide v28, 0xffffffffL

    #@1e
    and-long v16, v26, v28

    #@20
    .local v16, "xx11":J
    const/16 v26, 0xc

    #@22
    aget v26, p0, v26

    #@24
    move/from16 v0, v26

    #@26
    int-to-long v0, v0

    #@27
    move-wide/from16 v26, v0

    #@29
    const-wide v28, 0xffffffffL

    #@2e
    and-long v18, v26, v28

    #@30
    .local v18, "xx12":J
    const/16 v26, 0xd

    #@32
    aget v26, p0, v26

    #@34
    move/from16 v0, v26

    #@36
    int-to-long v0, v0

    #@37
    move-wide/from16 v26, v0

    #@39
    const-wide v28, 0xffffffffL

    #@3e
    and-long v20, v26, v28

    #@40
    .line 109
    .local v20, "xx13":J
    const-wide/16 v6, 0x1

    #@42
    .line 111
    .local v6, "n":J
    const/16 v26, 0x7

    #@44
    aget v26, p0, v26

    #@46
    move/from16 v0, v26

    #@48
    int-to-long v0, v0

    #@49
    move-wide/from16 v26, v0

    #@4b
    const-wide v28, 0xffffffffL

    #@50
    and-long v26, v26, v28

    #@52
    add-long v26, v26, v16

    #@54
    const-wide/16 v28, 0x1

    #@56
    sub-long v8, v26, v28

    #@58
    .line 112
    .local v8, "t0":J
    const/16 v26, 0x8

    #@5a
    aget v26, p0, v26

    #@5c
    move/from16 v0, v26

    #@5e
    int-to-long v0, v0

    #@5f
    move-wide/from16 v26, v0

    #@61
    const-wide v28, 0xffffffffL

    #@66
    and-long v26, v26, v28

    #@68
    add-long v10, v26, v18

    #@6a
    .line 113
    .local v10, "t1":J
    const/16 v26, 0x9

    #@6c
    aget v26, p0, v26

    #@6e
    move/from16 v0, v26

    #@70
    int-to-long v0, v0

    #@71
    move-wide/from16 v26, v0

    #@73
    const-wide v28, 0xffffffffL

    #@78
    and-long v26, v26, v28

    #@7a
    add-long v12, v26, v20

    #@7c
    .line 116
    .local v12, "t2":J
    const/16 v26, 0x0

    #@7e
    aget v26, p0, v26

    #@80
    move/from16 v0, v26

    #@82
    int-to-long v0, v0

    #@83
    move-wide/from16 v26, v0

    #@85
    const-wide v28, 0xffffffffL

    #@8a
    and-long v26, v26, v28

    #@8c
    sub-long v26, v26, v8

    #@8e
    .line 115
    const-wide/16 v28, 0x0

    #@90
    .line 116
    add-long v4, v28, v26

    #@92
    .line 117
    .local v4, "cc":J
    const-wide v26, 0xffffffffL

    #@97
    and-long v22, v4, v26

    #@99
    .line 118
    .local v22, "z0":J
    const/16 v26, 0x20

    #@9b
    shr-long v4, v4, v26

    #@9d
    .line 119
    const/16 v26, 0x1

    #@9f
    aget v26, p0, v26

    #@a1
    move/from16 v0, v26

    #@a3
    int-to-long v0, v0

    #@a4
    move-wide/from16 v26, v0

    #@a6
    const-wide v28, 0xffffffffL

    #@ab
    and-long v26, v26, v28

    #@ad
    sub-long v26, v26, v10

    #@af
    add-long v4, v4, v26

    #@b1
    .line 120
    long-to-int v0, v4

    #@b2
    move/from16 v26, v0

    #@b4
    const/16 v27, 0x1

    #@b6
    aput v26, p1, v27

    #@b8
    .line 121
    const/16 v26, 0x20

    #@ba
    shr-long v4, v4, v26

    #@bc
    .line 122
    const/16 v26, 0x2

    #@be
    aget v26, p0, v26

    #@c0
    move/from16 v0, v26

    #@c2
    int-to-long v0, v0

    #@c3
    move-wide/from16 v26, v0

    #@c5
    const-wide v28, 0xffffffffL

    #@ca
    and-long v26, v26, v28

    #@cc
    sub-long v26, v26, v12

    #@ce
    add-long v4, v4, v26

    #@d0
    .line 123
    long-to-int v0, v4

    #@d1
    move/from16 v26, v0

    #@d3
    const/16 v27, 0x2

    #@d5
    aput v26, p1, v27

    #@d7
    .line 124
    const/16 v26, 0x20

    #@d9
    shr-long v4, v4, v26

    #@db
    .line 125
    const/16 v26, 0x3

    #@dd
    aget v26, p0, v26

    #@df
    move/from16 v0, v26

    #@e1
    int-to-long v0, v0

    #@e2
    move-wide/from16 v26, v0

    #@e4
    const-wide v28, 0xffffffffL

    #@e9
    and-long v26, v26, v28

    #@eb
    add-long v26, v26, v8

    #@ed
    sub-long v26, v26, v14

    #@ef
    add-long v4, v4, v26

    #@f1
    .line 126
    const-wide v26, 0xffffffffL

    #@f6
    and-long v24, v4, v26

    #@f8
    .line 127
    .local v24, "z3":J
    const/16 v26, 0x20

    #@fa
    shr-long v4, v4, v26

    #@fc
    .line 128
    const/16 v26, 0x4

    #@fe
    aget v26, p0, v26

    #@100
    move/from16 v0, v26

    #@102
    int-to-long v0, v0

    #@103
    move-wide/from16 v26, v0

    #@105
    const-wide v28, 0xffffffffL

    #@10a
    and-long v26, v26, v28

    #@10c
    add-long v26, v26, v10

    #@10e
    sub-long v26, v26, v16

    #@110
    add-long v4, v4, v26

    #@112
    .line 129
    long-to-int v0, v4

    #@113
    move/from16 v26, v0

    #@115
    const/16 v27, 0x4

    #@117
    aput v26, p1, v27

    #@119
    .line 130
    const/16 v26, 0x20

    #@11b
    shr-long v4, v4, v26

    #@11d
    .line 131
    const/16 v26, 0x5

    #@11f
    aget v26, p0, v26

    #@121
    move/from16 v0, v26

    #@123
    int-to-long v0, v0

    #@124
    move-wide/from16 v26, v0

    #@126
    const-wide v28, 0xffffffffL

    #@12b
    and-long v26, v26, v28

    #@12d
    add-long v26, v26, v12

    #@12f
    sub-long v26, v26, v18

    #@131
    add-long v4, v4, v26

    #@133
    .line 132
    long-to-int v0, v4

    #@134
    move/from16 v26, v0

    #@136
    const/16 v27, 0x5

    #@138
    aput v26, p1, v27

    #@13a
    .line 133
    const/16 v26, 0x20

    #@13c
    shr-long v4, v4, v26

    #@13e
    .line 134
    const/16 v26, 0x6

    #@140
    aget v26, p0, v26

    #@142
    move/from16 v0, v26

    #@144
    int-to-long v0, v0

    #@145
    move-wide/from16 v26, v0

    #@147
    const-wide v28, 0xffffffffL

    #@14c
    and-long v26, v26, v28

    #@14e
    add-long v26, v26, v14

    #@150
    sub-long v26, v26, v20

    #@152
    add-long v4, v4, v26

    #@154
    .line 135
    long-to-int v0, v4

    #@155
    move/from16 v26, v0

    #@157
    const/16 v27, 0x6

    #@159
    aput v26, p1, v27

    #@15b
    .line 136
    const/16 v26, 0x20

    #@15d
    shr-long v4, v4, v26

    #@15f
    .line 137
    const-wide/16 v26, 0x1

    #@161
    add-long v4, v4, v26

    #@163
    .line 141
    add-long v24, v24, v4

    #@165
    .line 143
    sub-long v22, v22, v4

    #@167
    .line 144
    move-wide/from16 v0, v22

    #@169
    long-to-int v0, v0

    #@16a
    move/from16 v26, v0

    #@16c
    const/16 v27, 0x0

    #@16e
    aput v26, p1, v27

    #@170
    .line 145
    const/16 v26, 0x20

    #@172
    shr-long v4, v22, v26

    #@174
    .line 146
    const-wide/16 v26, 0x0

    #@176
    cmp-long v26, v4, v26

    #@178
    if-eqz v26, :cond_0

    #@17a
    .line 148
    const/16 v26, 0x1

    #@17c
    aget v26, p1, v26

    #@17e
    move/from16 v0, v26

    #@180
    int-to-long v0, v0

    #@181
    move-wide/from16 v26, v0

    #@183
    const-wide v28, 0xffffffffL

    #@188
    and-long v26, v26, v28

    #@18a
    add-long v4, v4, v26

    #@18c
    .line 149
    long-to-int v0, v4

    #@18d
    move/from16 v26, v0

    #@18f
    const/16 v27, 0x1

    #@191
    aput v26, p1, v27

    #@193
    .line 150
    const/16 v26, 0x20

    #@195
    shr-long v4, v4, v26

    #@197
    .line 151
    const/16 v26, 0x2

    #@199
    aget v26, p1, v26

    #@19b
    move/from16 v0, v26

    #@19d
    int-to-long v0, v0

    #@19e
    move-wide/from16 v26, v0

    #@1a0
    const-wide v28, 0xffffffffL

    #@1a5
    and-long v26, v26, v28

    #@1a7
    add-long v4, v4, v26

    #@1a9
    .line 152
    long-to-int v0, v4

    #@1aa
    move/from16 v26, v0

    #@1ac
    const/16 v27, 0x2

    #@1ae
    aput v26, p1, v27

    #@1b0
    .line 153
    const/16 v26, 0x20

    #@1b2
    shr-long v26, v4, v26

    #@1b4
    add-long v24, v24, v26

    #@1b6
    .line 155
    :cond_0
    move-wide/from16 v0, v24

    #@1b8
    long-to-int v0, v0

    #@1b9
    move/from16 v26, v0

    #@1bb
    const/16 v27, 0x3

    #@1bd
    aput v26, p1, v27

    #@1bf
    .line 156
    const/16 v26, 0x20

    #@1c1
    shr-long v4, v24, v26

    #@1c3
    .line 160
    const-wide/16 v26, 0x0

    #@1c5
    cmp-long v26, v4, v26

    #@1c7
    if-eqz v26, :cond_2

    #@1c9
    const/16 v26, 0x7

    #@1cb
    const/16 v27, 0x4

    #@1cd
    move/from16 v0, v26

    #@1cf
    move-object/from16 v1, p1

    #@1d1
    move/from16 v2, v27

    #@1d3
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@1d6
    move-result v26

    #@1d7
    if-eqz v26, :cond_2

    #@1d9
    .line 163
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    #@1dc
    .line 105
    :cond_1
    return-void

    #@1dd
    .line 161
    :cond_2
    const/16 v26, 0x6

    #@1df
    aget v26, p1, v26

    #@1e1
    const/16 v27, -0x1

    #@1e3
    move/from16 v0, v26

    #@1e5
    move/from16 v1, v27

    #@1e7
    if-ne v0, v1, :cond_1

    #@1e9
    sget-object v26, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    move-object/from16 v1, v26

    #@1ef
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@1f2
    move-result v26

    #@1f3
    .line 160
    if-eqz v26, :cond_1

    #@1f5
    goto :goto_0
.end method

.method public static reduce32(I[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const-wide/16 v10, 0x0

    #@3
    const/16 v9, 0x20

    #@5
    const/4 v8, 0x0

    #@6
    const-wide v6, 0xffffffffL

    #@b
    .line 169
    const-wide/16 v0, 0x0

    #@d
    .line 171
    .local v0, "cc":J
    if-eqz p0, :cond_1

    #@f
    .line 173
    int-to-long v4, p0

    #@10
    and-long v2, v4, v6

    #@12
    .line 175
    .local v2, "xx07":J
    aget v4, p1, v8

    #@14
    int-to-long v4, v4

    #@15
    and-long/2addr v4, v6

    #@16
    sub-long/2addr v4, v2

    #@17
    add-long v0, v10, v4

    #@19
    .line 176
    long-to-int v4, v0

    #@1a
    aput v4, p1, v8

    #@1c
    .line 177
    shr-long/2addr v0, v9

    #@1d
    .line 178
    cmp-long v4, v0, v10

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 180
    aget v4, p1, v12

    #@23
    int-to-long v4, v4

    #@24
    and-long/2addr v4, v6

    #@25
    add-long/2addr v0, v4

    #@26
    .line 181
    long-to-int v4, v0

    #@27
    aput v4, p1, v12

    #@29
    .line 182
    shr-long/2addr v0, v9

    #@2a
    .line 183
    const/4 v4, 0x2

    #@2b
    aget v4, p1, v4

    #@2d
    int-to-long v4, v4

    #@2e
    and-long/2addr v4, v6

    #@2f
    add-long/2addr v0, v4

    #@30
    .line 184
    long-to-int v4, v0

    #@31
    const/4 v5, 0x2

    #@32
    aput v4, p1, v5

    #@34
    .line 185
    shr-long/2addr v0, v9

    #@35
    .line 187
    :cond_0
    const/4 v4, 0x3

    #@36
    aget v4, p1, v4

    #@38
    int-to-long v4, v4

    #@39
    and-long/2addr v4, v6

    #@3a
    add-long/2addr v4, v2

    #@3b
    add-long/2addr v0, v4

    #@3c
    .line 188
    long-to-int v4, v0

    #@3d
    const/4 v5, 0x3

    #@3e
    aput v4, p1, v5

    #@40
    .line 189
    shr-long/2addr v0, v9

    #@41
    .line 194
    .end local v2    # "xx07":J
    :cond_1
    cmp-long v4, v0, v10

    #@43
    if-eqz v4, :cond_3

    #@45
    const/4 v4, 0x7

    #@46
    const/4 v5, 0x4

    #@47
    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 197
    :goto_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    #@50
    .line 167
    :cond_2
    return-void

    #@51
    .line 195
    :cond_3
    const/4 v4, 0x6

    #@52
    aget v4, p1, v4

    #@54
    const/4 v5, -0x1

    #@55
    if-ne v4, v5, :cond_2

    #@57
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@59
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@5c
    move-result v4

    #@5d
    .line 194
    if-eqz v4, :cond_2

    #@5f
    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 203
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 204
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@7
    .line 205
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    #@a
    .line 201
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 212
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@7
    .line 214
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    #@a
    .line 216
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 218
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    #@11
    .line 219
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 208
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 12
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const-wide v8, 0xffffffffL

    #@8
    const/16 v6, 0x20

    #@a
    .line 278
    aget v2, p0, v7

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v8

    #@e
    const-wide/16 v4, 0x1

    #@10
    add-long v0, v2, v4

    #@12
    .line 279
    .local v0, "c":J
    long-to-int v2, v0

    #@13
    aput v2, p0, v7

    #@15
    .line 280
    shr-long/2addr v0, v6

    #@16
    .line 281
    const-wide/16 v2, 0x0

    #@18
    cmp-long v2, v0, v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 283
    aget v2, p0, v10

    #@1e
    int-to-long v2, v2

    #@1f
    and-long/2addr v2, v8

    #@20
    add-long/2addr v0, v2

    #@21
    .line 284
    long-to-int v2, v0

    #@22
    aput v2, p0, v10

    #@24
    .line 285
    shr-long/2addr v0, v6

    #@25
    .line 286
    aget v2, p0, v11

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v8

    #@29
    add-long/2addr v0, v2

    #@2a
    .line 287
    long-to-int v2, v0

    #@2b
    aput v2, p0, v11

    #@2d
    .line 288
    shr-long/2addr v0, v6

    #@2e
    .line 290
    :cond_0
    const/4 v2, 0x3

    #@2f
    aget v2, p0, v2

    #@31
    int-to-long v2, v2

    #@32
    and-long/2addr v2, v8

    #@33
    const-wide/16 v4, 0x1

    #@35
    sub-long/2addr v2, v4

    #@36
    add-long/2addr v0, v2

    #@37
    .line 291
    long-to-int v2, v0

    #@38
    const/4 v3, 0x3

    #@39
    aput v2, p0, v3

    #@3b
    .line 292
    shr-long/2addr v0, v6

    #@3c
    .line 293
    const-wide/16 v2, 0x0

    #@3e
    cmp-long v2, v0, v2

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 295
    const/4 v2, 0x7

    #@43
    const/4 v3, 0x4

    #@44
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@47
    .line 276
    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 225
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 226
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 228
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    #@9
    .line 223
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 234
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 235
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 237
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 239
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 232
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 246
    const/4 v1, 0x7

    #@2
    invoke-static {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@5
    move-result v0

    #@6
    .line 247
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x6

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 249
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    #@19
    .line 244
    :cond_1
    return-void
.end method
