.class public Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;
.super Ljava/security/spec/ECParameterSpec;
.source "ECNamedCurveSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@4
    move-result-object v0

    #@5
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x1

    #@a
    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@d
    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@f
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@4
    move-result-object v0

    #@5
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    #@c
    move-result v2

    #@d
    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@10
    .line 88
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@12
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    #@0
    .prologue
    .line 111
    invoke-static {p2, p6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@3
    move-result-object v0

    #@4
    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    #@b
    move-result v2

    #@c
    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@f
    .line 113
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@11
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p3, "g"    # Ljava/security/spec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@4
    .line 76
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p3, "g"    # Ljava/security/spec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 98
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@7
    .line 100
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@9
    .line 96
    return-void
.end method

.method private static convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 4
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    #@0
    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    #@7
    move-result-object v2

    #@8
    .line 31
    .local v2, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@f
    move-result-object v0

    #@10
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@17
    move-result-object v1

    #@18
    .line 32
    .local v1, "b":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/EllipticCurve;

    #@1a
    invoke-direct {v3, v2, v0, v1, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@1d
    return-object v3
.end method

.method private static convertField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .locals 5
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@0
    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 39
    new-instance v3, Ljava/security/spec/ECFieldFp;

    #@8
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v3, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    #@f
    return-object v3

    #@10
    .line 43
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@12
    .end local p0    # "field":Lcom/android/org/bouncycastle/math/field/FiniteField;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@15
    move-result-object v2

    #@16
    .line 44
    .local v2, "poly":Lcom/android/org/bouncycastle/math/field/Polynomial;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    #@19
    move-result-object v0

    #@1a
    .line 45
    .local v0, "exponents":[I
    array-length v3, v0

    #@1b
    add-int/lit8 v3, v3, -0x1

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-static {v0, v4, v3}, Lcom/android/org/bouncycastle/util/Arrays;->copyOfRange([III)[I

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->reverse([I)[I

    #@25
    move-result-object v1

    #@26
    .line 46
    .local v1, "ks":[I
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    #@28
    invoke-interface {v2}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    #@2b
    move-result v4

    #@2c
    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    #@2f
    return-object v3
.end method

.method private static convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 3
    .param p0, "g"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object p0

    #@4
    .line 54
    new-instance v0, Ljava/security/spec/ECPoint;

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@19
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
