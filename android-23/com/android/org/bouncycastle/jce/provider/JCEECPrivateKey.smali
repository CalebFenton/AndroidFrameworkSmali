.class public Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 55
    return-void
.end method

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
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 194
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@12
    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 185
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 186
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@17
    .line 187
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@1a
    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 148
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@12
    move-result-object v0

    #@13
    .line 150
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@15
    .line 151
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@1b
    .line 153
    if-nez p4, :cond_0

    #@1d
    .line 155
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@28
    move-result-object v1

    #@29
    .line 157
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    #@2b
    .line 159
    new-instance v3, Ljava/security/spec/ECPoint;

    #@2d
    .line 160
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@38
    move-result-object v4

    #@39
    .line 161
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@44
    move-result-object v5

    #@45
    .line 159
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@48
    .line 162
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@4b
    move-result-object v4

    #@4c
    .line 163
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@53
    move-result v5

    #@54
    .line 157
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@57
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@59
    .line 178
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5f
    .line 146
    return-void

    #@60
    .line 167
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@67
    move-result-object v3

    #@68
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@6b
    move-result-object v1

    #@6c
    .line 169
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    #@6e
    .line 171
    new-instance v3, Ljava/security/spec/ECPoint;

    #@70
    .line 172
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@7b
    move-result-object v4

    #@7c
    .line 173
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@87
    move-result-object v5

    #@88
    .line 171
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@8b
    .line 174
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@8e
    move-result-object v4

    #@8f
    .line 175
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@96
    move-result v5

    #@97
    .line 169
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@9a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@9c
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 117
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@12
    move-result-object v0

    #@13
    .line 119
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@15
    .line 120
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@1b
    .line 122
    if-nez p4, :cond_0

    #@1d
    .line 124
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@28
    move-result-object v1

    #@29
    .line 126
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    #@2b
    .line 128
    new-instance v3, Ljava/security/spec/ECPoint;

    #@2d
    .line 129
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@38
    move-result-object v4

    #@39
    .line 130
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@44
    move-result-object v5

    #@45
    .line 128
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@48
    .line 131
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@4b
    move-result-object v4

    #@4c
    .line 132
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@53
    move-result v5

    #@54
    .line 126
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@57
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@59
    .line 139
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5f
    .line 115
    return-void

    #@60
    .line 136
    :cond_0
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@62
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 104
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@15
    .line 105
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@19
    .line 106
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@1b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@1d
    .line 107
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@21
    .line 108
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@23
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@25
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    const-string/jumbo v2, "EC"

    #@7
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@9
    .line 53
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@b
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@10
    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@12
    .line 72
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@18
    .line 74
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1b
    move-result-object v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 76
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@25
    move-result-object v0

    #@26
    .line 79
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@31
    move-result-object v1

    #@32
    .line 81
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3c
    .line 69
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    #@3d
    .line 85
    :cond_0
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3f
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 94
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 95
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@17
    .line 96
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@1d
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@15
    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@1b
    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@21
    .line 60
    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 3
    .param p1, "pub"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    #@0
    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@b
    move-result-object v1

    #@c
    .line 450
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 453
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@12
    .line 454
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method private populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@f
    .line 202
    .local v10, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 204
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    move-result-object v9

    #@1d
    .line 205
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@20
    move-result-object v8

    #@21
    .line 225
    .local v8, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2c
    move-result-object v2

    #@2d
    .line 227
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@2f
    .line 228
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 230
    new-instance v3, Ljava/security/spec/ECPoint;

    #@35
    .line 231
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@40
    move-result-object v4

    #@41
    .line 232
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4c
    move-result-object v5

    #@4d
    .line 230
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@50
    .line 233
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@53
    move-result-object v4

    #@54
    .line 234
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@57
    move-result-object v5

    #@58
    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@5b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5d
    .line 255
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@60
    move-result-object v11

    #@61
    .line 256
    .local v11, "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v0, v11, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@63
    if-eqz v0, :cond_2

    #@65
    .line 258
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@68
    move-result-object v6

    #@69
    .line 260
    .local v6, "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@6f
    .line 198
    .end local v6    # "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_1
    return-void

    #@70
    .line 237
    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_1

    #@76
    .line 239
    const/4 v0, 0x0

    #@77
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@79
    goto :goto_0

    #@7a
    .line 243
    :cond_1
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7d
    move-result-object v0

    #@7e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@81
    move-result-object v8

    #@82
    .line 244
    .restart local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@89
    move-result-object v1

    #@8a
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@8d
    move-result-object v2

    #@8e
    .line 246
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@90
    .line 248
    new-instance v1, Ljava/security/spec/ECPoint;

    #@92
    .line 249
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9d
    move-result-object v3

    #@9e
    .line 250
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@a9
    move-result-object v4

    #@aa
    .line 248
    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@ad
    .line 251
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@b0
    move-result-object v3

    #@b1
    .line 252
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@b8
    move-result v4

    #@b9
    .line 246
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@bc
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@be
    goto :goto_0

    #@bf
    .line 264
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    #@c1
    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c3
    .end local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {v7, v11}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@c6
    .line 266
    .local v7, "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    #@c9
    move-result-object v0

    #@ca
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@cc
    .line 267
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@cf
    move-result-object v0

    #@d0
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@d2
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [B

    #@6
    .line 464
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@11
    .line 466
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@19
    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    #@1c
    move-result v1

    #@1d
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@1f
    .line 468
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@21
    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@26
    .line 470
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@28
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    #@2b
    .line 460
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7
    .line 478
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 479
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@e
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    #@11
    .line 481
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    #@16
    .line 475
    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 376
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 379
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@f
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 417
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 419
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 422
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    #@9
    .line 424
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 296
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 298
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@9
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v6

    #@13
    .line 299
    .local v6, "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_0

    #@15
    .line 301
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@19
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@1b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@22
    .line 303
    .restart local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@24
    invoke-direct {v10, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@27
    .line 326
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 328
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    #@2d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@33
    invoke-direct {v9, v2, v3, v10}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@36
    .line 346
    .local v9, "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    :try_start_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@38
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3a
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@43
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v8, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4a
    .line 349
    .local v8, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    #@4d
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v2

    #@51
    return-object v2

    #@52
    .line 305
    .end local v8    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@54
    if-nez v2, :cond_2

    #@56
    .line 307
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@58
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@5a
    invoke-direct {v10, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@5d
    .restart local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    #@5e
    .line 311
    .end local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@60
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@63
    move-result-object v2

    #@64
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@67
    move-result-object v1

    #@68
    .line 313
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@6a
    .line 315
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6c
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@6f
    move-result-object v2

    #@70
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@72
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@75
    move-result-object v2

    #@76
    .line 316
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@78
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@7b
    move-result-object v3

    #@7c
    .line 317
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@7e
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@81
    move-result v4

    #@82
    int-to-long v4, v4

    #@83
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@86
    move-result-object v4

    #@87
    .line 318
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@89
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@90
    move-result-object v5

    #@91
    .line 313
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@94
    .line 320
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@96
    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    #@99
    .restart local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    #@9a
    .line 332
    .end local v0    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    #@9c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    #@9f
    move-result-object v2

    #@a0
    invoke-direct {v9, v2, v10}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a3
    .restart local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_1

    #@a4
    .line 352
    :catch_0
    move-exception v7

    #@a5
    .line 353
    .local v7, "e":Ljava/io/IOException;
    return-object v11
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 283
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 364
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 366
    return-object v1

    #@6
    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@a
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 394
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    const-string/jumbo v0, "UNCOMPRESSED"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    #@c
    .line 410
    return-void

    #@d
    .line 412
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 435
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@8
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 437
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "EC Private Key"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 438
    const-string/jumbo v2, "             S: "

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    #@1f
    const/16 v4, 0x10

    #@21
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method
