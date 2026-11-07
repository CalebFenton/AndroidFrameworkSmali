.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;
.source "BCRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field static final whitelist serialVersionUID:J = 0x6cba87ce0273552eL


# instance fields
.field private blacklist crtCoefficient:Ljava/math/BigInteger;

.field private blacklist primeExponentP:Ljava/math/BigInteger;

.field private blacklist primeExponentQ:Ljava/math/BigInteger;

.field private blacklist primeP:Ljava/math/BigInteger;

.field private blacklist primeQ:Ljava/math/BigInteger;

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 3

    .line 119
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 3

    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 12

    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 137
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 139
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 140
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 141
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 142
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 143
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 144
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 145
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 146
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 60
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 61
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 62
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 63
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 65
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .registers 11

    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 100
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 102
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 103
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 104
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 105
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 106
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 107
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 108
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 109
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .registers 11

    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 80
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 81
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 82
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 83
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 84
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 86
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 87
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 267
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 268
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 270
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->rsaPrivateKey:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 244
    :cond_4
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 249
    :cond_a
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 251
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 252
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 254
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 255
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 256
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 257
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    return v0

    :cond_7d
    return v2
.end method

.method public whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 11

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->algorithmIdentifier:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 156
    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getPrimeP()Ljava/math/BigInteger;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 234
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 286
    const-string v2, "RSA Private CRT Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ",["

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v2, "             modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v2, "     public exponent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
