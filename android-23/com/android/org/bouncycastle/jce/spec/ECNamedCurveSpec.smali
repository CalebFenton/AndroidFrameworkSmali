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
    .locals 6
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 25
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 27
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@a
    new-instance v3, Ljava/security/spec/ECFieldFp;

    #@c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v4}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v3, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@26
    move-result-object v5

    #@27
    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@2a
    return-object v2

    #@2b
    :cond_0
    move-object v0, p0

    #@2c
    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@2e
    .line 34
    .local v0, "curveF2m":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 36
    new-array v1, v4, [I

    #@36
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    #@39
    move-result v2

    #@3a
    aput v2, v1, v3

    #@3c
    .line 38
    .local v1, "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@3e
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    #@40
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@43
    move-result v4

    #@44
    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    #@47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@56
    move-result-object v5

    #@57
    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@5a
    return-object v2

    #@5b
    .line 42
    .end local v1    # "ks":[I
    :cond_1
    const/4 v2, 0x3

    #@5c
    new-array v1, v2, [I

    #@5e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    #@61
    move-result v2

    #@62
    aput v2, v1, v3

    #@64
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    #@67
    move-result v2

    #@68
    aput v2, v1, v4

    #@6a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    #@6d
    move-result v2

    #@6e
    const/4 v3, 0x2

    #@6f
    aput v2, v1, v3

    #@71
    .line 44
    .restart local v1    # "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@73
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    #@75
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@78
    move-result v4

    #@79
    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    #@7c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@8b
    move-result-object v5

    #@8c
    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@8f
    return-object v2
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
