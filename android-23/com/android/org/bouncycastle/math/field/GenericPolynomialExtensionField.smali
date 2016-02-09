.class Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

.field protected final subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;Lcom/android/org/bouncycastle/math/field/Polynomial;)V
    .locals 0
    .param p1, "subfield"    # Lcom/android/org/bouncycastle/math/field/FiniteField;
    .param p2, "polynomial"    # Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@5
    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@7
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    if-ne p0, p1, :cond_0

    #@3
    .line 47
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 49
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 51
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 53
    check-cast v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    #@d
    .line 54
    .local v0, "other":Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@f
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@19
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDegree()I
    .locals 1

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDimension()I
    .locals 2

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@8
    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    #@b
    move-result v1

    #@c
    mul-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@2
    return-object v0
.end method

.method public getSubfield()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .locals 1

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    const/16 v2, 0x10

    #@e
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    #@11
    move-result v1

    #@12
    .line 59
    xor-int/2addr v0, v1

    #@13
    return v0
.end method
