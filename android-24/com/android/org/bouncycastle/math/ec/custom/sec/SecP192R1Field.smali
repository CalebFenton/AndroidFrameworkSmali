.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P5:I = -0x1

.field static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@8
    .line 14
    const/16 v0, 0xc

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    #@11
    .line 16
    const/16 v0, 0x9

    #@13
    new-array v0, v0, [I

    #@15
    fill-array-data v0, :array_2

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@1a
    .line 8
    return-void

    #@1b
    .line 13
    nop

    #@1c
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    #@2c
    .line 14
    :array_1
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

    #@48
    .line 16
    :array_2
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
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x5

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 26
    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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
    const/16 v3, 0xc

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
    const/16 v1, 0xb

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 35
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 37
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

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
    const/4 v1, 0x6

    #@1
    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@4
    move-result v0

    #@5
    .line 45
    .local v0, "c":I
    if-nez v0, :cond_0

    #@7
    const/4 v1, 0x5

    #@8
    aget v1, p1, v1

    #@a
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_1

    #@d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@f
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 47
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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
    .line 249
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
    .line 250
    .local v0, "c":J
    long-to-int v2, v0

    #@13
    aput v2, p0, v7

    #@15
    .line 251
    shr-long/2addr v0, v6

    #@16
    .line 252
    const-wide/16 v2, 0x0

    #@18
    cmp-long v2, v0, v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 254
    aget v2, p0, v10

    #@1e
    int-to-long v2, v2

    #@1f
    and-long/2addr v2, v8

    #@20
    add-long/2addr v0, v2

    #@21
    .line 255
    long-to-int v2, v0

    #@22
    aput v2, p0, v10

    #@24
    .line 256
    shr-long/2addr v0, v6

    #@25
    .line 258
    :cond_0
    aget v2, p0, v11

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v8

    #@29
    const-wide/16 v4, 0x1

    #@2b
    add-long/2addr v2, v4

    #@2c
    add-long/2addr v0, v2

    #@2d
    .line 259
    long-to-int v2, v0

    #@2e
    aput v2, p0, v11

    #@30
    .line 260
    shr-long/2addr v0, v6

    #@31
    .line 261
    const-wide/16 v2, 0x0

    #@33
    cmp-long v2, v0, v2

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 263
    const/4 v2, 0x6

    #@38
    const/4 v3, 0x3

    #@39
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@3c
    .line 247
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "z":[I
    const/4 v1, 0x5

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 56
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@14
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

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
    const/4 v3, 0x6

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
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@e
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    #@7
    .line 78
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

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
    const/16 v3, 0xc

    #@2
    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 84
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xb

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 86
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 88
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

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
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->zero([I)V

    #@9
    .line 93
    :goto_0
    return-void

    #@a
    .line 101
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

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
    const/16 v23, 0x6

    #@2
    aget v23, p0, v23

    #@4
    move/from16 v0, v23

    #@6
    int-to-long v0, v0

    #@7
    move-wide/from16 v26, v0

    #@9
    const-wide v28, 0xffffffffL

    #@e
    and-long v10, v26, v28

    #@10
    .local v10, "xx06":J
    const/16 v23, 0x7

    #@12
    aget v23, p0, v23

    #@14
    move/from16 v0, v23

    #@16
    int-to-long v0, v0

    #@17
    move-wide/from16 v26, v0

    #@19
    const-wide v28, 0xffffffffL

    #@1e
    and-long v12, v26, v28

    #@20
    .local v12, "xx07":J
    const/16 v23, 0x8

    #@22
    aget v23, p0, v23

    #@24
    move/from16 v0, v23

    #@26
    int-to-long v0, v0

    #@27
    move-wide/from16 v26, v0

    #@29
    const-wide v28, 0xffffffffL

    #@2e
    and-long v14, v26, v28

    #@30
    .line 108
    .local v14, "xx08":J
    const/16 v23, 0x9

    #@32
    aget v23, p0, v23

    #@34
    move/from16 v0, v23

    #@36
    int-to-long v0, v0

    #@37
    move-wide/from16 v26, v0

    #@39
    const-wide v28, 0xffffffffL

    #@3e
    and-long v16, v26, v28

    #@40
    .local v16, "xx09":J
    const/16 v23, 0xa

    #@42
    aget v23, p0, v23

    #@44
    move/from16 v0, v23

    #@46
    int-to-long v0, v0

    #@47
    move-wide/from16 v26, v0

    #@49
    const-wide v28, 0xffffffffL

    #@4e
    and-long v18, v26, v28

    #@50
    .local v18, "xx10":J
    const/16 v23, 0xb

    #@52
    aget v23, p0, v23

    #@54
    move/from16 v0, v23

    #@56
    int-to-long v0, v0

    #@57
    move-wide/from16 v26, v0

    #@59
    const-wide v28, 0xffffffffL

    #@5e
    and-long v20, v26, v28

    #@60
    .line 110
    .local v20, "xx11":J
    add-long v6, v10, v18

    #@62
    .line 111
    .local v6, "t0":J
    add-long v8, v12, v20

    #@64
    .line 114
    .local v8, "t1":J
    const/16 v23, 0x0

    #@66
    aget v23, p0, v23

    #@68
    move/from16 v0, v23

    #@6a
    int-to-long v0, v0

    #@6b
    move-wide/from16 v26, v0

    #@6d
    const-wide v28, 0xffffffffL

    #@72
    and-long v26, v26, v28

    #@74
    add-long v26, v26, v6

    #@76
    .line 113
    const-wide/16 v28, 0x0

    #@78
    .line 114
    add-long v4, v28, v26

    #@7a
    .line 115
    .local v4, "cc":J
    long-to-int v0, v4

    #@7b
    move/from16 v22, v0

    #@7d
    .line 116
    .local v22, "z0":I
    const/16 v23, 0x20

    #@7f
    shr-long v4, v4, v23

    #@81
    .line 117
    const/16 v23, 0x1

    #@83
    aget v23, p0, v23

    #@85
    move/from16 v0, v23

    #@87
    int-to-long v0, v0

    #@88
    move-wide/from16 v26, v0

    #@8a
    const-wide v28, 0xffffffffL

    #@8f
    and-long v26, v26, v28

    #@91
    add-long v26, v26, v8

    #@93
    add-long v4, v4, v26

    #@95
    .line 118
    long-to-int v0, v4

    #@96
    move/from16 v23, v0

    #@98
    const/16 v26, 0x1

    #@9a
    aput v23, p1, v26

    #@9c
    .line 119
    const/16 v23, 0x20

    #@9e
    shr-long v4, v4, v23

    #@a0
    .line 121
    add-long/2addr v6, v14

    #@a1
    .line 122
    add-long v8, v8, v16

    #@a3
    .line 124
    const/16 v23, 0x2

    #@a5
    aget v23, p0, v23

    #@a7
    move/from16 v0, v23

    #@a9
    int-to-long v0, v0

    #@aa
    move-wide/from16 v26, v0

    #@ac
    const-wide v28, 0xffffffffL

    #@b1
    and-long v26, v26, v28

    #@b3
    add-long v26, v26, v6

    #@b5
    add-long v4, v4, v26

    #@b7
    .line 125
    const-wide v26, 0xffffffffL

    #@bc
    and-long v24, v4, v26

    #@be
    .line 126
    .local v24, "z2":J
    const/16 v23, 0x20

    #@c0
    shr-long v4, v4, v23

    #@c2
    .line 127
    const/16 v23, 0x3

    #@c4
    aget v23, p0, v23

    #@c6
    move/from16 v0, v23

    #@c8
    int-to-long v0, v0

    #@c9
    move-wide/from16 v26, v0

    #@cb
    const-wide v28, 0xffffffffL

    #@d0
    and-long v26, v26, v28

    #@d2
    add-long v26, v26, v8

    #@d4
    add-long v4, v4, v26

    #@d6
    .line 128
    long-to-int v0, v4

    #@d7
    move/from16 v23, v0

    #@d9
    const/16 v26, 0x3

    #@db
    aput v23, p1, v26

    #@dd
    .line 129
    const/16 v23, 0x20

    #@df
    shr-long v4, v4, v23

    #@e1
    .line 131
    sub-long/2addr v6, v10

    #@e2
    .line 132
    sub-long/2addr v8, v12

    #@e3
    .line 134
    const/16 v23, 0x4

    #@e5
    aget v23, p0, v23

    #@e7
    move/from16 v0, v23

    #@e9
    int-to-long v0, v0

    #@ea
    move-wide/from16 v26, v0

    #@ec
    const-wide v28, 0xffffffffL

    #@f1
    and-long v26, v26, v28

    #@f3
    add-long v26, v26, v6

    #@f5
    add-long v4, v4, v26

    #@f7
    .line 135
    long-to-int v0, v4

    #@f8
    move/from16 v23, v0

    #@fa
    const/16 v26, 0x4

    #@fc
    aput v23, p1, v26

    #@fe
    .line 136
    const/16 v23, 0x20

    #@100
    shr-long v4, v4, v23

    #@102
    .line 137
    const/16 v23, 0x5

    #@104
    aget v23, p0, v23

    #@106
    move/from16 v0, v23

    #@108
    int-to-long v0, v0

    #@109
    move-wide/from16 v26, v0

    #@10b
    const-wide v28, 0xffffffffL

    #@110
    and-long v26, v26, v28

    #@112
    add-long v26, v26, v8

    #@114
    add-long v4, v4, v26

    #@116
    .line 138
    long-to-int v0, v4

    #@117
    move/from16 v23, v0

    #@119
    const/16 v26, 0x5

    #@11b
    aput v23, p1, v26

    #@11d
    .line 139
    const/16 v23, 0x20

    #@11f
    shr-long v4, v4, v23

    #@121
    .line 141
    add-long v24, v24, v4

    #@123
    .line 143
    move/from16 v0, v22

    #@125
    int-to-long v0, v0

    #@126
    move-wide/from16 v26, v0

    #@128
    const-wide v28, 0xffffffffL

    #@12d
    and-long v26, v26, v28

    #@12f
    add-long v4, v4, v26

    #@131
    .line 144
    long-to-int v0, v4

    #@132
    move/from16 v23, v0

    #@134
    const/16 v26, 0x0

    #@136
    aput v23, p1, v26

    #@138
    .line 145
    const/16 v23, 0x20

    #@13a
    shr-long v4, v4, v23

    #@13c
    .line 146
    const-wide/16 v26, 0x0

    #@13e
    cmp-long v23, v4, v26

    #@140
    if-eqz v23, :cond_0

    #@142
    .line 148
    const/16 v23, 0x1

    #@144
    aget v23, p1, v23

    #@146
    move/from16 v0, v23

    #@148
    int-to-long v0, v0

    #@149
    move-wide/from16 v26, v0

    #@14b
    const-wide v28, 0xffffffffL

    #@150
    and-long v26, v26, v28

    #@152
    add-long v4, v4, v26

    #@154
    .line 149
    long-to-int v0, v4

    #@155
    move/from16 v23, v0

    #@157
    const/16 v26, 0x1

    #@159
    aput v23, p1, v26

    #@15b
    .line 150
    const/16 v23, 0x20

    #@15d
    shr-long v26, v4, v23

    #@15f
    add-long v24, v24, v26

    #@161
    .line 152
    :cond_0
    move-wide/from16 v0, v24

    #@163
    long-to-int v0, v0

    #@164
    move/from16 v23, v0

    #@166
    const/16 v26, 0x2

    #@168
    aput v23, p1, v26

    #@16a
    .line 153
    const/16 v23, 0x20

    #@16c
    shr-long v4, v24, v23

    #@16e
    .line 157
    const-wide/16 v26, 0x0

    #@170
    cmp-long v23, v4, v26

    #@172
    if-eqz v23, :cond_2

    #@174
    const/16 v23, 0x6

    #@176
    const/16 v26, 0x3

    #@178
    move/from16 v0, v23

    #@17a
    move-object/from16 v1, p1

    #@17c
    move/from16 v2, v26

    #@17e
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@181
    move-result v23

    #@182
    if-eqz v23, :cond_2

    #@184
    .line 160
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    #@187
    .line 105
    :cond_1
    return-void

    #@188
    .line 158
    :cond_2
    const/16 v23, 0x5

    #@18a
    aget v23, p1, v23

    #@18c
    const/16 v26, -0x1

    #@18e
    move/from16 v0, v23

    #@190
    move/from16 v1, v26

    #@192
    if-ne v0, v1, :cond_1

    #@194
    sget-object v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@196
    move-object/from16 v0, p1

    #@198
    move-object/from16 v1, v23

    #@19a
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@19d
    move-result v23

    #@19e
    .line 157
    if-eqz v23, :cond_1

    #@1a0
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
    const/16 v7, 0x20

    #@5
    const-wide v8, 0xffffffffL

    #@a
    const/4 v6, 0x0

    #@b
    .line 166
    const-wide/16 v0, 0x0

    #@d
    .line 168
    .local v0, "cc":J
    if-eqz p0, :cond_1

    #@f
    .line 170
    int-to-long v4, p0

    #@10
    and-long v2, v4, v8

    #@12
    .line 172
    .local v2, "xx06":J
    aget v4, p1, v6

    #@14
    int-to-long v4, v4

    #@15
    and-long/2addr v4, v8

    #@16
    add-long/2addr v4, v2

    #@17
    add-long v0, v10, v4

    #@19
    .line 173
    long-to-int v4, v0

    #@1a
    aput v4, p1, v6

    #@1c
    .line 174
    shr-long/2addr v0, v7

    #@1d
    .line 175
    cmp-long v4, v0, v10

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 177
    aget v4, p1, v12

    #@23
    int-to-long v4, v4

    #@24
    and-long/2addr v4, v8

    #@25
    add-long/2addr v0, v4

    #@26
    .line 178
    long-to-int v4, v0

    #@27
    aput v4, p1, v12

    #@29
    .line 179
    shr-long/2addr v0, v7

    #@2a
    .line 181
    :cond_0
    const/4 v4, 0x2

    #@2b
    aget v4, p1, v4

    #@2d
    int-to-long v4, v4

    #@2e
    and-long/2addr v4, v8

    #@2f
    add-long/2addr v4, v2

    #@30
    add-long/2addr v0, v4

    #@31
    .line 182
    long-to-int v4, v0

    #@32
    const/4 v5, 0x2

    #@33
    aput v4, p1, v5

    #@35
    .line 183
    shr-long/2addr v0, v7

    #@36
    .line 188
    .end local v2    # "xx06":J
    :cond_1
    cmp-long v4, v0, v10

    #@38
    if-eqz v4, :cond_3

    #@3a
    const/4 v4, 0x6

    #@3b
    const/4 v5, 0x3

    #@3c
    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 191
    :goto_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    #@45
    .line 164
    :cond_2
    return-void

    #@46
    .line 189
    :cond_3
    const/4 v4, 0x5

    #@47
    aget v4, p1, v4

    #@49
    const/4 v5, -0x1

    #@4a
    if-ne v4, v5, :cond_2

    #@4c
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@4e
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@51
    move-result v4

    #@52
    .line 188
    if-eqz v4, :cond_2

    #@54
    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 197
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@7
    .line 199
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    #@a
    .line 195
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 206
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 207
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@7
    .line 208
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    #@a
    .line 210
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 212
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@11
    .line 213
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 202
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
    .line 269
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
    .line 270
    .local v0, "c":J
    long-to-int v2, v0

    #@13
    aput v2, p0, v7

    #@15
    .line 271
    shr-long/2addr v0, v6

    #@16
    .line 272
    const-wide/16 v2, 0x0

    #@18
    cmp-long v2, v0, v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 274
    aget v2, p0, v10

    #@1e
    int-to-long v2, v2

    #@1f
    and-long/2addr v2, v8

    #@20
    add-long/2addr v0, v2

    #@21
    .line 275
    long-to-int v2, v0

    #@22
    aput v2, p0, v10

    #@24
    .line 276
    shr-long/2addr v0, v6

    #@25
    .line 278
    :cond_0
    aget v2, p0, v11

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v8

    #@29
    const-wide/16 v4, 0x1

    #@2b
    sub-long/2addr v2, v4

    #@2c
    add-long/2addr v0, v2

    #@2d
    .line 279
    long-to-int v2, v0

    #@2e
    aput v2, p0, v11

    #@30
    .line 280
    shr-long/2addr v0, v6

    #@31
    .line 281
    const-wide/16 v2, 0x0

    #@33
    cmp-long v2, v0, v2

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 283
    const/4 v2, 0x6

    #@38
    const/4 v3, 0x3

    #@39
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@3c
    .line 267
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
    .line 219
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 220
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 222
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    #@9
    .line 217
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
    const/16 v3, 0xc

    #@2
    .line 228
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 229
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 231
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 233
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 226
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
    .line 240
    const/4 v1, 0x6

    #@2
    invoke-static {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@5
    move-result v0

    #@6
    .line 241
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x5

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 243
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    #@19
    .line 238
    :cond_1
    return-void
.end method
