.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final blacklist rsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 4
    .param p0, "exponent"    # Ljava/math/BigInteger;

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;-><init>([BI)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 3
    .param p0, "modulus"    # Ljava/math/BigInteger;

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Fingerprint;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/Fingerprint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 11
    .param p0, "key"    # Ljava/security/interfaces/RSAPrivateKey;

    .line 59
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    if-eqz v0, :cond_c

    .line 61
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    return-object v0

    .line 64
    :cond_c
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_39

    .line 66
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 68
    .local v0, "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 69
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 70
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 68
    return-object v1

    .line 74
    .end local v0    # "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_39
    move-object v0, p0

    .line 76
    .local v0, "k":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method static blacklist generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
    .registers 5
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .line 48
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    if-eqz v0, :cond_c

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    return-object v0

    .line 53
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static blacklist isRsaOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 3
    .param p0, "algOid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v1, v1

    if-eq v0, v1, :cond_15

    .line 36
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method
