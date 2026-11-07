.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;
.super Ljava/lang/Object;
.source "SecP224K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    const/16 v0, 0xe

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    const/16 v0, 0x9

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4e
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
        0x2
    .end array-data
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x6

    .line 31
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_15

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    :cond_16
    :goto_16
    const/4 p0, 0x7

    const/16 p1, 0x1a93

    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 4

    const/4 v0, 0x7

    .line 51
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x6

    .line 52
    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_16

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    return-void

    :cond_17
    :goto_17
    const/16 p0, 0x1a93

    .line 54
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x6

    .line 61
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x7

    const/16 v1, 0x1a93

    .line 63
    invoke-static {v0, v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_18
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_b

    .line 91
    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4

    .line 99
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 100
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 101
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 106
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xe

    if-nez p0, :cond_17

    const/16 p0, 0xd

    .line 107
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 109
    :cond_17
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->PExtInv:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 111
    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 120
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    return-void

    .line 124
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x1c

    .line 130
    new-array v0, v0, [B

    .line 133
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 134
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 145
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x1a93

    const/4 v2, 0x7

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    .line 150
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33Add(I[II[II[II)J

    move-result-wide p0

    const/4 v0, 0x0

    const/16 v1, 0x1a93

    .line 151
    invoke-static {v1, p0, p1, v5, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33DWordAdd(IJ[II)I

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x6

    .line 155
    aget p0, v5, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {v5, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    return-void

    :cond_25
    :goto_25
    const/4 p0, 0x7

    .line 157
    invoke-static {p0, v1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 4

    const/16 v0, 0x1a93

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    .line 163
    invoke-static {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul33WordAdd(II[II)I

    move-result p0

    if-nez p0, :cond_19

    :cond_b
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1d

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    .line 164
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_19
    const/4 p0, 0x7

    .line 166
    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1d
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 172
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 173
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 174
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4

    .line 181
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 182
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 183
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 187
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 188
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    goto :goto_a

    :cond_15
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 194
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x7

    const/16 p1, 0x1a93

    .line 197
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    :cond_c
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 215
    invoke-static {v1, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x6

    .line 216
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    :cond_18
    :goto_18
    const/16 p0, 0x1a93

    .line 218
    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method
