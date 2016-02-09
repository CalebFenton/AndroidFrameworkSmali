.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# static fields
.field private static customCurves:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 24
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@7
    .line 28
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    #@a
    move-result-object v1

    #@b
    .line 29
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 33
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1a
    move-result-object v0

    #@1b
    .line 34
    .local v0, "curveParams":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v0, :cond_0

    #@1d
    .line 36
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@1f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v4

    #@23
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    goto :goto_0

    #@2f
    .line 22
    .end local v0    # "curveParams":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 11
    .param p0, "ec"    # Ljava/security/spec/EllipticCurve;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@3
    move-result-object v8

    #@4
    .line 75
    .local v8, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    #@7
    move-result-object v5

    #@8
    .line 76
    .local v5, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    #@b
    move-result-object v6

    #@c
    .line 78
    .local v6, "b":Ljava/math/BigInteger;
    instance-of v0, v8, Ljava/security/spec/ECFieldFp;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 80
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@12
    check-cast v8, Ljava/security/spec/ECFieldFp;

    #@14
    .end local v8    # "field":Ljava/security/spec/ECField;
    invoke-virtual {v8}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v0

    #@18
    invoke-direct {v7, v0, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1b
    .line 82
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@1d
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@25
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2b
    return-object v0

    #@2c
    .line 87
    :cond_0
    return-object v7

    #@2d
    .end local v7    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    .restart local v8    # "field":Ljava/security/spec/ECField;
    :cond_1
    move-object v9, v8

    #@2e
    .line 91
    check-cast v9, Ljava/security/spec/ECFieldF2m;

    #@30
    .line 92
    .local v9, "fieldF2m":Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getM()I

    #@33
    move-result v1

    #@34
    .line 93
    .local v1, "m":I
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    #@3b
    move-result-object v10

    #@3c
    .line 94
    .local v10, "ks":[I
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@3e
    const/4 v2, 0x0

    #@3f
    aget v2, v10, v2

    #@41
    const/4 v3, 0x1

    #@42
    aget v3, v10, v3

    #@44
    const/4 v4, 0x2

    #@45
    aget v4, v10, v4

    #@47
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4a
    return-object v0
.end method

.method public static convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 7
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 47
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 49
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@b
    new-instance v3, Ljava/security/spec/ECFieldFp;

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v4}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@14
    move-result-object v4

    #@15
    invoke-direct {v3, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    #@18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@27
    move-result-object v5

    #@28
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@2b
    return-object v2

    #@2c
    :cond_0
    move-object v0, p0

    #@2d
    .line 53
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@2f
    .line 56
    .local v0, "curveF2m":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 58
    new-array v1, v4, [I

    #@37
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    #@3a
    move-result v2

    #@3b
    aput v2, v1, v3

    #@3d
    .line 60
    .local v1, "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@3f
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    #@41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@44
    move-result v4

    #@45
    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    #@48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@5b
    return-object v2

    #@5c
    .line 64
    .end local v1    # "ks":[I
    :cond_1
    const/4 v2, 0x3

    #@5d
    new-array v1, v2, [I

    #@5f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    #@62
    move-result v2

    #@63
    aput v2, v1, v3

    #@65
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    #@68
    move-result v2

    #@69
    aput v2, v1, v4

    #@6b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    #@6e
    move-result v2

    #@6f
    const/4 v3, 0x2

    #@70
    aput v2, v1, v3

    #@72
    .line 66
    .restart local v1    # "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    #@74
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    #@76
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@79
    move-result v4

    #@7a
    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    #@7d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@8c
    move-result-object v5

    #@8d
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@90
    return-object v2
.end method

.method public static convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "point"    # Ljava/security/spec/ECPoint;
    .param p2, "withCompression"    # Z

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "point"    # Ljava/security/spec/ECPoint;
    .param p2, "withCompression"    # Z

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 6
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "withCompression"    # Z

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    move-result-object v1

    #@8
    .line 131
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@a
    .line 133
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@d
    move-result-object v2

    #@e
    invoke-static {v1, v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v2

    #@12
    .line 134
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@15
    move-result-object v3

    #@16
    .line 135
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@19
    move-result v4

    #@1a
    int-to-long v4, v4

    #@1b
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1e
    move-result-object v4

    #@1f
    .line 136
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@26
    move-result-object v5

    #@27
    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@2a
    return-object v0
.end method

.method public static convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .param p0, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 102
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@6
    move-object v1, p1

    #@7
    .line 105
    check-cast v1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 107
    new-instance v3, Ljava/security/spec/ECPoint;

    #@f
    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1a
    move-result-object v2

    #@1b
    .line 109
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@26
    move-result-object v4

    #@27
    .line 107
    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2a
    .line 110
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@2d
    move-result-object v4

    #@2e
    .line 111
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@31
    move-result-object v5

    #@32
    move-object v2, p0

    #@33
    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@36
    return-object v0

    #@37
    .line 115
    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@39
    .line 117
    new-instance v1, Ljava/security/spec/ECPoint;

    #@3b
    .line 118
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@46
    move-result-object v2

    #@47
    .line 119
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@52
    move-result-object v3

    #@53
    .line 117
    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@56
    .line 120
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@59
    move-result-object v2

    #@5a
    .line 121
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@61
    move-result v3

    #@62
    .line 115
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@65
    return-object v0
.end method
