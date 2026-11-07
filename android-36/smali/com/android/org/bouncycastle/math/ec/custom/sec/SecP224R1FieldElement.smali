.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224R1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    .line 19
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_1a

    .line 25
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 30
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method private static blacklist RM([I[I[I[I[I[I[I)V
    .registers 7

    .line 205
    invoke-static {p4, p2, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 206
    invoke-static {p6, p0, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 207
    invoke-static {p3, p1, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 208
    invoke-static {p5, p6, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 209
    invoke-static {p3, p2, p6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 210
    invoke-static {p5, p3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 211
    invoke-static {p4, p1, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 212
    invoke-static {p4, p6, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 213
    invoke-static {p4, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 214
    invoke-static {p5, p0, p5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    return-void
.end method

.method private static blacklist RP([I[I[I[I[I)V
    .registers 13

    .line 219
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 221
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    const/4 v0, 0x0

    move v7, v0

    :goto_d
    const/4 v0, 0x7

    if-ge v7, v0, :cond_2b

    .line 226
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 227
    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v7

    :goto_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_20

    .line 232
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    goto :goto_18

    :cond_20
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 235
    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_2b
    return-void
.end method

.method private static blacklist RS([I[I[I[I)V
    .registers 4

    .line 241
    invoke-static {p1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 242
    invoke-static {p1, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    .line 243
    invoke-static {p0, p3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 244
    invoke-static {p2, p3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 245
    invoke-static {p2, p3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p3, 0x7

    .line 246
    invoke-static {p3, p2, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result p0

    .line 247
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    return-void
.end method

.method private static blacklist isSquare([I)Z
    .registers 4

    .line 188
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 190
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 p0, 0x0

    :goto_c
    const/4 v2, 0x7

    if-ge p0, v2, :cond_1d

    .line 194
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v2, 0x1

    shl-int/2addr v2, p0

    .line 195
    invoke-static {v0, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 196
    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_1d
    const/16 p0, 0x5f

    .line 199
    invoke-static {v0, p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 200
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result p0

    return p0
.end method

.method private static blacklist trySqrt([I[I[I)Z
    .registers 10

    .line 252
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 253
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 254
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 255
    aput v2, p1, v1

    .line 256
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    .line 257
    invoke-static {p0, v0, p1, v3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    .line 259
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p0

    .line 260
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    move v5, v2

    :goto_1f
    const/16 v6, 0x60

    if-ge v5, v6, :cond_3c

    .line 264
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 265
    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat224;->copy([I[I)V

    .line 267
    invoke-static {v0, p1, v3, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    .line 269
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 271
    invoke-static {v4, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 272
    invoke-static {p2, p0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    return v2

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_3c
    return v1
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 75
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 77
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 82
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    .line 84
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 104
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 105
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 106
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 107
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 172
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 177
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 178
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p0

    return p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 70
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 183
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 127
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 128
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    .line 129
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist isOne()Z
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result p0

    return p0
.end method

.method public blacklist isZero()Z
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 96
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 97
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 98
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 114
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 139
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_42

    .line 144
    :cond_f
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p0

    .line 145
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 147
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->random([I)[I

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 150
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_28

    return-object v4

    .line 155
    :cond_28
    :goto_28
    invoke-static {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    move-result v3

    if-nez v3, :cond_32

    .line 157
    invoke-static {v1, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    goto :goto_28

    .line 160
    :cond_32
    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 162
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p0

    if-eqz p0, :cond_41

    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0

    :cond_41
    return-object v4

    :cond_42
    :goto_42
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 119
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 120
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 121
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 89
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 91
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
