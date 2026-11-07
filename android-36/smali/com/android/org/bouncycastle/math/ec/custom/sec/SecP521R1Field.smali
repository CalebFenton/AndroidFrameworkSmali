.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final blacklist P:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x11

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

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

.method public static blacklist add([I[I[I)V
    .registers 5

    const/16 v0, 0x10

    .line 24
    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget p0, p0, v0

    add-int/2addr v1, p0

    aget p0, p1, v0

    add-int/2addr v1, p0

    const/16 p0, 0x1ff

    if-gt v1, p0, :cond_1a

    if-ne v1, p0, :cond_20

    .line 25
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 27
    :cond_1a
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result p1

    add-int/2addr v1, p1

    and-int/2addr v1, p0

    .line 30
    :cond_20
    aput v1, p2, v0

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 5

    const/16 v0, 0x10

    .line 35
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget p0, p0, v0

    add-int/2addr v1, p0

    const/16 p0, 0x1ff

    if-gt v1, p0, :cond_17

    if-ne v1, p0, :cond_1d

    .line 36
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 38
    :cond_17
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v2

    add-int/2addr v1, v2

    and-int/2addr v1, p0

    .line 41
    :cond_1d
    aput v1, p1, v0

    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    const/16 v0, 0x209

    .line 46
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object p0

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    const/16 v1, 0x11

    invoke-static {v1, p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    :cond_13
    return-object p0
.end method

.method protected static blacklist implMultiply([I[I[I)V
    .registers 11

    .line 213
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    const/16 v0, 0x10

    .line 215
    aget v2, p0, v0

    aget v4, p1, v0

    const/16 v1, 0x10

    const/16 v7, 0x10

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    .line 216
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result p0

    mul-int/2addr v2, v4

    add-int/2addr p0, v2

    const/16 p1, 0x20

    aput p0, v6, p1

    return-void
.end method

.method protected static blacklist implSquare([I[I)V
    .registers 9

    .line 221
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat512;->square([I[I)V

    const/16 v0, 0x10

    .line 223
    aget v0, p0, v0

    shl-int/lit8 v2, v0, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/16 v1, 0x10

    move-object v3, p0

    move-object v5, p1

    .line 224
    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    mul-int/2addr v0, v0

    add-int/2addr p0, v0

    const/16 p1, 0x20

    aput p0, v5, p1

    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x11

    if-ge v0, v2, :cond_c

    .line 71
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

    const/16 v0, 0x21

    .line 79
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 80
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 81
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 86
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 87
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4

    .line 92
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_e

    .line 94
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    return-void

    .line 98
    :cond_e
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 6

    const/16 v0, 0x44

    .line 104
    new-array v0, v0, [B

    .line 107
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 108
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    const/16 v1, 0x10

    .line 109
    aget v3, p1, v1

    and-int/lit16 v3, v3, 0x1ff

    aput v3, p1, v1

    .line 111
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 118
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 120
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 10

    const/16 v0, 0x20

    .line 127
    aget v5, p0, v0

    const/16 v4, 0x9

    const/4 v7, 0x0

    const/16 v1, 0x10

    const/16 v3, 0x10

    move-object v2, p0

    move-object v6, p1

    .line 128
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x17

    ushr-int/lit8 p1, v5, 0x9

    add-int/2addr p0, p1

    const/16 p1, 0x10

    .line 130
    invoke-static {p1, v2, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    add-int/2addr p0, v0

    const/16 v0, 0x1ff

    if-gt p0, v0, :cond_2b

    if-ne p0, v0, :cond_31

    .line 131
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {p1, v6, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 133
    :cond_2b
    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr p0, v1

    and-int/2addr p0, v0

    .line 136
    :cond_31
    aput p0, v6, p1

    return-void
.end method

.method public static blacklist reduce23([I)V
    .registers 5

    const/16 v0, 0x10

    .line 141
    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x9

    .line 142
    invoke-static {v0, v2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    const/16 v3, 0x1ff

    and-int/2addr v1, v3

    add-int/2addr v2, v1

    if-gt v2, v3, :cond_1a

    if-ne v2, v3, :cond_20

    .line 143
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 145
    :cond_1a
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v2, v1

    and-int/2addr v2, v3

    .line 148
    :cond_20
    aput v2, p0, v0

    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    const/16 v0, 0x21

    .line 153
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 154
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 155
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 160
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 161
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 183
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 184
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 188
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 189
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_6

    :cond_11
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 5

    const/16 v0, 0x10

    .line 195
    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget p0, p0, v0

    add-int/2addr v1, p0

    aget p0, p1, v0

    sub-int/2addr v1, p0

    if-gez v1, :cond_15

    .line 198
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result p0

    add-int/2addr v1, p0

    and-int/lit16 v1, v1, 0x1ff

    .line 201
    :cond_15
    aput v1, p2, v0

    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5

    const/16 v0, 0x10

    .line 206
    aget v1, p0, v0

    shl-int/lit8 v2, v1, 0x17

    .line 207
    invoke-static {v0, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr p0, v1

    and-int/lit16 p0, p0, 0x1ff

    .line 208
    aput p0, p1, v0

    return-void
.end method
