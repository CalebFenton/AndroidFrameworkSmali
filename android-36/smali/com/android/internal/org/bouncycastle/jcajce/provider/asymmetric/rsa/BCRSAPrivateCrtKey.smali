.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;
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
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    .line 120
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 3
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .line 128
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;->DEFAULT_ALGORITHM_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 12
    .param p1, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .line 135
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 137
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 139
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 141
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    .line 142
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 143
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 144
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 145
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 146
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 147
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V
    .registers 4
    .param p1, "algorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 60
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 61
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 62
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 63
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 65
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 66
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V
    .registers 3
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 52
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .registers 11
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

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

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 102
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    .line 103
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 104
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    .line 105
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 106
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 107
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 108
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 109
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 110
    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .registers 11
    .param p1, "spec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 76
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

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

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    .line 80
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    .line 81
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 82
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    .line 83
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 84
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 86
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 87
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 88
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 267
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 268
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->rsaPrivateKey:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 272
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 241
    return v0

    .line 244
    :cond_4
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 246
    return v2

    .line 249
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 251
    .local v1, "key":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    goto :goto_7f

    :cond_7e
    move v0, v2

    .line 251
    :goto_7f
    return v0
.end method

.method public whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 11

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->algorithmIdentifier:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 156
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 232
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "RSA Private CRT Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateKeyFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 287
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 288
    const-string v4, ",["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generateExponentFingerprint(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 291
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v2, "             modulus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v2, "     public exponent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
