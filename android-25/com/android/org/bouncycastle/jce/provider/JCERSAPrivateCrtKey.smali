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
    .line 94
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
    .line 92
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 104
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 105
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 109
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 110
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 101
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    #@3
    .line 43
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@9
    .line 44
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@f
    .line 45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@15
    .line 46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@1b
    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@21
    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@27
    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateCrtKey;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 77
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 78
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 79
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 80
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 81
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 82
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 83
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 84
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 75
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .param p1, "spec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>()V

    #@3
    .line 59
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    #@9
    .line 60
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@f
    .line 61
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    #@15
    .line 62
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@1b
    .line 63
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@21
    .line 64
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@27
    .line 65
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2d
    .line 66
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@33
    .line 57
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
    .line 203
    if-ne p1, p0, :cond_0

    #@3
    .line 205
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 208
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 210
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 213
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@d
    .line 215
    .local v0, "key":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

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
    .line 216
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
    .line 215
    if-eqz v2, :cond_2

    #@29
    .line 217
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

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
    .line 215
    if-eqz v2, :cond_2

    #@37
    .line 218
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
    .line 215
    if-eqz v2, :cond_2

    #@45
    .line 219
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
    .line 215
    if-eqz v2, :cond_2

    #@53
    .line 220
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
    .line 215
    if-eqz v2, :cond_2

    #@61
    .line 221
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
    .line 215
    if-eqz v2, :cond_2

    #@6f
    .line 222
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
    .line 215
    :cond_2
    return v1
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    #@0
    .prologue
    .line 131
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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

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
    .line 120
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 197
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@f
    move-result v1

    #@10
    .line 196
    xor-int/2addr v0, v1

    #@11
    .line 198
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@18
    move-result v1

    #@19
    .line 196
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
    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 228
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 230
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "RSA Private CRT Key"

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 231
    const-string/jumbo v2, "            modulus: "

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 232
    const-string/jumbo v2, "    public exponent: "

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 233
    const-string/jumbo v2, "   private exponent: "

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    .line 234
    const-string/jumbo v2, "             primeP: "

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    .line 235
    const-string/jumbo v2, "             primeQ: "

    #@70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 236
    const-string/jumbo v2, "     primeExponentP: "

    #@86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@99
    .line 237
    const-string/jumbo v2, "     primeExponentQ: "

    #@9c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@af
    .line 238
    const-string/jumbo v2, "     crtCoefficient: "

    #@b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCERSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c5
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c8
    move-result-object v2

    #@c9
    return-object v2
.end method
