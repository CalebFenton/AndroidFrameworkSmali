.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 14
    .param p0, "ec"    # Ljava/security/spec/EllipticCurve;

    .line 304
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    .line 305
    .local v0, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    .line 306
    .local v3, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    .line 308
    .local v4, "b":Ljava/math/BigInteger;
    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_23

    .line 310
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object v2, v0

    check-cast v2, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->substitute(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    return-object v1

    .line 314
    :cond_23
    move-object v10, v0

    check-cast v10, Ljava/security/spec/ECFieldF2m;

    .line 315
    .local v10, "fieldF2m":Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    .line 316
    .local v2, "m":I
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    move-result-object v11

    .line 317
    .local v11, "ks":[I
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    const/4 v7, 0x2

    aget v7, v11, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v12, v6

    move-object v6, v3

    move v3, v5

    move v5, v7

    move-object v7, v4

    move v4, v12

    .end local v3    # "a":Ljava/math/BigInteger;
    .end local v4    # "b":Ljava/math/BigInteger;
    .local v6, "a":Ljava/math/BigInteger;
    .local v7, "b":Ljava/math/BigInteger;
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v3, v6

    move-object v4, v7

    .end local v6    # "a":Ljava/math/BigInteger;
    .end local v7    # "b":Ljava/math/BigInteger;
    .restart local v3    # "a":Ljava/math/BigInteger;
    .restart local v4    # "b":Ljava/math/BigInteger;
    return-object v1
.end method

.method public static blacklist convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .registers 7
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object v0

    .line 294
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

    .line 298
    .local v2, "b":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/EllipticCurve;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method

.method public static blacklist convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .registers 6
    .param p0, "field"    # Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 323
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 325
    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 329
    :cond_10
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    move-result-object v0

    .line 330
    .local v0, "poly":Lcom/android/internal/org/bouncycastle/math/field/Polynomial;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    .line 331
    .local v1, "exponents":[I
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverseInPlace([I)[I

    move-result-object v2

    .line 332
    .local v2, "ks":[I
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v4

    invoke-direct {v3, v4, v2}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v3
.end method

.method public static blacklist convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "point"    # Ljava/security/spec/ECPoint;

    .line 381
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "point"    # Ljava/security/spec/ECPoint;

    .line 376
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .registers 4
    .param p0, "point"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 388
    new-instance v0, Ljava/security/spec/ECPoint;

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 388
    return-object v0
.end method

.method public static blacklist convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 9
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;

    .line 356
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 358
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 359
    .local v3, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    .line 360
    .local v4, "n":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 361
    .local v5, "h":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    .line 363
    .local v6, "seed":[B
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_41

    .line 365
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v3, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v4, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v5, "n":Ljava/math/BigInteger;
    .local v6, "h":Ljava/math/BigInteger;
    .local v7, "seed":[B
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "seed":[B
    .restart local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v3, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v4, "n":Ljava/math/BigInteger;
    .local v5, "h":Ljava/math/BigInteger;
    .local v6, "seed":[B
    return-object v1

    .line 370
    :cond_41
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static blacklist convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .registers 9
    .param p0, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 342
    .local v4, "g":Ljava/security/spec/ECPoint;
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v0, :cond_22

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v6

    move-object v3, p0

    .end local p0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .local v3, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 350
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .restart local p0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_22
    move-object v3, p0

    .end local p0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .restart local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance p0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {p0, v3, v4, v0, v1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;
    .registers 11
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 193
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 194
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v1, :cond_25

    .line 196
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v2

    .line 197
    .local v2, "additionalECParameters":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 199
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 203
    .end local v2    # "additionalECParameters":Ljava/util/Map;
    :cond_25
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 205
    .local v5, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 206
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 209
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 210
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 211
    .end local v0    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v3, "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_9e

    .line 212
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 214
    const/4 v3, 0x0

    .restart local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_9e

    .line 218
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_4f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 219
    .local v0, "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_9d

    .line 221
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 223
    .restart local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 225
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 227
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 229
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 230
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 231
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .restart local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_9c

    .line 235
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_8a
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 238
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 241
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :goto_9c
    goto :goto_9e

    .line 262
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_9d
    const/4 v3, 0x0

    .line 266
    .end local v0    # "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :goto_9e
    return-object v3
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .registers 6
    .param p0, "domainParameters"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 272
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 272
    return-object v0
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .registers 6
    .param p0, "domainParameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 282
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 282
    return-object v0
.end method

.method public static blacklist getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 6
    .param p0, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    .line 106
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAcceptableNamedCurves()Ljava/util/Set;

    move-result-object v0

    .line 108
    .local v0, "acceptableCurves":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 112
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_27

    .line 125
    :cond_1f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "named curve not acceptable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_27
    :goto_27
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 116
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_38

    .line 118
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 121
    :cond_38
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 122
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    nop

    .line 127
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_6b

    .line 128
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 130
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .restart local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    goto :goto_6b

    .line 134
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_4d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 135
    .local v1, "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_6c

    .line 139
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 141
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 142
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    nop

    .line 161
    .end local v1    # "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :goto_6b
    return-object v2

    .line 152
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .restart local v1    # "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "GOST is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_74
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "encoded parameters not acceptable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 9
    .param p0, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 170
    if-nez p1, :cond_20

    .line 172
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 174
    .local v0, "iSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 175
    .end local v0    # "iSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .local v1, "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_28

    .line 178
    .end local v1    # "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_20
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 181
    .restart local v1    # "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_28
    return-object v1
.end method
