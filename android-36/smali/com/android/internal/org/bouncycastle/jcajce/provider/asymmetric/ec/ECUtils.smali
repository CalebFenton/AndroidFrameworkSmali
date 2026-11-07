.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;
.super Ljava/lang/Object;
.source "ECUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 37
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 30
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method static blacklist getDomainParametersFromGenSpec(Ljava/security/spec/ECGenParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "genSpec"    # Ljava/security/spec/ECGenParameterSpec;
    .param p1, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 42
    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getDomainParametersFromName(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 9
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "withCompression"    # Z

    .line 82
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_24

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 85
    .local v0, "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_1e

    .line 87
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v2, p0

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    :cond_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 90
    .end local v0    # "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_64

    .line 91
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_24
    if-nez p0, :cond_2f

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    move-object v1, v0

    .restart local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_64

    .line 97
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2f
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 99
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 101
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    .line 102
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 104
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 106
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v1, v0

    .line 109
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_64
    return-object v1
.end method

.method static blacklist getDomainParametersFromName(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 7
    .param p0, "curveName"    # Ljava/lang/String;
    .param p1, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 47
    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_37

    .line 52
    :cond_a
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 53
    .local v0, "spacePos":I
    if-lez v0, :cond_18

    .line 55
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 58
    :cond_18
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 59
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_23

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    return-object v2

    .line 64
    :cond_23
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 65
    .local v2, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_36

    .line 67
    if-eqz p1, :cond_36

    .line 69
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v3

    .line 71
    .local v3, "extraCurves":Ljava/util/Map;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 75
    .end local v3    # "extraCurves":Ljava/util/Map;
    :cond_36
    return-object v2

    .line 49
    .end local v0    # "spacePos":I
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "curveName"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "firstChar":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_14

    const/16 v1, 0x32

    if-gt v0, v1, :cond_14

    .line 119
    :try_start_d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    return-object v1

    .line 121
    :catch_13
    move-exception v1

    .line 125
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method
