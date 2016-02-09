.class public Lcom/android/org/bouncycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getParameterSpec(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@4
    move-result-object v8

    #@5
    .line 25
    .local v8, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v8, :cond_0

    #@7
    .line 29
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    move-result-object v8

    #@10
    .line 36
    :goto_0
    if-nez v8, :cond_0

    #@12
    .line 38
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@15
    move-result-object v8

    #@16
    .line 39
    if-nez v8, :cond_0

    #@18
    .line 43
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    move-result-object v8

    #@21
    .line 53
    :cond_0
    :goto_1
    if-nez v8, :cond_1

    #@23
    .line 55
    return-object v1

    #@24
    .line 58
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    #@26
    .line 60
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@29
    move-result-object v2

    #@2a
    .line 61
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2d
    move-result-object v3

    #@2e
    .line 62
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@31
    move-result-object v4

    #@32
    .line 63
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@35
    move-result-object v5

    #@36
    .line 64
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@39
    move-result-object v6

    #@3a
    move-object v1, p0

    #@3b
    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3e
    return-object v0

    #@3f
    .line 46
    :catch_0
    move-exception v7

    #@40
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@41
    .line 32
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    #@42
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
