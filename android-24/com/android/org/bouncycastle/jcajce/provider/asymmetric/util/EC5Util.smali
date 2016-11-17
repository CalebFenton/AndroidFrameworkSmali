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
    .line 31
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@7
    .line 35
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    #@a
    move-result-object v1

    #@b
    .line 36
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 38
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 40
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1a
    move-result-object v0

    #@1b
    .line 41
    .local v0, "curveParams":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v0, :cond_0

    #@1d
    .line 43
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
    .line 29
    .end local v0    # "curveParams":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 11
    .param p0, "ec"    # Ljava/security/spec/EllipticCurve;

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@3
    move-result-object v8

    #@4
    .line 159
    .local v8, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    #@7
    move-result-object v5

    #@8
    .line 160
    .local v5, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    #@b
    move-result-object v6

    #@c
    .line 162
    .local v6, "b":Ljava/math/BigInteger;
    instance-of v0, v8, Ljava/security/spec/ECFieldFp;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 164
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@12
    nop

    #@13
    nop

    #@14
    .end local v8    # "field":Ljava/security/spec/ECField;
    invoke-virtual {v8}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v0

    #@18
    invoke-direct {v7, v0, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1b
    .line 166
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    #@1d
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 168
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
    .line 171
    :cond_0
    return-object v7

    #@2d
    .end local v7    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    .restart local v8    # "field":Ljava/security/spec/ECField;
    :cond_1
    move-object v9, v8

    #@2e
    .line 175
    check-cast v9, Ljava/security/spec/ECFieldF2m;

    #@30
    .line 176
    .local v9, "fieldF2m":Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getM()I

    #@33
    move-result v1

    #@34
    .line 177
    .local v1, "m":I
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    #@3b
    move-result-object v10

    #@3c
    .line 178
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
    .locals 5
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    #@7
    move-result-object v2

    #@8
    .line 148
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
    .line 152
    .local v1, "b":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/EllipticCurve;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-direct {v3, v2, v0, v1, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@1e
    return-object v3
.end method

.method public static convertField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .locals 5
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@0
    .prologue
    .line 184
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 186
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
    .line 190
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@12
    .end local p0    # "field":Lcom/android/org/bouncycastle/math/field/FiniteField;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;

    #@15
    move-result-object v2

    #@16
    .line 191
    .local v2, "poly":Lcom/android/org/bouncycastle/math/field/Polynomial;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    #@19
    move-result-object v0

    #@1a
    .line 192
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
    .line 193
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

.method public static convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "point"    # Ljava/security/spec/ECPoint;
    .param p2, "withCompression"    # Z

    #@0
    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .line 243
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
    .line 228
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@a
    .line 232
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@d
    move-result-object v2

    #@e
    invoke-static {v1, v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v2

    #@12
    .line 233
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@15
    move-result-object v3

    #@16
    .line 234
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
    .line 235
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@26
    move-result-object v5

    #@27
    .line 230
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
    .line 201
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 203
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@6
    move-object v1, p1

    #@7
    .line 204
    nop

    #@8
    nop

    #@9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 206
    new-instance v3, Ljava/security/spec/ECPoint;

    #@f
    .line 207
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
    .line 208
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
    .line 206
    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2a
    .line 209
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@2d
    move-result-object v4

    #@2e
    .line 210
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@31
    move-result-object v5

    #@32
    move-object v2, p0

    #@33
    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@36
    return-object v0

    #@37
    .line 214
    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@39
    .line 216
    new-instance v1, Ljava/security/spec/ECPoint;

    #@3b
    .line 217
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
    .line 218
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
    .line 216
    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@56
    .line 219
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@59
    move-result-object v2

    #@5a
    .line 220
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@61
    move-result v3

    #@62
    .line 214
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@65
    return-object v0
.end method

.method public static convertToSpec(Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;
    .locals 8
    .param p0, "params"    # Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v7

    #@a
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 84
    .local v7, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v6

    #@10
    .line 86
    .local v6, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@13
    move-result-object v1

    #@14
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@17
    move-result-object v2

    #@18
    .line 88
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@1a
    .line 89
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 91
    new-instance v3, Ljava/security/spec/ECPoint;

    #@20
    .line 92
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@2b
    move-result-object v4

    #@2c
    .line 93
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@37
    move-result-object v5

    #@38
    .line 91
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3b
    .line 94
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@3e
    move-result-object v4

    #@3f
    .line 95
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@42
    move-result-object v5

    #@43
    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@46
    .line 128
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v6    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v7    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    return-object v0

    #@47
    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_1

    #@4d
    .line 99
    const/4 v0, 0x0

    #@4e
    .local v0, "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_0

    #@4f
    .line 103
    .end local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@52
    move-result-object v1

    #@53
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@56
    move-result-object v6

    #@57
    .line 105
    .restart local v6    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@5a
    move-result-object v1

    #@5b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@5e
    move-result-object v2

    #@5f
    .line 107
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@62
    move-result-object v1

    #@63
    if-eqz v1, :cond_2

    #@65
    .line 109
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@67
    .line 111
    new-instance v1, Ljava/security/spec/ECPoint;

    #@69
    .line 112
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@74
    move-result-object v3

    #@75
    .line 113
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@80
    move-result-object v4

    #@81
    .line 111
    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@84
    .line 114
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@87
    move-result-object v3

    #@88
    .line 115
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@8f
    move-result v4

    #@90
    .line 109
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@93
    .local v0, "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_0

    #@94
    .line 119
    .end local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@96
    .line 121
    new-instance v1, Ljava/security/spec/ECPoint;

    #@98
    .line 122
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@a3
    move-result-object v3

    #@a4
    .line 123
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@af
    move-result-object v4

    #@b0
    .line 121
    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@b3
    .line 124
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@b6
    move-result-object v3

    #@b7
    const/4 v4, 0x1

    #@b8
    .line 119
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@bb
    .restart local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_0
.end method

.method public static convertToSpec(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 5
    .param p0, "domainParameters"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@2
    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@a
    move-result-object v1

    #@b
    .line 136
    new-instance v2, Ljava/security/spec/ECPoint;

    #@d
    .line 137
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@18
    move-result-object v3

    #@19
    .line 138
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@24
    move-result-object v4

    #@25
    .line 136
    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@28
    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@2b
    move-result-object v3

    #@2c
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@33
    move-result v4

    #@34
    .line 134
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@37
    return-object v0
.end method

.method public static getCurve(Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 4
    .param p0, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@0
    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v2

    #@e
    .line 57
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@11
    move-result-object v1

    #@12
    .line 59
    .local v1, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    move-result-object v0

    #@16
    .line 72
    .end local v1    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :goto_0
    return-object v0

    #@17
    .line 61
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 63
    invoke-interface {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    #@26
    .line 67
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2d
    move-result-object v1

    #@2e
    .line 69
    .restart local v1    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@31
    move-result-object v0

    #@32
    .restart local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0
.end method
