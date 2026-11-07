.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# direct methods
.method protected constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 601
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    return-void
.end method

.method private static blacklist implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    .line 661
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 663
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method

.method private static blacklist implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    .line 672
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method protected blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 635
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 636
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 647
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-eq v1, v2, :cond_2d

    .line 650
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 653
    :cond_2d
    invoke-virtual {p0, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 644
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
    .registers 3

    if-eqz p1, :cond_18

    .line 606
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 615
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    .line 616
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 617
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 618
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 627
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    .line 628
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 629
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 630
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method
