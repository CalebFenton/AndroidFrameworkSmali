.class public Lcom/android/org/bouncycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 79
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getParameterSpec(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .registers 11

    const/4 v0, 0x0

    .line 29
    :try_start_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/ECNamedCurveTable;->possibleOID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    :cond_d
    move-object v1, v0

    :goto_e
    if-eqz v1, :cond_15

    .line 39
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_19

    .line 43
    :cond_15
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    :goto_19
    if-nez v2, :cond_26

    if-eqz v1, :cond_22

    .line 50
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_26

    .line 54
    :cond_22
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    :cond_26
    :goto_26
    if-nez v2, :cond_29

    return-object v0

    .line 63
    :cond_29
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    .line 65
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    .line 66
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 67
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 68
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    .line 69
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method

.method private static blacklist possibleOID(Ljava/lang/String;)Z
    .registers 5

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_12

    goto :goto_20

    .line 90
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_20

    const/16 v1, 0x32

    if-le p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v2
.end method
