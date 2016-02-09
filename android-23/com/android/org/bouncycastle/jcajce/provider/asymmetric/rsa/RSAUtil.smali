.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 20
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    .line 21
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 22
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 23
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 24
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    .line 19
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 11
    .param p0, "key"    # Ljava/security/interfaces/RSAPrivateKey;

    #@0
    .prologue
    .line 51
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v9, p0

    #@5
    .line 53
    check-cast v9, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@7
    .line 55
    .local v9, "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@9
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@c
    move-result-object v1

    #@d
    .line 56
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    .line 57
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@18
    move-result-object v4

    #@19
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@24
    move-result-object v7

    #@25
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@28
    move-result-object v8

    #@29
    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2c
    return-object v0

    #@2d
    .line 61
    .end local v9    # "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_0
    move-object v10, p0

    #@2e
    .line 63
    .local v10, "k":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@30
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@33
    move-result-object v1

    #@34
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@37
    move-result-object v2

    #@38
    const/4 v3, 0x1

    #@39
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3c
    return-object v0
.end method

.method static generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    #@0
    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@e
    return-object v0
.end method

.method public static isRsaOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 2
    .param p0, "algOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    array-length v1, v1

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 32
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->rsaOids:[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 34
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 38
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method
