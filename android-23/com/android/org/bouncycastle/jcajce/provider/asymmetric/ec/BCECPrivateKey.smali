.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
.super Ljava/lang/Object;
.source "BCECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field static final serialVersionUID:J = 0xdcd5cdd2909ced4L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient d:Ljava/math/BigInteger;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 54
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 203
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 204
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@13
    .line 205
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@16
    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 158
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@12
    move-result-object v0

    #@13
    .line 160
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@15
    .line 161
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@1b
    .line 162
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1d
    .line 164
    if-nez p4, :cond_0

    #@1f
    .line 166
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2a
    move-result-object v1

    #@2b
    .line 168
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    #@2d
    .line 170
    new-instance v3, Ljava/security/spec/ECPoint;

    #@2f
    .line 171
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3a
    move-result-object v4

    #@3b
    .line 172
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@46
    move-result-object v5

    #@47
    .line 170
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4a
    .line 173
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@4d
    move-result-object v4

    #@4e
    .line 174
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@55
    move-result v5

    #@56
    .line 168
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@59
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5b
    .line 183
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@61
    .line 156
    return-void

    #@62
    .line 178
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@69
    move-result-object v3

    #@6a
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@6d
    move-result-object v1

    #@6e
    .line 180
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@71
    move-result-object v2

    #@72
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@74
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 125
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@12
    move-result-object v0

    #@13
    .line 127
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@15
    .line 128
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@1b
    .line 129
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1d
    .line 131
    if-nez p4, :cond_0

    #@1f
    .line 133
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2a
    move-result-object v1

    #@2b
    .line 135
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    #@2d
    .line 137
    new-instance v3, Ljava/security/spec/ECPoint;

    #@2f
    .line 138
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3a
    move-result-object v4

    #@3b
    .line 139
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@46
    move-result-object v5

    #@47
    .line 137
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4a
    .line 140
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@4d
    move-result-object v4

    #@4e
    .line 141
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@55
    move-result v5

    #@56
    .line 135
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@59
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5b
    .line 148
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@61
    .line 123
    return-void

    #@62
    .line 145
    :cond_0
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@64
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 191
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 192
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@17
    .line 193
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@1a
    .line 194
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1c
    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 109
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 110
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@15
    .line 111
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@19
    .line 112
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    #@1b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    #@1d
    .line 113
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@21
    .line 114
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@23
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@25
    .line 115
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@29
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    const-string/jumbo v2, "EC"

    #@7
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@9
    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@b
    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@10
    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@12
    .line 74
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@18
    .line 76
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1b
    move-result-object v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 78
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@25
    move-result-object v0

    #@26
    .line 81
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
    .line 83
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3c
    .line 90
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@3e
    .line 71
    return-void

    #@3f
    .line 87
    :cond_0
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@41
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 99
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@11
    .line 100
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@17
    .line 101
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@1d
    .line 102
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1f
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .param p2, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@f
    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@15
    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@1b
    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@21
    .line 65
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@23
    .line 60
    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 3
    .param p1, "pub"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@0
    .prologue
    .line 434
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

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
    .line 436
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 439
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@12
    .line 440
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
    .line 211
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@b
    move-result-object v10

    #@c
    .line 213
    .local v10, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 215
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v9

    #@1a
    .line 216
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1d
    move-result-object v8

    #@1e
    .line 217
    .local v8, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@29
    move-result-object v2

    #@2a
    .line 219
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@2c
    .line 220
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 222
    new-instance v3, Ljava/security/spec/ECPoint;

    #@32
    .line 223
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3d
    move-result-object v4

    #@3e
    .line 224
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@49
    move-result-object v5

    #@4a
    .line 222
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4d
    .line 225
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@50
    move-result-object v4

    #@51
    .line 226
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@54
    move-result-object v5

    #@55
    .line 219
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@58
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5a
    .line 246
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5d
    move-result-object v11

    #@5e
    .line 247
    .local v11, "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v0, v11, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@60
    if-eqz v0, :cond_2

    #@62
    .line 249
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@65
    move-result-object v6

    #@66
    .line 251
    .local v6, "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@6c
    .line 209
    .end local v6    # "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :goto_1
    return-void

    #@6d
    .line 228
    .end local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_1

    #@73
    .line 230
    const/4 v0, 0x0

    #@74
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@76
    goto :goto_0

    #@77
    .line 234
    :cond_1
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7a
    move-result-object v0

    #@7b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@7e
    move-result-object v8

    #@7f
    .line 235
    .restart local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@86
    move-result-object v1

    #@87
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@8a
    move-result-object v2

    #@8b
    .line 237
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@8d
    .line 239
    new-instance v1, Ljava/security/spec/ECPoint;

    #@8f
    .line 240
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@9a
    move-result-object v3

    #@9b
    .line 241
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a2
    move-result-object v4

    #@a3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@a6
    move-result-object v4

    #@a7
    .line 239
    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@aa
    .line 242
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@ad
    move-result-object v3

    #@ae
    .line 243
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@b5
    move-result v4

    #@b6
    .line 237
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@b9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@bb
    goto :goto_0

    #@bc
    .line 255
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@bf
    move-result-object v7

    #@c0
    .line 257
    .local v7, "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    #@c3
    move-result-object v0

    #@c4
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@c6
    .line 258
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@c9
    move-result-object v0

    #@ca
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@cc
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
    .line 448
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 450
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 452
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@10
    move-result-object v1

    #@11
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@14
    .line 454
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@16
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@18
    .line 455
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@1a
    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@1f
    .line 446
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
    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 464
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getEncoded()[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@a
    .line 460
    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 362
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    #@8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

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
    .line 403
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 405
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 408
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@9
    .line 410
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

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
    .line 393
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

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
    .line 375
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 288
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 290
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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
    .line 291
    .local v6, "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_0

    #@15
    .line 293
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@19
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@1b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@22
    .line 296
    .restart local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@24
    invoke-direct {v11, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@27
    .line 297
    .local v11, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@29
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    #@34
    move-result v10

    #@35
    .line 322
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "orderBitLength":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 324
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@3b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    #@3e
    move-result-object v2

    #@3f
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@41
    invoke-direct {v9, v10, v2, v3, v11}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@44
    .line 333
    .local v9, "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_1
    :try_start_0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@46
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@48
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    invoke-direct {v2, v3, v11}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4d
    invoke-direct {v8, v2, v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@50
    .line 335
    .local v8, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    #@53
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 299
    .end local v8    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v10    # "orderBitLength":I
    .end local v11    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5a
    if-nez v2, :cond_2

    #@5c
    .line 301
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@5e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@60
    invoke-direct {v11, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@63
    .line 302
    .restart local v11    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    #@66
    move-result-object v2

    #@67
    invoke-static {v12, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    #@6a
    move-result v10

    #@6b
    .restart local v10    # "orderBitLength":I
    goto :goto_0

    #@6c
    .line 306
    .end local v10    # "orderBitLength":I
    .end local v11    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6e
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@71
    move-result-object v2

    #@72
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@75
    move-result-object v1

    #@76
    .line 308
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@78
    .line 310
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@7a
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@7d
    move-result-object v2

    #@7e
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    #@80
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@83
    move-result-object v2

    #@84
    .line 311
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@86
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@89
    move-result-object v3

    #@8a
    .line 312
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8c
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@8f
    move-result v4

    #@90
    int-to-long v4, v4

    #@91
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@94
    move-result-object v4

    #@95
    .line 313
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@97
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@9e
    move-result-object v5

    #@9f
    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@a2
    .line 315
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@a4
    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    #@a7
    .line 316
    .restart local v11    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@a9
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    #@b0
    move-result-object v3

    #@b1
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    #@b4
    move-result v10

    #@b5
    .restart local v10    # "orderBitLength":I
    goto :goto_0

    #@b6
    .line 328
    .end local v0    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;

    #@b8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    #@bb
    move-result-object v2

    #@bc
    invoke-direct {v9, v10, v2, v11}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@bf
    .restart local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKey;
    goto :goto_1

    #@c0
    .line 338
    :catch_0
    move-exception v7

    #@c1
    .line 339
    .local v7, "e":Ljava/io/IOException;
    return-object v12
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
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
    .line 350
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 352
    return-object v1

    #@6
    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

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
    .line 345
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 382
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    .line 380
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
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
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    #@c
    .line 396
    return-void

    #@d
    .line 398
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 421
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@8
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 423
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "EC Private Key"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 424
    const-string/jumbo v2, "             S: "

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

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
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method
