.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP192K1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    .line 17
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_1a

    .line 23
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 28
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    return-void

    .line 25
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP192K1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 73
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->add([I[I[I)V

    .line 75
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 80
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->addOne([I[I)V

    .line 82
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 102
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 103
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->inv([I[I)V

    .line 104
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v0, p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 105
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 211
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

    move-result p0

    return p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 68
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 216
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 125
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->inv([I[I)V

    .line 127
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist isOne()Z
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

    move-result p0

    return p0
.end method

.method public blacklist isZero()Z
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 94
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 95
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 96
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 110
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 111
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    .line 112
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 147
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_91

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_91

    .line 152
    :cond_10
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object p0

    .line 153
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 154
    invoke-static {p0, v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 155
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    .line 156
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 157
    invoke-static {v1, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 158
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v2

    const/4 v3, 0x3

    .line 159
    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 160
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/4 v4, 0x2

    .line 162
    invoke-static {v2, v4, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 163
    invoke-static {v2, p0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/16 v4, 0x8

    .line 165
    invoke-static {v2, v4, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 166
    invoke-static {p0, v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 168
    invoke-static {p0, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 169
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 170
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v3

    const/16 v4, 0x10

    .line 171
    invoke-static {v2, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 172
    invoke-static {v3, p0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/16 v4, 0x23

    .line 174
    invoke-static {v3, v4, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 175
    invoke-static {p0, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/16 v4, 0x46

    .line 177
    invoke-static {p0, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 178
    invoke-static {v3, p0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/16 v4, 0x13

    .line 180
    invoke-static {v3, v4, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 181
    invoke-static {p0, v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/16 v3, 0x14

    .line 184
    invoke-static {p0, v3, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 185
    invoke-static {p0, v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/4 v2, 0x4

    .line 186
    invoke-static {p0, v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 187
    invoke-static {p0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    const/4 v2, 0x6

    .line 188
    invoke-static {p0, v2, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->squareN([II[I)V

    .line 189
    invoke-static {p0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 190
    invoke-static {p0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 193
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 195
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0

    :cond_90
    const/4 p0, 0x0

    :cond_91
    :goto_91
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 117
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 119
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 87
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 89
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->getBit([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
