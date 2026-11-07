.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final blacklist PRECOMP_POW2:[I

.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    .line 17
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    const/4 v0, 0x7

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_1a

    .line 27
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 32
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    return-void

    .line 29
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 77
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    .line 79
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 84
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    .line 86
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 106
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 107
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 108
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 109
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 235
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 241
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p0

    return p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 72
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 246
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 129
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 130
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->inv([I[I)V

    .line 131
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist isOne()Z
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result p0

    return p0
.end method

.method public blacklist isZero()Z
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 98
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 100
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 114
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 115
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 116
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 9

    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 154
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_b4

    .line 159
    :cond_10
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p0

    .line 160
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 161
    invoke-static {p0, v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 163
    invoke-static {p0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 164
    invoke-static {p0, v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 165
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 166
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 167
    invoke-static {v1, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 168
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    const/4 v3, 0x4

    .line 169
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 170
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 171
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    const/4 v5, 0x3

    .line 172
    invoke-static {v2, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 173
    invoke-static {v4, p0, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/16 v6, 0x8

    .line 175
    invoke-static {v4, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 176
    invoke-static {v4, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 178
    invoke-static {v4, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 179
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/16 v6, 0x13

    .line 181
    invoke-static {v2, v6, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 182
    invoke-static {v1, v4, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 183
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    const/16 v7, 0x2a

    .line 184
    invoke-static {v1, v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 185
    invoke-static {v6, v1, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/16 v7, 0x17

    .line 187
    invoke-static {v6, v7, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 188
    invoke-static {v1, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/16 v7, 0x54

    .line 190
    invoke-static {v1, v7, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 191
    invoke-static {v2, v6, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/16 v1, 0x14

    .line 194
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 195
    invoke-static {v2, v4, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 196
    invoke-static {v2, v5, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 197
    invoke-static {v2, v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    const/4 v1, 0x2

    .line 198
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 199
    invoke-static {v2, v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 200
    invoke-static {v2, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 201
    invoke-static {v2, p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 202
    invoke-static {v2, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 205
    invoke-static {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 207
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p0

    if-eqz p0, :cond_9f

    .line 209
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0

    .line 216
    :cond_9f
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v2, p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 218
    invoke-static {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 220
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 222
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0

    :cond_b3
    const/4 p0, 0x0

    :cond_b4
    :goto_b4
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 121
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 123
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 91
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 93
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

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

    .line 62
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
