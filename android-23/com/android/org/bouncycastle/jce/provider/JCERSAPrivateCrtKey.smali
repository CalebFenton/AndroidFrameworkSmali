.class public Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;
.super Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;
.source "JCERSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field static final serialVersionUID:J = 0x6cba87ce0273552eL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    #@b
    .line 91
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 102
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 104
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 105
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 109
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 100
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    #@3
    .line 42
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@9
    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@f
    .line 44
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@15
    .line 45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@1b
    .line 46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@21
    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@27
    .line 38
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateCrtKey;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 76
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 77
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 78
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 79
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 80
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 81
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 82
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 83
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 74
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .param p1, "spec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 58
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 59
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 60
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 61
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 62
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 63
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 64
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 65
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 202
    if-ne p1, p0, :cond_0

    #@3
    .line 204
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 207
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 209
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 212
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@d
    .line 214
    .local v0, "key":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 215
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 214
    if-eqz v2, :cond_2

    #@29
    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 214
    if-eqz v2, :cond_2

    #@37
    .line 217
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@3a
    move-result-object v2

    #@3b
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    .line 214
    if-eqz v2, :cond_2

    #@45
    .line 218
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@48
    move-result-object v2

    #@49
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    .line 214
    if-eqz v2, :cond_2

    #@53
    .line 219
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@56
    move-result-object v2

    #@57
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    .line 214
    if-eqz v2, :cond_2

    #@61
    .line 220
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@64
    move-result-object v2

    #@65
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    .line 214
    if-eqz v2, :cond_2

    #@6f
    .line 221
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@72
    move-result-object v1

    #@73
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    .line 214
    :cond_2
    return v1
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    #@0
    .prologue
    .line 130
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v9, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@2a
    move-result-object v8

    #@2b
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2e
    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 196
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@f
    move-result v1

    #@10
    .line 195
    xor-int/2addr v0, v1

    #@11
    .line 197
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@18
    move-result v1

    #@19
    .line 195
    xor-int/2addr v0, v1

    #@1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 227
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 229
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "RSA Private CRT Key"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 230
    const-string/jumbo v2, "            modulus: "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 231
    const-string/jumbo v2, "    public exponent: "

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    .line 232
    const-string/jumbo v2, "   private exponent: "

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    .line 233
    const-string/jumbo v2, "             primeP: "

    #@5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    .line 234
    const-string/jumbo v2, "             primeQ: "

    #@73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 235
    const-string/jumbo v2, "     primeExponentP: "

    #@89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9c
    .line 236
    const-string/jumbo v2, "     primeExponentQ: "

    #@9f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b2
    .line 237
    const-string/jumbo v2, "     crtCoefficient: "

    #@b5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c8
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    return-object v2
.end method
