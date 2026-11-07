.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static final blacklist PKCS_ALGID:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final blacklist PSS_ALGID:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field static final blacklist defaultPublicExponent:Ljava/math/BigInteger;


# instance fields
.field blacklist algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

.field blacklist param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->PKCS_ALGID:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->PSS_ALGID:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const-wide/32 v0, 0x10001

    .line 31
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 52
    const-string v0, "RSA"

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->PKCS_ALGID:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 6

    .line 41
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    new-instance p1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    .line 45
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    .line 46
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 47
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 91
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 93
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 6

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    if-eqz p2, :cond_7

    goto :goto_c

    .line 62
    :cond_7
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_c
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 72
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_29

    .line 76
    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 79
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz p2, :cond_f

    goto :goto_14

    .line 82
    :cond_f
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_14
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p1

    const/16 v2, 0x800

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    .line 74
    :cond_29
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
