.class public abstract Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist PExt:[I

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 18
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    const/16 v0, 0x10

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    const/16 v0, 0xa

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    return-void

    :array_1c
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_30
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_54
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
        0x2
    .end array-data
.end method

.method public static blacklist add([I[I[I)V
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x7

    .line 32
    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_15

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-void

    :cond_16
    :goto_16
    const/16 p0, 0x8

    const/16 p1, 0x3d1

    .line 34
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 4

    const/16 v0, 0x8

    .line 52
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x7

    .line 53
    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_17

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-void

    :cond_18
    :goto_18
    const/16 p0, 0x3d1

    .line 55
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 3

    .line 61
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x7

    .line 62
    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 64
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    :cond_15
    return-object p0
.end method

.method public static blacklist inv([I[I)V
    .registers 3

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_c

    .line 92
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

    .line 100
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 102
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4

    .line 107
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 108
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 4

    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0x10

    if-nez p0, :cond_17

    const/16 p0, 0xf

    .line 114
    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_24

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 116
    :cond_17
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 118
    array-length p0, p0

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_24
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3

    .line 125
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void

    .line 131
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5

    const/16 v0, 0x20

    .line 137
    new-array v0, v0, [B

    .line 140
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 141
    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 143
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    .line 150
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 152
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x3d1

    const/16 v2, 0x8

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    .line 157
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    move-result-wide p0

    const/4 v0, 0x0

    const/16 v1, 0x3d1

    .line 158
    invoke-static {v1, p0, p1, v5, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x7

    .line 162
    aget p0, v5, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_25

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v5, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    return-void

    :cond_26
    :goto_26
    const/16 p0, 0x8

    .line 164
    invoke-static {p0, v1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 4

    const/16 v0, 0x3d1

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    .line 170
    invoke-static {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    move-result p0

    if-nez p0, :cond_19

    :cond_b
    const/4 p0, 0x7

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1e

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 171
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_19
    const/16 p0, 0x8

    .line 173
    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    :cond_1e
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3

    .line 179
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 180
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 181
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3

    .line 186
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 187
    invoke-static {p2, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4

    .line 209
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 210
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 214
    invoke-static {p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 215
    invoke-static {p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_6

    :cond_11
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 3

    .line 221
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x8

    const/16 p1, 0x3d1

    .line 224
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    :cond_d
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 242
    invoke-static {v1, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x7

    .line 243
    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    :cond_19
    :goto_19
    const/16 p0, 0x3d1

    .line 245
    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    return-void
.end method
