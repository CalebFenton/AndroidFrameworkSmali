.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final P:[I

.field private static final P16:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    const/16 v0, 0x11

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@9
    .line 8
    return-void

    #@a
    .line 11
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
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
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/16 v4, 0x1ff

    #@2
    const/16 v3, 0x10

    #@4
    .line 17
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    #@7
    move-result v1

    #@8
    aget v2, p0, v3

    #@a
    add-int/2addr v1, v2

    #@b
    aget v2, p1, v3

    #@d
    add-int v0, v1, v2

    #@f
    .line 18
    .local v0, "c":I
    if-gt v0, v4, :cond_0

    #@11
    if-ne v0, v4, :cond_1

    #@13
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@15
    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 20
    :cond_0
    invoke-static {v3, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 21
    and-int/lit16 v0, v0, 0x1ff

    #@22
    .line 23
    :cond_1
    aput v0, p2, v3

    #@24
    .line 15
    return-void
.end method

.method public static addOne([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v4, 0x1ff

    #@2
    const/16 v3, 0x10

    #@4
    .line 28
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    #@7
    move-result v1

    #@8
    aget v2, p0, v3

    #@a
    add-int v0, v1, v2

    #@c
    .line 29
    .local v0, "c":I
    if-gt v0, v4, :cond_0

    #@e
    if-ne v0, v4, :cond_1

    #@10
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@12
    invoke-static {v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 31
    :cond_0
    invoke-static {v3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    #@1b
    move-result v1

    #@1c
    add-int/2addr v0, v1

    #@1d
    .line 32
    and-int/lit16 v0, v0, 0x1ff

    #@1f
    .line 34
    :cond_1
    aput v0, p1, v3

    #@21
    .line 26
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/16 v2, 0x11

    #@2
    .line 39
    const/16 v1, 0x209

    #@4
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    #@7
    move-result-object v0

    #@8
    .line 40
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@a
    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 42
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    #@13
    .line 44
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 49
    aget v1, p0, v4

    #@4
    .line 50
    .local v1, "x16":I
    invoke-static {v4, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    #@7
    move-result v0

    #@8
    .line 51
    .local v0, "c":I
    ushr-int/lit8 v2, v1, 0x1

    #@a
    ushr-int/lit8 v3, v0, 0x17

    #@c
    or-int/2addr v2, v3

    #@d
    aput v2, p1, v4

    #@f
    .line 47
    return-void
.end method

.method protected static implMultiply([I[I[I)V
    .locals 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    .line 143
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    #@5
    .line 145
    aget v1, p0, v0

    #@7
    .local v1, "x16":I
    aget v3, p1, v0

    #@9
    .local v3, "y16":I
    move-object v2, p1

    #@a
    move-object v4, p0

    #@b
    move-object v5, p2

    #@c
    move v6, v0

    #@d
    .line 146
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    #@10
    move-result v0

    #@11
    mul-int v2, v1, v3

    #@13
    add-int/2addr v0, v2

    #@14
    const/16 v2, 0x20

    #@16
    aput v0, p2, v2

    #@18
    .line 141
    return-void
.end method

.method protected static implSquare([I[I)V
    .locals 7
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    .line 151
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat512;->square([I[I)V

    #@5
    .line 153
    aget v6, p0, v0

    #@7
    .line 154
    .local v6, "x16":I
    shl-int/lit8 v1, v6, 0x1

    #@9
    const/4 v3, 0x0

    #@a
    move-object v2, p0

    #@b
    move-object v4, p1

    #@c
    move v5, v0

    #@d
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    #@10
    move-result v0

    #@11
    mul-int v1, v6, v6

    #@13
    add-int/2addr v0, v1

    #@14
    const/16 v1, 0x20

    #@16
    aput v0, p1, v1

    #@18
    .line 149
    return-void
.end method

.method public static multiply([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 56
    const/16 v1, 0x21

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 57
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    #@9
    .line 58
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    #@c
    .line 54
    return-void
.end method

.method public static negate([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v1, 0x11

    #@2
    .line 63
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 65
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    #@b
    .line 61
    :goto_0
    return-void

    #@c
    .line 69
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@e
    invoke-static {v1, v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@11
    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 9
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v8, 0x1ff

    #@2
    const/16 v0, 0x10

    #@4
    .line 77
    const/16 v1, 0x20

    #@6
    aget v4, p0, v1

    #@8
    .line 78
    .local v4, "xx32":I
    const/16 v3, 0x9

    #@a
    const/4 v6, 0x0

    #@b
    move-object v1, p0

    #@c
    move v2, v0

    #@d
    move-object v5, p1

    #@e
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    #@11
    move-result v1

    #@12
    ushr-int/lit8 v7, v1, 0x17

    #@14
    .line 79
    .local v7, "c":I
    ushr-int/lit8 v1, v4, 0x9

    #@16
    add-int/2addr v7, v1

    #@17
    .line 80
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v7, v1

    #@1c
    .line 81
    if-gt v7, v8, :cond_0

    #@1e
    if-ne v7, v8, :cond_1

    #@20
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@22
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 83
    :cond_0
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    #@2b
    move-result v1

    #@2c
    add-int/2addr v7, v1

    #@2d
    .line 84
    and-int/lit16 v7, v7, 0x1ff

    #@2f
    .line 86
    :cond_1
    aput v7, p1, v0

    #@31
    .line 73
    return-void
.end method

.method public static reduce23([I)V
    .locals 6
    .param p0, "z"    # [I

    #@0
    .prologue
    const/16 v5, 0x1ff

    #@2
    const/16 v4, 0x10

    #@4
    .line 91
    aget v1, p0, v4

    #@6
    .line 92
    .local v1, "z16":I
    ushr-int/lit8 v2, v1, 0x9

    #@8
    invoke-static {v4, v2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    #@b
    move-result v2

    #@c
    and-int/lit16 v3, v1, 0x1ff

    #@e
    add-int v0, v2, v3

    #@10
    .line 93
    .local v0, "c":I
    if-gt v0, v5, :cond_0

    #@12
    if-ne v0, v5, :cond_1

    #@14
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    #@16
    invoke-static {v4, p0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 95
    :cond_0
    invoke-static {v4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    #@1f
    move-result v2

    #@20
    add-int/2addr v0, v2

    #@21
    .line 96
    and-int/lit16 v0, v0, 0x1ff

    #@23
    .line 98
    :cond_1
    aput v0, p0, v4

    #@25
    .line 89
    return-void
.end method

.method public static square([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 103
    const/16 v1, 0x21

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 104
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    #@9
    .line 105
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    #@c
    .line 101
    return-void
.end method

.method public static squareN([II[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 112
    const/16 v1, 0x21

    #@2
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@5
    move-result-object v0

    #@6
    .line 113
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    #@9
    .line 114
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    #@c
    .line 116
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@e
    if-lez p1, :cond_0

    #@10
    .line 118
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    #@13
    .line 119
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    #@16
    goto :goto_0

    #@17
    .line 108
    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 125
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    #@5
    move-result v1

    #@6
    aget v2, p0, v3

    #@8
    add-int/2addr v1, v2

    #@9
    aget v2, p1, v3

    #@b
    sub-int v0, v1, v2

    #@d
    .line 126
    .local v0, "c":I
    if-gez v0, :cond_0

    #@f
    .line 128
    invoke-static {v3, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->dec(I[I)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    .line 129
    and-int/lit16 v0, v0, 0x1ff

    #@16
    .line 131
    :cond_0
    aput v0, p2, v3

    #@18
    .line 123
    return-void
.end method

.method public static twice([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 136
    aget v1, p0, v4

    #@4
    .line 137
    .local v1, "x16":I
    shl-int/lit8 v2, v1, 0x17

    #@6
    invoke-static {v4, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    #@9
    move-result v2

    #@a
    shl-int/lit8 v3, v1, 0x1

    #@c
    or-int v0, v2, v3

    #@e
    .line 138
    .local v0, "c":I
    and-int/lit16 v2, v0, 0x1ff

    #@10
    aput v2, p1, v4

    #@12
    .line 134
    return-void
.end method
