.class Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final blacklist minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

.field protected final blacklist subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;Lcom/android/org/bouncycastle/math/field/Polynomial;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 16
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 54
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    .line 55
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    iget-object v3, p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public blacklist getCharacteristic()Ljava/math/BigInteger;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDimension()I
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public blacklist getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
