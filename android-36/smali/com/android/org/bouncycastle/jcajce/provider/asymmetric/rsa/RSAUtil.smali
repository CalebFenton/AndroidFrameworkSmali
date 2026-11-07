.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final blacklist rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method static blacklist generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([BI)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 2

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 10

    .line 59
    instance-of v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    if-eqz v0, :cond_b

    .line 61
    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p0

    return-object p0

    .line 64
    :cond_b
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_37

    .line 66
    check-cast p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 69
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 70
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 76
    :cond_37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method static blacklist generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 4

    .line 48
    instance-of v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    if-eqz v0, :cond_b

    .line 50
    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object p0

    return-object p0

    .line 53
    :cond_b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static blacklist isRsaOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 34
    :goto_2
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v3, v2

    if-eq v1, v3, :cond_14

    .line 36
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method
