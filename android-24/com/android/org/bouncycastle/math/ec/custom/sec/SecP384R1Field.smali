.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P11:I = -0x1

.field static final PExt:[I

.field private static final PExt23:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@9
    .line 15
    const/16 v0, 0x18

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    #@12
    .line 18
    const/16 v0, 0x11

    #@14
    new-array v0, v0, [I

    #@16
    fill-array-data v0, :array_2

    #@19
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@1b
    .line 8
    return-void

    #@1c
    .line 13
    :array_0
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

    #@38
    .line 15
    :array_1
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

    #@6c
    .line 18
    :array_2
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
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 26
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 27
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
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 29
    :cond_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    #@1a
    .line 24
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
    const/16 v3, 0x18

    #@2
    .line 35
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 36
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0x17

    #@a
    aget v1, p2, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    #@11
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 38
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@19
    array-length v1, v1

    #@1a
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@1c
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 40
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@24
    array-length v1, v1

    #@25
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@28
    .line 33
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 47
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@5
    move-result v0

    #@6
    .line 48
    .local v0, "c":I
    if-nez v0, :cond_0

    #@8
    const/16 v1, 0xb

    #@a
    aget v1, p1, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@11
    invoke-static {v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 50
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    #@1a
    .line 45
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
    const/4 v5, 0x0

    #@2
    const-wide/16 v8, 0x1

    #@4
    const-wide v6, 0xffffffffL

    #@9
    const/16 v4, 0x20

    #@b
    .line 246
    aget v2, p0, v5

    #@d
    int-to-long v2, v2

    #@e
    and-long/2addr v2, v6

    #@f
    add-long v0, v2, v8

    #@11
    .line 247
    .local v0, "c":J
    long-to-int v2, v0

    #@12
    aput v2, p0, v5

    #@14
    .line 248
    shr-long/2addr v0, v4

    #@15
    .line 249
    aget v2, p0, v10

    #@17
    int-to-long v2, v2

    #@18
    and-long/2addr v2, v6

    #@19
    sub-long/2addr v2, v8

    #@1a
    add-long/2addr v0, v2

    #@1b
    .line 250
    long-to-int v2, v0

    #@1c
    aput v2, p0, v10

    #@1e
    .line 251
    shr-long/2addr v0, v4

    #@1f
    .line 252
    const-wide/16 v2, 0x0

    #@21
    cmp-long v2, v0, v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 254
    const/4 v2, 0x2

    #@26
    aget v2, p0, v2

    #@28
    int-to-long v2, v2

    #@29
    and-long/2addr v2, v6

    #@2a
    add-long/2addr v0, v2

    #@2b
    .line 255
    long-to-int v2, v0

    #@2c
    const/4 v3, 0x2

    #@2d
    aput v2, p0, v3

    #@2f
    .line 256
    shr-long/2addr v0, v4

    #@30
    .line 258
    :cond_0
    const/4 v2, 0x3

    #@31
    aget v2, p0, v2

    #@33
    int-to-long v2, v2

    #@34
    and-long/2addr v2, v6

    #@35
    add-long/2addr v2, v8

    #@36
    add-long/2addr v0, v2

    #@37
    .line 259
    long-to-int v2, v0

    #@38
    const/4 v3, 0x3

    #@39
    aput v2, p0, v3

    #@3b
    .line 260
    shr-long/2addr v0, v4

    #@3c
    .line 261
    const/4 v2, 0x4

    #@3d
    aget v2, p0, v2

    #@3f
    int-to-long v2, v2

    #@40
    and-long/2addr v2, v6

    #@41
    add-long/2addr v2, v8

    #@42
    add-long/2addr v0, v2

    #@43
    .line 262
    long-to-int v2, v0

    #@44
    const/4 v3, 0x4

    #@45
    aput v2, p0, v3

    #@47
    .line 263
    shr-long/2addr v0, v4

    #@48
    .line 264
    const-wide/16 v2, 0x0

    #@4a
    cmp-long v2, v0, v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 266
    const/16 v2, 0xc

    #@50
    const/4 v3, 0x5

    #@51
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@54
    .line 244
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 56
    const/16 v1, 0x180

    #@4
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    #@7
    move-result-object v0

    #@8
    .line 57
    .local v0, "z":[I
    const/16 v1, 0xb

    #@a
    aget v1, v0, v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_0

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@11
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 59
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@19
    invoke-static {v3, v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@1c
    .line 61
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    const/4 v2, 0x0

    #@3
    .line 66
    aget v1, p0, v2

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 68
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@c
    .line 64
    :goto_0
    return-void

    #@d
    .line 72
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@f
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@12
    move-result v0

    #@13
    .line 73
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    #@16
    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 79
    const/16 v1, 0x18

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 80
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    #@9
    .line 81
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@c
    .line 77
    return-void
.end method

.method public static negate([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v1, 0xc

    #@2
    .line 86
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 88
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    #@b
    .line 84
    :goto_0
    return-void

    #@c
    .line 92
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@e
    invoke-static {v1, v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@11
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 40
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 98
    const/16 v36, 0x10

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
    .local v20, "xx16":J
    const/16 v36, 0x11

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
    .local v22, "xx17":J
    const/16 v36, 0x12

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
    .local v24, "xx18":J
    const/16 v36, 0x13

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
    .line 99
    .local v26, "xx19":J
    const/16 v36, 0x14

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
    .local v28, "xx20":J
    const/16 v36, 0x15

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
    .local v30, "xx21":J
    const/16 v36, 0x16

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
    .local v32, "xx22":J
    const/16 v36, 0x17

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
    .line 101
    .local v34, "xx23":J
    const-wide/16 v4, 0x1

    #@82
    .line 103
    .local v4, "n":J
    const/16 v36, 0xc

    #@84
    aget v36, p0, v36

    #@86
    move/from16 v0, v36

    #@88
    int-to-long v0, v0

    #@89
    move-wide/from16 v36, v0

    #@8b
    const-wide v38, 0xffffffffL

    #@90
    and-long v36, v36, v38

    #@92
    add-long v36, v36, v28

    #@94
    const-wide/16 v38, 0x1

    #@96
    sub-long v6, v36, v38

    #@98
    .line 104
    .local v6, "t0":J
    const/16 v36, 0xd

    #@9a
    aget v36, p0, v36

    #@9c
    move/from16 v0, v36

    #@9e
    int-to-long v0, v0

    #@9f
    move-wide/from16 v36, v0

    #@a1
    const-wide v38, 0xffffffffL

    #@a6
    and-long v36, v36, v38

    #@a8
    add-long v8, v36, v32

    #@aa
    .line 105
    .local v8, "t1":J
    const/16 v36, 0xe

    #@ac
    aget v36, p0, v36

    #@ae
    move/from16 v0, v36

    #@b0
    int-to-long v0, v0

    #@b1
    move-wide/from16 v36, v0

    #@b3
    const-wide v38, 0xffffffffL

    #@b8
    and-long v36, v36, v38

    #@ba
    add-long v36, v36, v32

    #@bc
    add-long v10, v36, v34

    #@be
    .line 106
    .local v10, "t2":J
    const/16 v36, 0xf

    #@c0
    aget v36, p0, v36

    #@c2
    move/from16 v0, v36

    #@c4
    int-to-long v0, v0

    #@c5
    move-wide/from16 v36, v0

    #@c7
    const-wide v38, 0xffffffffL

    #@cc
    and-long v36, v36, v38

    #@ce
    add-long v12, v36, v34

    #@d0
    .line 107
    .local v12, "t3":J
    add-long v14, v22, v30

    #@d2
    .line 108
    .local v14, "t4":J
    sub-long v16, v30, v34

    #@d4
    .line 109
    .local v16, "t5":J
    sub-long v18, v32, v34

    #@d6
    .line 112
    .local v18, "t6":J
    const/16 v36, 0x0

    #@d8
    aget v36, p0, v36

    #@da
    move/from16 v0, v36

    #@dc
    int-to-long v0, v0

    #@dd
    move-wide/from16 v36, v0

    #@df
    const-wide v38, 0xffffffffL

    #@e4
    and-long v36, v36, v38

    #@e6
    add-long v36, v36, v6

    #@e8
    add-long v36, v36, v16

    #@ea
    .line 111
    const-wide/16 v38, 0x0

    #@ec
    .line 112
    add-long v2, v38, v36

    #@ee
    .line 113
    .local v2, "cc":J
    long-to-int v0, v2

    #@ef
    move/from16 v36, v0

    #@f1
    const/16 v37, 0x0

    #@f3
    aput v36, p1, v37

    #@f5
    .line 114
    const/16 v36, 0x20

    #@f7
    shr-long v2, v2, v36

    #@f9
    .line 115
    const/16 v36, 0x1

    #@fb
    aget v36, p0, v36

    #@fd
    move/from16 v0, v36

    #@ff
    int-to-long v0, v0

    #@100
    move-wide/from16 v36, v0

    #@102
    const-wide v38, 0xffffffffL

    #@107
    and-long v36, v36, v38

    #@109
    add-long v36, v36, v34

    #@10b
    sub-long v36, v36, v6

    #@10d
    add-long v36, v36, v8

    #@10f
    add-long v2, v2, v36

    #@111
    .line 116
    long-to-int v0, v2

    #@112
    move/from16 v36, v0

    #@114
    const/16 v37, 0x1

    #@116
    aput v36, p1, v37

    #@118
    .line 117
    const/16 v36, 0x20

    #@11a
    shr-long v2, v2, v36

    #@11c
    .line 118
    const/16 v36, 0x2

    #@11e
    aget v36, p0, v36

    #@120
    move/from16 v0, v36

    #@122
    int-to-long v0, v0

    #@123
    move-wide/from16 v36, v0

    #@125
    const-wide v38, 0xffffffffL

    #@12a
    and-long v36, v36, v38

    #@12c
    sub-long v36, v36, v30

    #@12e
    sub-long v36, v36, v8

    #@130
    add-long v36, v36, v10

    #@132
    add-long v2, v2, v36

    #@134
    .line 119
    long-to-int v0, v2

    #@135
    move/from16 v36, v0

    #@137
    const/16 v37, 0x2

    #@139
    aput v36, p1, v37

    #@13b
    .line 120
    const/16 v36, 0x20

    #@13d
    shr-long v2, v2, v36

    #@13f
    .line 121
    const/16 v36, 0x3

    #@141
    aget v36, p0, v36

    #@143
    move/from16 v0, v36

    #@145
    int-to-long v0, v0

    #@146
    move-wide/from16 v36, v0

    #@148
    const-wide v38, 0xffffffffL

    #@14d
    and-long v36, v36, v38

    #@14f
    add-long v36, v36, v6

    #@151
    sub-long v36, v36, v10

    #@153
    add-long v36, v36, v12

    #@155
    add-long v36, v36, v16

    #@157
    add-long v2, v2, v36

    #@159
    .line 122
    long-to-int v0, v2

    #@15a
    move/from16 v36, v0

    #@15c
    const/16 v37, 0x3

    #@15e
    aput v36, p1, v37

    #@160
    .line 123
    const/16 v36, 0x20

    #@162
    shr-long v2, v2, v36

    #@164
    .line 124
    const/16 v36, 0x4

    #@166
    aget v36, p0, v36

    #@168
    move/from16 v0, v36

    #@16a
    int-to-long v0, v0

    #@16b
    move-wide/from16 v36, v0

    #@16d
    const-wide v38, 0xffffffffL

    #@172
    and-long v36, v36, v38

    #@174
    add-long v36, v36, v20

    #@176
    add-long v36, v36, v30

    #@178
    add-long v36, v36, v6

    #@17a
    add-long v36, v36, v8

    #@17c
    sub-long v36, v36, v12

    #@17e
    add-long v36, v36, v16

    #@180
    add-long v2, v2, v36

    #@182
    .line 125
    long-to-int v0, v2

    #@183
    move/from16 v36, v0

    #@185
    const/16 v37, 0x4

    #@187
    aput v36, p1, v37

    #@189
    .line 126
    const/16 v36, 0x20

    #@18b
    shr-long v2, v2, v36

    #@18d
    .line 127
    const/16 v36, 0x5

    #@18f
    aget v36, p0, v36

    #@191
    move/from16 v0, v36

    #@193
    int-to-long v0, v0

    #@194
    move-wide/from16 v36, v0

    #@196
    const-wide v38, 0xffffffffL

    #@19b
    and-long v36, v36, v38

    #@19d
    sub-long v36, v36, v20

    #@19f
    add-long v36, v36, v8

    #@1a1
    add-long v36, v36, v10

    #@1a3
    add-long v36, v36, v14

    #@1a5
    add-long v2, v2, v36

    #@1a7
    .line 128
    long-to-int v0, v2

    #@1a8
    move/from16 v36, v0

    #@1aa
    const/16 v37, 0x5

    #@1ac
    aput v36, p1, v37

    #@1ae
    .line 129
    const/16 v36, 0x20

    #@1b0
    shr-long v2, v2, v36

    #@1b2
    .line 130
    const/16 v36, 0x6

    #@1b4
    aget v36, p0, v36

    #@1b6
    move/from16 v0, v36

    #@1b8
    int-to-long v0, v0

    #@1b9
    move-wide/from16 v36, v0

    #@1bb
    const-wide v38, 0xffffffffL

    #@1c0
    and-long v36, v36, v38

    #@1c2
    add-long v36, v36, v24

    #@1c4
    sub-long v36, v36, v22

    #@1c6
    add-long v36, v36, v10

    #@1c8
    add-long v36, v36, v12

    #@1ca
    add-long v2, v2, v36

    #@1cc
    .line 131
    long-to-int v0, v2

    #@1cd
    move/from16 v36, v0

    #@1cf
    const/16 v37, 0x6

    #@1d1
    aput v36, p1, v37

    #@1d3
    .line 132
    const/16 v36, 0x20

    #@1d5
    shr-long v2, v2, v36

    #@1d7
    .line 133
    const/16 v36, 0x7

    #@1d9
    aget v36, p0, v36

    #@1db
    move/from16 v0, v36

    #@1dd
    int-to-long v0, v0

    #@1de
    move-wide/from16 v36, v0

    #@1e0
    const-wide v38, 0xffffffffL

    #@1e5
    and-long v36, v36, v38

    #@1e7
    add-long v36, v36, v20

    #@1e9
    add-long v36, v36, v26

    #@1eb
    sub-long v36, v36, v24

    #@1ed
    add-long v36, v36, v12

    #@1ef
    add-long v2, v2, v36

    #@1f1
    .line 134
    long-to-int v0, v2

    #@1f2
    move/from16 v36, v0

    #@1f4
    const/16 v37, 0x7

    #@1f6
    aput v36, p1, v37

    #@1f8
    .line 135
    const/16 v36, 0x20

    #@1fa
    shr-long v2, v2, v36

    #@1fc
    .line 136
    const/16 v36, 0x8

    #@1fe
    aget v36, p0, v36

    #@200
    move/from16 v0, v36

    #@202
    int-to-long v0, v0

    #@203
    move-wide/from16 v36, v0

    #@205
    const-wide v38, 0xffffffffL

    #@20a
    and-long v36, v36, v38

    #@20c
    add-long v36, v36, v20

    #@20e
    add-long v36, v36, v22

    #@210
    add-long v36, v36, v28

    #@212
    sub-long v36, v36, v26

    #@214
    add-long v2, v2, v36

    #@216
    .line 137
    long-to-int v0, v2

    #@217
    move/from16 v36, v0

    #@219
    const/16 v37, 0x8

    #@21b
    aput v36, p1, v37

    #@21d
    .line 138
    const/16 v36, 0x20

    #@21f
    shr-long v2, v2, v36

    #@221
    .line 139
    const/16 v36, 0x9

    #@223
    aget v36, p0, v36

    #@225
    move/from16 v0, v36

    #@227
    int-to-long v0, v0

    #@228
    move-wide/from16 v36, v0

    #@22a
    const-wide v38, 0xffffffffL

    #@22f
    and-long v36, v36, v38

    #@231
    add-long v36, v36, v24

    #@233
    sub-long v36, v36, v28

    #@235
    add-long v36, v36, v14

    #@237
    add-long v2, v2, v36

    #@239
    .line 140
    long-to-int v0, v2

    #@23a
    move/from16 v36, v0

    #@23c
    const/16 v37, 0x9

    #@23e
    aput v36, p1, v37

    #@240
    .line 141
    const/16 v36, 0x20

    #@242
    shr-long v2, v2, v36

    #@244
    .line 142
    const/16 v36, 0xa

    #@246
    aget v36, p0, v36

    #@248
    move/from16 v0, v36

    #@24a
    int-to-long v0, v0

    #@24b
    move-wide/from16 v36, v0

    #@24d
    const-wide v38, 0xffffffffL

    #@252
    and-long v36, v36, v38

    #@254
    add-long v36, v36, v24

    #@256
    add-long v36, v36, v26

    #@258
    sub-long v36, v36, v16

    #@25a
    add-long v36, v36, v18

    #@25c
    add-long v2, v2, v36

    #@25e
    .line 143
    long-to-int v0, v2

    #@25f
    move/from16 v36, v0

    #@261
    const/16 v37, 0xa

    #@263
    aput v36, p1, v37

    #@265
    .line 144
    const/16 v36, 0x20

    #@267
    shr-long v2, v2, v36

    #@269
    .line 145
    const/16 v36, 0xb

    #@26b
    aget v36, p0, v36

    #@26d
    move/from16 v0, v36

    #@26f
    int-to-long v0, v0

    #@270
    move-wide/from16 v36, v0

    #@272
    const-wide v38, 0xffffffffL

    #@277
    and-long v36, v36, v38

    #@279
    add-long v36, v36, v26

    #@27b
    add-long v36, v36, v28

    #@27d
    sub-long v36, v36, v18

    #@27f
    add-long v2, v2, v36

    #@281
    .line 146
    long-to-int v0, v2

    #@282
    move/from16 v36, v0

    #@284
    const/16 v37, 0xb

    #@286
    aput v36, p1, v37

    #@288
    .line 147
    const/16 v36, 0x20

    #@28a
    shr-long v2, v2, v36

    #@28c
    .line 148
    const-wide/16 v36, 0x1

    #@28e
    add-long v2, v2, v36

    #@290
    .line 152
    long-to-int v0, v2

    #@291
    move/from16 v36, v0

    #@293
    move/from16 v0, v36

    #@295
    move-object/from16 v1, p1

    #@297
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    #@29a
    .line 96
    return-void
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
    const/4 v9, 0x0

    #@4
    const/16 v8, 0x20

    #@6
    const-wide v6, 0xffffffffL

    #@b
    .line 157
    const-wide/16 v0, 0x0

    #@d
    .line 159
    .local v0, "cc":J
    if-eqz p0, :cond_1

    #@f
    .line 161
    int-to-long v4, p0

    #@10
    and-long v2, v4, v6

    #@12
    .line 163
    .local v2, "xx12":J
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
    .line 164
    long-to-int v4, v0

    #@1a
    aput v4, p1, v9

    #@1c
    .line 165
    shr-long/2addr v0, v8

    #@1d
    .line 166
    aget v4, p1, v12

    #@1f
    int-to-long v4, v4

    #@20
    and-long/2addr v4, v6

    #@21
    sub-long/2addr v4, v2

    #@22
    add-long/2addr v0, v4

    #@23
    .line 167
    long-to-int v4, v0

    #@24
    aput v4, p1, v12

    #@26
    .line 168
    shr-long/2addr v0, v8

    #@27
    .line 169
    cmp-long v4, v0, v10

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 171
    const/4 v4, 0x2

    #@2c
    aget v4, p1, v4

    #@2e
    int-to-long v4, v4

    #@2f
    and-long/2addr v4, v6

    #@30
    add-long/2addr v0, v4

    #@31
    .line 172
    long-to-int v4, v0

    #@32
    const/4 v5, 0x2

    #@33
    aput v4, p1, v5

    #@35
    .line 173
    shr-long/2addr v0, v8

    #@36
    .line 175
    :cond_0
    const/4 v4, 0x3

    #@37
    aget v4, p1, v4

    #@39
    int-to-long v4, v4

    #@3a
    and-long/2addr v4, v6

    #@3b
    add-long/2addr v4, v2

    #@3c
    add-long/2addr v0, v4

    #@3d
    .line 176
    long-to-int v4, v0

    #@3e
    const/4 v5, 0x3

    #@3f
    aput v4, p1, v5

    #@41
    .line 177
    shr-long/2addr v0, v8

    #@42
    .line 178
    const/4 v4, 0x4

    #@43
    aget v4, p1, v4

    #@45
    int-to-long v4, v4

    #@46
    and-long/2addr v4, v6

    #@47
    add-long/2addr v4, v2

    #@48
    add-long/2addr v0, v4

    #@49
    .line 179
    long-to-int v4, v0

    #@4a
    const/4 v5, 0x4

    #@4b
    aput v4, p1, v5

    #@4d
    .line 180
    shr-long/2addr v0, v8

    #@4e
    .line 185
    .end local v2    # "xx12":J
    :cond_1
    cmp-long v4, v0, v10

    #@50
    if-eqz v4, :cond_3

    #@52
    const/16 v4, 0xc

    #@54
    const/4 v5, 0x5

    #@55
    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_3

    #@5b
    .line 188
    :goto_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    #@5e
    .line 155
    :cond_2
    return-void

    #@5f
    .line 186
    :cond_3
    const/16 v4, 0xb

    #@61
    aget v4, p1, v4

    #@63
    const/4 v5, -0x1

    #@64
    if-ne v4, v5, :cond_2

    #@66
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@68
    const/16 v5, 0xc

    #@6a
    invoke-static {v5, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@6d
    move-result v4

    #@6e
    .line 185
    if-eqz v4, :cond_2

    #@70
    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 194
    const/16 v1, 0x18

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 195
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    #@9
    .line 196
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@c
    .line 192
    return-void
.end method

.method public static squareN([II[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 203
    const/16 v1, 0x18

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 204
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    #@9
    .line 205
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@c
    .line 207
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@e
    if-lez p1, :cond_0

    #@10
    .line 209
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    #@13
    .line 210
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    #@16
    goto :goto_0

    #@17
    .line 199
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
    const/4 v5, 0x0

    #@2
    const-wide/16 v8, 0x1

    #@4
    const-wide v6, 0xffffffffL

    #@9
    const/16 v4, 0x20

    #@b
    .line 272
    aget v2, p0, v5

    #@d
    int-to-long v2, v2

    #@e
    and-long/2addr v2, v6

    #@f
    sub-long v0, v2, v8

    #@11
    .line 273
    .local v0, "c":J
    long-to-int v2, v0

    #@12
    aput v2, p0, v5

    #@14
    .line 274
    shr-long/2addr v0, v4

    #@15
    .line 275
    aget v2, p0, v10

    #@17
    int-to-long v2, v2

    #@18
    and-long/2addr v2, v6

    #@19
    add-long/2addr v2, v8

    #@1a
    add-long/2addr v0, v2

    #@1b
    .line 276
    long-to-int v2, v0

    #@1c
    aput v2, p0, v10

    #@1e
    .line 277
    shr-long/2addr v0, v4

    #@1f
    .line 278
    const-wide/16 v2, 0x0

    #@21
    cmp-long v2, v0, v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 280
    const/4 v2, 0x2

    #@26
    aget v2, p0, v2

    #@28
    int-to-long v2, v2

    #@29
    and-long/2addr v2, v6

    #@2a
    add-long/2addr v0, v2

    #@2b
    .line 281
    long-to-int v2, v0

    #@2c
    const/4 v3, 0x2

    #@2d
    aput v2, p0, v3

    #@2f
    .line 282
    shr-long/2addr v0, v4

    #@30
    .line 284
    :cond_0
    const/4 v2, 0x3

    #@31
    aget v2, p0, v2

    #@33
    int-to-long v2, v2

    #@34
    and-long/2addr v2, v6

    #@35
    sub-long/2addr v2, v8

    #@36
    add-long/2addr v0, v2

    #@37
    .line 285
    long-to-int v2, v0

    #@38
    const/4 v3, 0x3

    #@39
    aput v2, p0, v3

    #@3b
    .line 286
    shr-long/2addr v0, v4

    #@3c
    .line 287
    const/4 v2, 0x4

    #@3d
    aget v2, p0, v2

    #@3f
    int-to-long v2, v2

    #@40
    and-long/2addr v2, v6

    #@41
    sub-long/2addr v2, v8

    #@42
    add-long/2addr v0, v2

    #@43
    .line 288
    long-to-int v2, v0

    #@44
    const/4 v3, 0x4

    #@45
    aput v2, p0, v3

    #@47
    .line 289
    shr-long/2addr v0, v4

    #@48
    .line 290
    const-wide/16 v2, 0x0

    #@4a
    cmp-long v2, v0, v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 292
    const/16 v2, 0xc

    #@50
    const/4 v3, 0x5

    #@51
    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@54
    .line 270
    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 216
    const/16 v1, 0xc

    #@2
    invoke-static {v1, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 217
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 219
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    #@b
    .line 214
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
    const/16 v3, 0x18

    #@2
    .line 225
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v0

    #@6
    .line 226
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@8
    .line 228
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@a
    array-length v1, v1

    #@b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@d
    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 230
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    #@15
    array-length v1, v1

    #@16
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@19
    .line 223
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    const/4 v1, 0x0

    #@3
    .line 237
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@6
    move-result v0

    #@7
    .line 238
    .local v0, "c":I
    if-nez v0, :cond_0

    #@9
    const/16 v1, 0xb

    #@b
    aget v1, p1, v1

    #@d
    const/4 v2, -0x1

    #@e
    if-ne v1, v2, :cond_1

    #@10
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    #@12
    invoke-static {v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 240
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    #@1b
    .line 235
    :cond_1
    return-void
.end method
