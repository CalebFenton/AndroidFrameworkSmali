.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P16:I = 0x1ff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_a
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

    .line 24
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 25
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_1a

    if-ne v1, v2, :cond_20

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p2, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 27
    :cond_1a
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 28
    and-int/2addr v1, v2

    .line 30
    :cond_20
    aput v1, p2, v0

    .line 31
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 35
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 36
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_17

    if-ne v1, v2, :cond_1d

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 38
    :cond_17
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 39
    and-int/2addr v1, v2

    .line 41
    :cond_1d
    aput v1, p1, v0

    .line 42
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 46
    const/16 v0, 0x209

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 47
    .local v0, "z":[I
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    const/16 v2, 0x11

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 49
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    .line 51
    :cond_13
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 56
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 57
    .local v1, "x16":I
    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v2

    .line 58
    .local v2, "c":I
    ushr-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x17

    or-int/2addr v3, v4

    aput v3, p1, v0

    .line 59
    return-void
.end method

.method protected static blacklist implMultiply([I[I[I)V
    .registers 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 213
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    .line 215
    const/16 v0, 0x10

    aget v2, p0, v0

    .local v2, "x16":I
    aget v4, p1, v0

    .line 216
    .local v4, "y16":I
    const/16 v1, 0x10

    const/16 v7, 0x10

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    .end local p0    # "x":[I
    .end local p1    # "y":[I
    .end local p2    # "zz":[I
    .local v3, "y":[I
    .local v5, "x":[I
    .local v6, "zz":[I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result p0

    mul-int p1, v2, v4

    add-int/2addr p0, p1

    const/16 p1, 0x20

    aput p0, v6, p1

    .line 217
    return-void
.end method

.method protected static blacklist implSquare([I[I)V
    .registers 9
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 221
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat512;->square([I[I)V

    .line 223
    const/16 v0, 0x10

    aget v0, p0, v0

    .line 224
    .local v0, "x16":I
    shl-int/lit8 v2, v0, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/16 v1, 0x10

    move-object v3, p0

    move-object v5, p1

    .end local p0    # "x":[I
    .end local p1    # "zz":[I
    .local v3, "x":[I
    .local v5, "zz":[I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    mul-int p1, v0, v0

    add-int/2addr p0, p1

    const/16 p1, 0x20

    aput p0, v5, p1

    .line 225
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 63
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 64
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4
    .param p0, "x"    # [I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x11

    if-ge v1, v2, :cond_c

    .line 71
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    .end local v1    # "i":I
    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 74
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 79
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 80
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 81
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 82
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 86
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 87
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 88
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 92
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_10

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_15

    .line 98
    :cond_10
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 100
    :goto_15
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 6
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 104
    const/16 v0, 0x44

    new-array v0, v0, [B

    .line 107
    .local v0, "bb":[B
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 108
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 109
    const/16 v1, 0x10

    aget v3, p1, v1

    and-int/lit16 v3, v3, 0x1ff

    aput v3, p1, v1

    .line 111
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 118
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 120
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 127
    const/16 v0, 0x20

    aget v5, p0, v0

    .line 128
    .local v5, "xx32":I
    const/16 v4, 0x9

    const/4 v7, 0x0

    const/16 v1, 0x10

    const/16 v3, 0x10

    move-object v2, p0

    move-object v6, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v2, "xx":[I
    .local v6, "z":[I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x17

    .line 129
    .local p0, "c":I
    ushr-int/lit8 p1, v5, 0x9

    add-int/2addr p0, p1

    .line 130
    const/16 p1, 0x10

    invoke-static {p1, v2, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    add-int/2addr p0, v0

    .line 131
    const/16 v0, 0x1ff

    if-gt p0, v0, :cond_2b

    if-ne p0, v0, :cond_31

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {p1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 133
    :cond_2b
    invoke-static {p1, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr p0, v1

    .line 134
    and-int/2addr p0, v0

    .line 136
    :cond_31
    aput p0, v6, p1

    .line 137
    return-void
.end method

.method public static blacklist reduce23([I)V
    .registers 6
    .param p0, "z"    # [I

    .line 141
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 142
    .local v1, "z16":I
    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    and-int/lit16 v3, v1, 0x1ff

    add-int/2addr v2, v3

    .line 143
    .local v2, "c":I
    const/16 v3, 0x1ff

    if-gt v2, v3, :cond_1b

    if-ne v2, v3, :cond_21

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 145
    :cond_1b
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v2, v4

    .line 146
    and-int/2addr v2, v3

    .line 148
    :cond_21
    aput v2, p0, v0

    .line 149
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 153
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 154
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 155
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 156
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "tt"    # [I

    .line 160
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 161
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 162
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 168
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 169
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 170
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 172
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 174
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 175
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_c

    .line 177
    :cond_17
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 183
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 184
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 186
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 188
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 189
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_6

    .line 191
    :cond_11
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 195
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    sub-int/2addr v1, v2

    .line 196
    .local v1, "c":I
    if-gez v1, :cond_15

    .line 198
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result v2

    add-int/2addr v1, v2

    .line 199
    and-int/lit16 v1, v1, 0x1ff

    .line 201
    :cond_15
    aput v1, p2, v0

    .line 202
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 206
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 207
    .local v1, "x16":I
    shl-int/lit8 v2, v1, 0x17

    invoke-static {v0, p0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v2, v3

    .line 208
    .local v2, "c":I
    and-int/lit16 v3, v2, 0x1ff

    aput v3, p1, v0

    .line 209
    return-void
.end method
