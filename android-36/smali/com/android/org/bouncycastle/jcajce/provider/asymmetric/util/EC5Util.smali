.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# direct methods
.method public static blacklist convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 11

    .line 304
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    .line 306
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    .line 308
    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_22

    .line 310
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->substitute(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0

    .line 314
    :cond_22
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    .line 315
    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    .line 316
    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    move-result-object p0

    .line 317
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v5, 0x1

    aget v5, p0, v5

    const/4 v6, 0x2

    aget p0, p0, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v3

    move-object v7, v4

    move v4, v5

    move v5, p0

    move v3, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static blacklist convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 381
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 8

    .line 356
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 358
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 359
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    .line 360
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 361
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    .line 370
    new-instance v1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
