.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;
.super Ljava/security/spec/ECParameterSpec;
.source "ECNamedCurveSpec.java"


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    .line 59
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 61
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .line 82
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "g"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .line 107
    invoke-static {p2, p6}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 109
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p3, "g"    # Ljava/security/spec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 72
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p3, "g"    # Ljava/security/spec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .line 94
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 96
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private static blacklist convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .registers 6
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object v0

    .line 34
    .local v0, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 35
    .local v2, "b":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/EllipticCurve;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method

.method private static blacklist convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .registers 6
    .param p0, "field"    # Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 40
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 46
    :cond_10
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    move-result-object v0

    .line 47
    .local v0, "poly":Lcom/android/internal/org/bouncycastle/math/field/Polynomial;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    .line 48
    .local v1, "exponents":[I
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverseInPlace([I)[I

    move-result-object v2

    .line 49
    .local v2, "ks":[I
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v4

    invoke-direct {v3, v4, v2}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v3
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
