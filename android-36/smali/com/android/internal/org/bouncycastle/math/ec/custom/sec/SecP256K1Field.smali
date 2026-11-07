.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt15:I = -0x1

.field private static final blacklist PExtInv:[I

.field private static final blacklist PInv33:I = 0x3d1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

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

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 32
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 34
    :cond_14
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 36
    :cond_1b
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 40
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 41
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 43
    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_28

    .line 45
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 48
    :cond_28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 52
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 53
    .local v1, "c":I
    if-nez v1, :cond_16

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 55
    :cond_16
    const/16 v2, 0x3d1

    invoke-static {v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 57
    :cond_1b
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 62
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 64
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 66
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 71
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    .line 73
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 77
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 78
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 80
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist inv([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 85
    return-void
.end method

.method public static blacklist isZero([I)I
    .registers 4
    .param p0, "x"    # [I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_c

    .line 92
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "i":I
    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 95
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 100
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 101
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 102
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 103
    return-void
.end method

.method public static blacklist multiply([I[I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 107
    invoke-static {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 108
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 109
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 114
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_17

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 116
    :cond_17
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_28

    .line 118
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 121
    :cond_28
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 125
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 127
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_13

    .line 131
    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 133
    :goto_13
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .registers 5
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 137
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 140
    .local v0, "bb":[B
    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 143
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    return-void
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 150
    nop

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 152
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 9
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 157
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x3d1

    const/16 v2, 0x8

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v1, "xx":[I
    .local v5, "z":[I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    move-result-wide p0

    .line 158
    .local p0, "cc":J
    const/4 v0, 0x0

    const/16 v2, 0x3d1

    invoke-static {v2, p0, p1, v5, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    move-result v0

    .line 162
    .local v0, "c":I
    if-nez v0, :cond_24

    const/4 v3, 0x7

    aget v3, v5, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v5, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 164
    :cond_24
    const/16 v3, 0x8

    invoke-static {v3, v2, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 166
    :cond_29
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 5
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 170
    const/16 v0, 0x3d1

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 171
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 173
    :cond_19
    const/16 v1, 0x8

    invoke-static {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 175
    :cond_1e
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 179
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 180
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 181
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 182
    return-void
.end method

.method public static blacklist square([I[I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "tt"    # [I

    .line 186
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 187
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 188
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 194
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 195
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 196
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 198
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 200
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 201
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_a

    .line 203
    :cond_15
    return-void
.end method

.method public static blacklist squareN([II[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I

    .line 209
    invoke-static {p0, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 210
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 212
    :goto_6
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_11

    .line 214
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 215
    invoke-static {p3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_6

    .line 217
    :cond_11
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 221
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 222
    .local v0, "c":I
    if-eqz v0, :cond_d

    .line 224
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 226
    :cond_d
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 230
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 231
    .local v1, "c":I
    if-eqz v1, :cond_19

    .line 233
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_19

    .line 235
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 238
    :cond_19
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 242
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 243
    .local v0, "c":I
    if-nez v0, :cond_17

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 245
    :cond_17
    const/16 v2, 0x3d1

    invoke-static {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 247
    :cond_1c
    return-void
.end method
