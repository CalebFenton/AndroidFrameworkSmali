.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = -0x1

.field static final PExt:[I

.field private static final PExt15:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@9
    .line 15
    const/16 v0, 0x10

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@12
    .line 8
    return-void

    #@13
    .line 13
    nop

    #@14
    :array_0
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

    #@28
    .line 15
    :array_1
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
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x7

    #@7
    aget v1, p2, v1

    #@9
    const/4 v2, -0x1

    #@a
    if-ne v1, v2, :cond_1

    #@c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@e
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 26
    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

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
    const/16 v3, 0x10

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
    const/16 v1, 0xf

    #@a
    aget v1, p2, v1

    #@c
    and-int/lit8 v1, v1, -0x1

    #@e
    const/4 v2, -0x1

    #@f
    if-ne v1, v2, :cond_1

    #@11
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@13
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 35
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@1b
    invoke-static {v3, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@1e
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
    .line 41
    const/16 v1, 0x8

    #@2
    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@5
    move-result v0

    #@6
    .line 42
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x7

    #@9
    aget v1, p1, v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_1

    #@e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@10
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 44
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    #@19
    .line 39
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 11
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const-wide/16 v8, 0x1

    #@4
    const/16 v6, 0x20

    #@6
    const-wide v4, 0xffffffffL

    #@b
    .line 247
    aget v2, p0, v7

    #@d
    int-to-long v2, v2

    #@e
    and-long/2addr v2, v4

    #@f
    add-long v0, v2, v8

    #@11
    .line 248
    .local v0, "c":J
    long-to-int v2, v0

    #@12
    aput v2, p0, v7

    #@14
    .line 249
    shr-long/2addr v0, v6

    #@15
    .line 250
    const-wide/16 v2, 0x0

    #@17
    cmp-long v2, v0, v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 252
    aget v2, p0, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v4

    #@1f
    add-long/2addr v0, v2

    #@20
    .line 253
    long-to-int v2, v0

    #@21
    aput v2, p0, v10

    #@23
    .line 254
    shr-long/2addr v0, v6

    #@24
    .line 255
    const/4 v2, 0x2

    #@25
    aget v2, p0, v2

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v4

    #@29
    add-long/2addr v0, v2

    #@2a
    .line 256
    long-to-int v2, v0

    #@2b
    const/4 v3, 0x2

    #@2c
    aput v2, p0, v3

    #@2e
    .line 257
    shr-long/2addr v0, v6

    #@2f
    .line 259
    :cond_0
    const/4 v2, 0x3

    #@30
    aget v2, p0, v2

    #@32
    int-to-long v2, v2

    #@33
    and-long/2addr v2, v4

    #@34
    sub-long/2addr v2, v8

    #@35
    add-long/2addr v0, v2

    #@36
    .line 260
    long-to-int v2, v0

    #@37
    const/4 v3, 0x3

    #@38
    aput v2, p0, v3

    #@3a
    .line 261
    shr-long/2addr v0, v6

    #@3b
    .line 262
    const-wide/16 v2, 0x0

    #@3d
    cmp-long v2, v0, v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 264
    const/4 v2, 0x4

    #@42
    aget v2, p0, v2

    #@44
    int-to-long v2, v2

    #@45
    and-long/2addr v2, v4

    #@46
    add-long/2addr v0, v2

    #@47
    .line 265
    long-to-int v2, v0

    #@48
    const/4 v3, 0x4

    #@49
    aput v2, p0, v3

    #@4b
    .line 266
    shr-long/2addr v0, v6

    #@4c
    .line 267
    const/4 v2, 0x5

    #@4d
    aget v2, p0, v2

    #@4f
    int-to-long v2, v2

    #@50
    and-long/2addr v2, v4

    #@51
    add-long/2addr v0, v2

    #@52
    .line 268
    long-to-int v2, v0

    #@53
    const/4 v3, 0x5

    #@54
    aput v2, p0, v3

    #@56
    .line 269
    shr-long/2addr v0, v6

    #@57
    .line 271
    :cond_1
    const/4 v2, 0x6

    #@58
    aget v2, p0, v2

    #@5a
    int-to-long v2, v2

    #@5b
    and-long/2addr v2, v4

    #@5c
    sub-long/2addr v2, v8

    #@5d
    add-long/2addr v0, v2

    #@5e
    .line 272
    long-to-int v2, v0

    #@5f
    const/4 v3, 0x6

    #@60
    aput v2, p0, v3

    #@62
    .line 273
    shr-long/2addr v0, v6

    #@63
    .line 274
    const/4 v2, 0x7

    #@64
    aget v2, p0, v2

    #@66
    int-to-long v2, v2

    #@67
    and-long/2addr v2, v4

    #@68
    add-long/2addr v2, v8

    #@69
    add-long/2addr v0, v2

    #@6a
    .line 275
    long-to-int v2, v0

    #@6b
    const/4 v3, 0x7

    #@6c
    aput v2, p0, v3

    #@6e
    .line 245
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    #@3
    move-result-object v0

    #@4
    .line 51
    .local v0, "z":[I
    const/4 v1, 0x7

    #@5
    aget v1, v0, v1

    #@7
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 53
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@14
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    #@17
    .line 55
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 60
    aget v1, p0, v2

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 62
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@c
    .line 58
    :goto_0
    return-void

    #@d
    .line 66
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@f
    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    #@12
    move-result v0

    #@13
    .line 67
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@16
    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 73
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    #@7
    .line 75
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    #@a
    .line 71
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    #@5
    move-result v0

    #@6
    .line 81
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xf

    #@a
    aget v1, p2, v1

    #@c
    and-int/lit8 v1, v1, -0x1

    #@e
    const/4 v2, -0x1

    #@f
    if-ne v1, v2, :cond_1

    #@11
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@13
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 83
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@1b
    invoke-static {v3, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@1e
    .line 78
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->zero([I)V

    #@9
    .line 87
    :goto_0
    return-void

    #@a
    .line 95
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@c
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    #@f
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 40
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 101
    const/16 v36, 0x8

    #@2
    aget v36, p0, v36

    #@4
    move/from16 v0, v36

    #@6
    int-to-long v0, v0

    #@7
    move-wide/from16 v36, v0

    #@9
    const-wide v38, 0xffffffffL

    #@e
    and-long v20, v36, v38

    #@10
    .local v20, "xx08":J
    const/16 v36, 0x9

    #@12
    aget v36, p0, v36

    #@14
    move/from16 v0, v36

    #@16
    int-to-long v0, v0

    #@17
    move-wide/from16 v36, v0

    #@19
    const-wide v38, 0xffffffffL

    #@1e
    and-long v22, v36, v38

    #@20
    .local v22, "xx09":J
    const/16 v36, 0xa

    #@22
    aget v36, p0, v36

    #@24
    move/from16 v0, v36

    #@26
    int-to-long v0, v0

    #@27
    move-wide/from16 v36, v0

    #@29
    const-wide v38, 0xffffffffL

    #@2e
    and-long v24, v36, v38

    #@30
    .local v24, "xx10":J
    const/16 v36, 0xb

    #@32
    aget v36, p0, v36

    #@34
    move/from16 v0, v36

    #@36
    int-to-long v0, v0

    #@37
    move-wide/from16 v36, v0

    #@39
    const-wide v38, 0xffffffffL

    #@3e
    and-long v26, v36, v38

    #@40
    .line 102
    .local v26, "xx11":J
    const/16 v36, 0xc

    #@42
    aget v36, p0, v36

    #@44
    move/from16 v0, v36

    #@46
    int-to-long v0, v0

    #@47
    move-wide/from16 v36, v0

    #@49
    const-wide v38, 0xffffffffL

    #@4e
    and-long v28, v36, v38

    #@50
    .local v28, "xx12":J
    const/16 v36, 0xd

    #@52
    aget v36, p0, v36

    #@54
    move/from16 v0, v36

    #@56
    int-to-long v0, v0

    #@57
    move-wide/from16 v36, v0

    #@59
    const-wide v38, 0xffffffffL

    #@5e
    and-long v30, v36, v38

    #@60
    .local v30, "xx13":J
    const/16 v36, 0xe

    #@62
    aget v36, p0, v36

    #@64
    move/from16 v0, v36

    #@66
    int-to-long v0, v0

    #@67
    move-wide/from16 v36, v0

    #@69
    const-wide v38, 0xffffffffL

    #@6e
    and-long v32, v36, v38

    #@70
    .local v32, "xx14":J
    const/16 v36, 0xf

    #@72
    aget v36, p0, v36

    #@74
    move/from16 v0, v36

    #@76
    int-to-long v0, v0

    #@77
    move-wide/from16 v36, v0

    #@79
    const-wide v38, 0xffffffffL

    #@7e
    and-long v34, v36, v38

    #@80
    .line 104
    .local v34, "xx15":J
    const-wide/16 v4, 0x6

    #@82
    .line 106
    .local v4, "n":J
    const-wide/16 v36, 0x6

    #@84
    sub-long v20, v20, v36

    #@86
    .line 108
    add-long v6, v20, v22

    #@88
    .line 109
    .local v6, "t0":J
    add-long v8, v22, v24

    #@8a
    .line 110
    .local v8, "t1":J
    add-long v36, v24, v26

    #@8c
    sub-long v10, v36, v34

    #@8e
    .line 111
    .local v10, "t2":J
    add-long v12, v26, v28

    #@90
    .line 112
    .local v12, "t3":J
    add-long v14, v28, v30

    #@92
    .line 113
    .local v14, "t4":J
    add-long v16, v30, v32

    #@94
    .line 114
    .local v16, "t5":J
    add-long v18, v32, v34

    #@96
    .line 117
    .local v18, "t6":J
    const/16 v36, 0x0

    #@98
    aget v36, p0, v36

    #@9a
    move/from16 v0, v36

    #@9c
    int-to-long v0, v0

    #@9d
    move-wide/from16 v36, v0

    #@9f
    const-wide v38, 0xffffffffL

    #@a4
    and-long v36, v36, v38

    #@a6
    add-long v36, v36, v6

    #@a8
    sub-long v36, v36, v12

    #@aa
    sub-long v36, v36, v16

    #@ac
    .line 116
    const-wide/16 v38, 0x0

    #@ae
    .line 117
    add-long v2, v38, v36

    #@b0
    .line 118
    .local v2, "cc":J
    long-to-int v0, v2

    #@b1
    move/from16 v36, v0

    #@b3
    const/16 v37, 0x0

    #@b5
    aput v36, p1, v37

    #@b7
    .line 119
    const/16 v36, 0x20

    #@b9
    shr-long v2, v2, v36

    #@bb
    .line 120
    const/16 v36, 0x1

    #@bd
    aget v36, p0, v36

    #@bf
    move/from16 v0, v36

    #@c1
    int-to-long v0, v0

    #@c2
    move-wide/from16 v36, v0

    #@c4
    const-wide v38, 0xffffffffL

    #@c9
    and-long v36, v36, v38

    #@cb
    add-long v36, v36, v8

    #@cd
    sub-long v36, v36, v14

    #@cf
    sub-long v36, v36, v18

    #@d1
    add-long v2, v2, v36

    #@d3
    .line 121
    long-to-int v0, v2

    #@d4
    move/from16 v36, v0

    #@d6
    const/16 v37, 0x1

    #@d8
    aput v36, p1, v37

    #@da
    .line 122
    const/16 v36, 0x20

    #@dc
    shr-long v2, v2, v36

    #@de
    .line 123
    const/16 v36, 0x2

    #@e0
    aget v36, p0, v36

    #@e2
    move/from16 v0, v36

    #@e4
    int-to-long v0, v0

    #@e5
    move-wide/from16 v36, v0

    #@e7
    const-wide v38, 0xffffffffL

    #@ec
    and-long v36, v36, v38

    #@ee
    add-long v36, v36, v10

    #@f0
    sub-long v36, v36, v16

    #@f2
    add-long v2, v2, v36

    #@f4
    .line 124
    long-to-int v0, v2

    #@f5
    move/from16 v36, v0

    #@f7
    const/16 v37, 0x2

    #@f9
    aput v36, p1, v37

    #@fb
    .line 125
    const/16 v36, 0x20

    #@fd
    shr-long v2, v2, v36

    #@ff
    .line 126
    const/16 v36, 0x3

    #@101
    aget v36, p0, v36

    #@103
    move/from16 v0, v36

    #@105
    int-to-long v0, v0

    #@106
    move-wide/from16 v36, v0

    #@108
    const-wide v38, 0xffffffffL

    #@10d
    and-long v36, v36, v38

    #@10f
    const/16 v38, 0x1

    #@111
    shl-long v38, v12, v38

    #@113
    add-long v36, v36, v38

    #@115
    add-long v36, v36, v30

    #@117
    sub-long v36, v36, v34

    #@119
    sub-long v36, v36, v6

    #@11b
    add-long v2, v2, v36

    #@11d
    .line 127
    long-to-int v0, v2

    #@11e
    move/from16 v36, v0

    #@120
    const/16 v37, 0x3

    #@122
    aput v36, p1, v37

    #@124
    .line 128
    const/16 v36, 0x20

    #@126
    shr-long v2, v2, v36

    #@128
    .line 129
    const/16 v36, 0x4

    #@12a
    aget v36, p0, v36

    #@12c
    move/from16 v0, v36

    #@12e
    int-to-long v0, v0

    #@12f
    move-wide/from16 v36, v0

    #@131
    const-wide v38, 0xffffffffL

    #@136
    and-long v36, v36, v38

    #@138
    const/16 v38, 0x1

    #@13a
    shl-long v38, v14, v38

    #@13c
    add-long v36, v36, v38

    #@13e
    add-long v36, v36, v32

    #@140
    sub-long v36, v36, v8

    #@142
    add-long v2, v2, v36

    #@144
    .line 130
    long-to-int v0, v2

    #@145
    move/from16 v36, v0

    #@147
    const/16 v37, 0x4

    #@149
    aput v36, p1, v37

    #@14b
    .line 131
    const/16 v36, 0x20

    #@14d
    shr-long v2, v2, v36

    #@14f
    .line 132
    const/16 v36, 0x5

    #@151
    aget v36, p0, v36

    #@153
    move/from16 v0, v36

    #@155
    int-to-long v0, v0

    #@156
    move-wide/from16 v36, v0

    #@158
    const-wide v38, 0xffffffffL

    #@15d
    and-long v36, v36, v38

    #@15f
    const/16 v38, 0x1

    #@161
    shl-long v38, v16, v38

    #@163
    add-long v36, v36, v38

    #@165
    sub-long v36, v36, v10

    #@167
    add-long v2, v2, v36

    #@169
    .line 133
    long-to-int v0, v2

    #@16a
    move/from16 v36, v0

    #@16c
    const/16 v37, 0x5

    #@16e
    aput v36, p1, v37

    #@170
    .line 134
    const/16 v36, 0x20

    #@172
    shr-long v2, v2, v36

    #@174
    .line 135
    const/16 v36, 0x6

    #@176
    aget v36, p0, v36

    #@178
    move/from16 v0, v36

    #@17a
    int-to-long v0, v0

    #@17b
    move-wide/from16 v36, v0

    #@17d
    const-wide v38, 0xffffffffL

    #@182
    and-long v36, v36, v38

    #@184
    const/16 v38, 0x1

    #@186
    shl-long v38, v18, v38

    #@188
    add-long v36, v36, v38

    #@18a
    add-long v36, v36, v16

    #@18c
    sub-long v36, v36, v6

    #@18e
    add-long v2, v2, v36

    #@190
    .line 136
    long-to-int v0, v2

    #@191
    move/from16 v36, v0

    #@193
    const/16 v37, 0x6

    #@195
    aput v36, p1, v37

    #@197
    .line 137
    const/16 v36, 0x20

    #@199
    shr-long v2, v2, v36

    #@19b
    .line 138
    const/16 v36, 0x7

    #@19d
    aget v36, p0, v36

    #@19f
    move/from16 v0, v36

    #@1a1
    int-to-long v0, v0

    #@1a2
    move-wide/from16 v36, v0

    #@1a4
    const-wide v38, 0xffffffffL

    #@1a9
    and-long v36, v36, v38

    #@1ab
    const/16 v38, 0x1

    #@1ad
    shl-long v38, v34, v38

    #@1af
    add-long v36, v36, v38

    #@1b1
    add-long v36, v36, v20

    #@1b3
    sub-long v36, v36, v10

    #@1b5
    sub-long v36, v36, v14

    #@1b7
    add-long v2, v2, v36

    #@1b9
    .line 139
    long-to-int v0, v2

    #@1ba
    move/from16 v36, v0

    #@1bc
    const/16 v37, 0x7

    #@1be
    aput v36, p1, v37

    #@1c0
    .line 140
    const/16 v36, 0x20

    #@1c2
    shr-long v2, v2, v36

    #@1c4
    .line 141
    const-wide/16 v36, 0x6

    #@1c6
    add-long v2, v2, v36

    #@1c8
    .line 145
    long-to-int v0, v2

    #@1c9
    move/from16 v36, v0

    #@1cb
    move/from16 v0, v36

    #@1cd
    move-object/from16 v1, p1

    #@1cf
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    #@1d2
    .line 99
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v12, 0x7

    #@1
    const/4 v9, 0x0

    #@2
    const-wide/16 v10, 0x0

    #@4
    const/16 v8, 0x20

    #@6
    const-wide v6, 0xffffffffL

    #@b
    .line 150
    const-wide/16 v0, 0x0

    #@d
    .line 152
    .local v0, "cc":J
    if-eqz p0, :cond_2

    #@f
    .line 154
    int-to-long v4, p0

    #@10
    and-long v2, v4, v6

    #@12
    .line 156
    .local v2, "xx08":J
    aget v4, p1, v9

    #@14
    int-to-long v4, v4

    #@15
    and-long/2addr v4, v6

    #@16
    add-long/2addr v4, v2

    #@17
    add-long v0, v10, v4

    #@19
    .line 157
    long-to-int v4, v0

    #@1a
    aput v4, p1, v9

    #@1c
    .line 158
    shr-long/2addr v0, v8

    #@1d
    .line 159
    cmp-long v4, v0, v10

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 161
    const/4 v4, 0x1

    #@22
    aget v4, p1, v4

    #@24
    int-to-long v4, v4

    #@25
    and-long/2addr v4, v6

    #@26
    add-long/2addr v0, v4

    #@27
    .line 162
    long-to-int v4, v0

    #@28
    const/4 v5, 0x1

    #@29
    aput v4, p1, v5

    #@2b
    .line 163
    shr-long/2addr v0, v8

    #@2c
    .line 164
    const/4 v4, 0x2

    #@2d
    aget v4, p1, v4

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    add-long/2addr v0, v4

    #@32
    .line 165
    long-to-int v4, v0

    #@33
    const/4 v5, 0x2

    #@34
    aput v4, p1, v5

    #@36
    .line 166
    shr-long/2addr v0, v8

    #@37
    .line 168
    :cond_0
    const/4 v4, 0x3

    #@38
    aget v4, p1, v4

    #@3a
    int-to-long v4, v4

    #@3b
    and-long/2addr v4, v6

    #@3c
    sub-long/2addr v4, v2

    #@3d
    add-long/2addr v0, v4

    #@3e
    .line 169
    long-to-int v4, v0

    #@3f
    const/4 v5, 0x3

    #@40
    aput v4, p1, v5

    #@42
    .line 170
    shr-long/2addr v0, v8

    #@43
    .line 171
    cmp-long v4, v0, v10

    #@45
    if-eqz v4, :cond_1

    #@47
    .line 173
    const/4 v4, 0x4

    #@48
    aget v4, p1, v4

    #@4a
    int-to-long v4, v4

    #@4b
    and-long/2addr v4, v6

    #@4c
    add-long/2addr v0, v4

    #@4d
    .line 174
    long-to-int v4, v0

    #@4e
    const/4 v5, 0x4

    #@4f
    aput v4, p1, v5

    #@51
    .line 175
    shr-long/2addr v0, v8

    #@52
    .line 176
    const/4 v4, 0x5

    #@53
    aget v4, p1, v4

    #@55
    int-to-long v4, v4

    #@56
    and-long/2addr v4, v6

    #@57
    add-long/2addr v0, v4

    #@58
    .line 177
    long-to-int v4, v0

    #@59
    const/4 v5, 0x5

    #@5a
    aput v4, p1, v5

    #@5c
    .line 178
    shr-long/2addr v0, v8

    #@5d
    .line 180
    :cond_1
    const/4 v4, 0x6

    #@5e
    aget v4, p1, v4

    #@60
    int-to-long v4, v4

    #@61
    and-long/2addr v4, v6

    #@62
    sub-long/2addr v4, v2

    #@63
    add-long/2addr v0, v4

    #@64
    .line 181
    long-to-int v4, v0

    #@65
    const/4 v5, 0x6

    #@66
    aput v4, p1, v5

    #@68
    .line 182
    shr-long/2addr v0, v8

    #@69
    .line 183
    aget v4, p1, v12

    #@6b
    int-to-long v4, v4

    #@6c
    and-long/2addr v4, v6

    #@6d
    add-long/2addr v4, v2

    #@6e
    add-long/2addr v0, v4

    #@6f
    .line 184
    long-to-int v4, v0

    #@70
    aput v4, p1, v12

    #@72
    .line 185
    shr-long/2addr v0, v8

    #@73
    .line 190
    .end local v2    # "xx08":J
    :cond_2
    cmp-long v4, v0, v10

    #@75
    if-nez v4, :cond_3

    #@77
    aget v4, p1, v12

    #@79
    const/4 v5, -0x1

    #@7a
    if-ne v4, v5, :cond_4

    #@7c
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@7e
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_4

    #@84
    .line 192
    :cond_3
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    #@87
    .line 148
    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 198
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@7
    .line 200
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    #@a
    .line 196
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 207
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@3
    move-result-object v0

    #@4
    .line 208
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@7
    .line 209
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    #@a
    .line 211
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@c
    if-lez p1, :cond_0

    #@e
    .line 213
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@11
    .line 214
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    #@14
    goto :goto_0

    #@15
    .line 203
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 11
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const-wide/16 v8, 0x1

    #@4
    const/16 v6, 0x20

    #@6
    const-wide v4, 0xffffffffL

    #@b
    .line 281
    aget v2, p0, v7

    #@d
    int-to-long v2, v2

    #@e
    and-long/2addr v2, v4

    #@f
    sub-long v0, v2, v8

    #@11
    .line 282
    .local v0, "c":J
    long-to-int v2, v0

    #@12
    aput v2, p0, v7

    #@14
    .line 283
    shr-long/2addr v0, v6

    #@15
    .line 284
    const-wide/16 v2, 0x0

    #@17
    cmp-long v2, v0, v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 286
    aget v2, p0, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v4

    #@1f
    add-long/2addr v0, v2

    #@20
    .line 287
    long-to-int v2, v0

    #@21
    aput v2, p0, v10

    #@23
    .line 288
    shr-long/2addr v0, v6

    #@24
    .line 289
    const/4 v2, 0x2

    #@25
    aget v2, p0, v2

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v4

    #@29
    add-long/2addr v0, v2

    #@2a
    .line 290
    long-to-int v2, v0

    #@2b
    const/4 v3, 0x2

    #@2c
    aput v2, p0, v3

    #@2e
    .line 291
    shr-long/2addr v0, v6

    #@2f
    .line 293
    :cond_0
    const/4 v2, 0x3

    #@30
    aget v2, p0, v2

    #@32
    int-to-long v2, v2

    #@33
    and-long/2addr v2, v4

    #@34
    add-long/2addr v2, v8

    #@35
    add-long/2addr v0, v2

    #@36
    .line 294
    long-to-int v2, v0

    #@37
    const/4 v3, 0x3

    #@38
    aput v2, p0, v3

    #@3a
    .line 295
    shr-long/2addr v0, v6

    #@3b
    .line 296
    const-wide/16 v2, 0x0

    #@3d
    cmp-long v2, v0, v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 298
    const/4 v2, 0x4

    #@42
    aget v2, p0, v2

    #@44
    int-to-long v2, v2

    #@45
    and-long/2addr v2, v4

    #@46
    add-long/2addr v0, v2

    #@47
    .line 299
    long-to-int v2, v0

    #@48
    const/4 v3, 0x4

    #@49
    aput v2, p0, v3

    #@4b
    .line 300
    shr-long/2addr v0, v6

    #@4c
    .line 301
    const/4 v2, 0x5

    #@4d
    aget v2, p0, v2

    #@4f
    int-to-long v2, v2

    #@50
    and-long/2addr v2, v4

    #@51
    add-long/2addr v0, v2

    #@52
    .line 302
    long-to-int v2, v0

    #@53
    const/4 v3, 0x5

    #@54
    aput v2, p0, v3

    #@56
    .line 303
    shr-long/2addr v0, v6

    #@57
    .line 305
    :cond_1
    const/4 v2, 0x6

    #@58
    aget v2, p0, v2

    #@5a
    int-to-long v2, v2

    #@5b
    and-long/2addr v2, v4

    #@5c
    add-long/2addr v2, v8

    #@5d
    add-long/2addr v0, v2

    #@5e
    .line 306
    long-to-int v2, v0

    #@5f
    const/4 v3, 0x6

    #@60
    aput v2, p0, v3

    #@62
    .line 307
    shr-long/2addr v0, v6

    #@63
    .line 308
    const/4 v2, 0x7

    #@64
    aget v2, p0, v2

    #@66
    int-to-long v2, v2

    #@67
    and-long/2addr v2, v4

    #@68
    sub-long/2addr v2, v8

    #@69
    add-long/2addr v0, v2

    #@6a
    .line 309
    long-to-int v2, v0

    #@6b
    const/4 v3, 0x7

    #@6c
    aput v2, p0, v3

    #@6e
    .line 279
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 220
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    #@3
    move-result v0

    #@4
    .line 221
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@6
    .line 223
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    #@9
    .line 218
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 229
    invoke-static {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 230
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 232
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    #@a
    invoke-static {v2, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@d
    .line 227
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
    .line 238
    const/16 v1, 0x8

    #@3
    invoke-static {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@6
    move-result v0

    #@7
    .line 239
    .local v0, "c":I
    if-nez v0, :cond_0

    #@9
    const/4 v1, 0x7

    #@a
    aget v1, p1, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    #@11
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 241
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    #@1a
    .line 236
    :cond_1
    return-void
.end method
