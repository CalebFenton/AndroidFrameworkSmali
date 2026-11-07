.class public abstract Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source "ECFieldElement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist bitLength()I
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public abstract blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getEncoded()[B
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isZero()Z
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_a

    .line 75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-object p0
.end method

.method public abstract blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist testBitZero()Z
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public abstract blacklist toBigInteger()Ljava/math/BigInteger;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
