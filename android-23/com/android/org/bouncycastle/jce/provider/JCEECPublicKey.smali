.class public Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source "JCEECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private withCompression:Z


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 189
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@b
    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 162
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 163
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    .line 164
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@13
    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 136
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@b
    move-result-object v0

    #@c
    .line 138
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 139
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    .line 141
    if-nez p3, :cond_0

    #@16
    .line 143
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@21
    move-result-object v1

    #@22
    .line 145
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@28
    .line 134
    :goto_0
    return-void

    #@29
    .line 149
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@34
    move-result-object v1

    #@35
    .line 151
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 114
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@b
    move-result-object v0

    #@c
    .line 116
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 117
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    .line 119
    if-nez p3, :cond_0

    #@16
    .line 121
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@21
    move-result-object v1

    #@22
    .line 123
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@28
    .line 112
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    #@29
    .line 127
    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 65
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 66
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    .line 67
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@12
    .line 68
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@14
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@16
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;)V
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    const-string/jumbo v3, "EC"

    #@7
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@9
    .line 87
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@b
    .line 88
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    .line 90
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 92
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1e
    move-result-object v0

    #@1f
    .line 93
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@26
    move-result-object v3

    #@27
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2a
    move-result-object v1

    #@2b
    .line 95
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@35
    .line 85
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    #@36
    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3b
    move-result-object v3

    #@3c
    if-nez v3, :cond_1

    #@3e
    .line 101
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@40
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@43
    move-result-object v2

    #@44
    .line 103
    .local v2, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@47
    move-result-object v3

    #@48
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4a
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@51
    move-result-object v4

    #@52
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@54
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@5b
    move-result-object v5

    #@5c
    const/4 v6, 0x0

    #@5d
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@60
    move-result-object v3

    #@61
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@63
    .line 105
    .end local v2    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@65
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPublicKeySpec;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 79
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@10
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@12
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1d
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 181
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 182
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@14
    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@16
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@21
    .line 179
    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4
    .param p1, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "dp"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@0
    .prologue
    .line 169
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@2
    .line 171
    new-instance v1, Ljava/security/spec/ECPoint;

    #@4
    .line 172
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@f
    move-result-object v2

    #@10
    .line 173
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@1b
    move-result-object v3

    #@1c
    .line 171
    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f
    .line 174
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@22
    move-result-object v2

    #@23
    .line 175
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@2a
    move-result v3

    #@2b
    .line 169
    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@2e
    return-object v0
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .locals 7
    .param p1, "encKey"    # [B
    .param p2, "offSet"    # I
    .param p3, "bI"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 419
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    #@5
    move-result-object v2

    #@6
    .line 420
    .local v2, "val":[B
    array-length v3, v2

    #@7
    if-ge v3, v6, :cond_0

    #@9
    .line 422
    new-array v1, v6, [B

    #@b
    .line 423
    .local v1, "tmp":[B
    array-length v3, v1

    #@c
    array-length v4, v2

    #@d
    sub-int/2addr v3, v4

    #@e
    array-length v4, v2

    #@f
    const/4 v5, 0x0

    #@10
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 424
    move-object v2, v1

    #@14
    .line 427
    .end local v1    # "tmp":[B
    :cond_0
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-eq v0, v6, :cond_1

    #@17
    .line 429
    add-int v3, p2, v0

    #@19
    array-length v4, v2

    #@1a
    add-int/lit8 v4, v4, -0x1

    #@1c
    sub-int/2addr v4, v0

    #@1d
    aget-byte v4, v2, v4

    #@1f
    aput-byte v4, p1, v3

    #@21
    .line 427
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 417
    :cond_1
    return-void
.end method

.method private populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 17
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 244
    new-instance v15, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@2
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    invoke-direct {v15, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@f
    .line 248
    .local v15, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 250
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v14

    #@19
    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b
    .line 251
    .local v14, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1e
    move-result-object v11

    #@1f
    .line 253
    .local v11, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v8

    #@23
    .line 254
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@26
    move-result-object v1

    #@27
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2a
    move-result-object v3

    #@2b
    .line 256
    .local v3, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@2d
    .line 257
    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 259
    new-instance v4, Ljava/security/spec/ECPoint;

    #@33
    .line 260
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3e
    move-result-object v5

    #@3f
    .line 261
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4a
    move-result-object v6

    #@4b
    .line 259
    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4e
    .line 262
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@51
    move-result-object v5

    #@52
    .line 263
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@55
    move-result-object v6

    #@56
    .line 256
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@59
    move-object/from16 v0, p0

    #@5b
    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5d
    .line 286
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v14    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@60
    move-result-object v7

    #@61
    .line 287
    .local v7, "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@64
    move-result-object v9

    #@65
    .line 288
    .local v9, "data":[B
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@67
    invoke-direct {v13, v9}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@6a
    .line 293
    .local v13, "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    #@6b
    aget-byte v1, v9, v1

    #@6d
    const/4 v2, 0x4

    #@6e
    if-ne v1, v2, :cond_1

    #@70
    const/4 v1, 0x1

    #@71
    aget-byte v1, v9, v1

    #@73
    array-length v2, v9

    #@74
    add-int/lit8 v2, v2, -0x2

    #@76
    if-ne v1, v2, :cond_1

    #@78
    .line 294
    const/4 v1, 0x2

    #@79
    aget-byte v1, v9, v1

    #@7b
    const/4 v2, 0x2

    #@7c
    if-eq v1, v2, :cond_0

    #@7e
    const/4 v1, 0x2

    #@7f
    aget-byte v1, v9, v1

    #@81
    const/4 v2, 0x3

    #@82
    if-ne v1, v2, :cond_1

    #@84
    .line 296
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@86
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    #@89
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@8c
    move-result v16

    #@8d
    .line 298
    .local v16, "qLength":I
    array-length v1, v9

    #@8e
    add-int/lit8 v1, v1, -0x3

    #@90
    move/from16 v0, v16

    #@92
    if-lt v0, v1, :cond_1

    #@94
    .line 302
    :try_start_0
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@97
    move-result-object v13

    #@98
    .end local v13    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9a
    .line 310
    .end local v16    # "qLength":I
    .restart local v13    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@9c
    invoke-direct {v10, v8, v13}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@9f
    .line 312
    .local v10, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a2
    move-result-object v1

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a7
    .line 192
    return-void

    #@a8
    .line 265
    .end local v7    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .end local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v9    # "data":[B
    .end local v10    # "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .end local v13    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_2
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    #@ab
    move-result v1

    #@ac
    if-eqz v1, :cond_3

    #@ae
    .line 267
    const/4 v1, 0x0

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@b3
    .line 268
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@b5
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@bc
    move-result-object v8

    #@bd
    .restart local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    #@be
    .line 272
    .end local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c1
    move-result-object v1

    #@c2
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@c5
    move-result-object v11

    #@c6
    .line 274
    .restart local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@c9
    move-result-object v8

    #@ca
    .line 275
    .restart local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@cd
    move-result-object v1

    #@ce
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@d1
    move-result-object v3

    #@d2
    .line 277
    .restart local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    #@d4
    .line 279
    new-instance v2, Ljava/security/spec/ECPoint;

    #@d6
    .line 280
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@e1
    move-result-object v4

    #@e2
    .line 281
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e9
    move-result-object v5

    #@ea
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@ed
    move-result-object v5

    #@ee
    .line 279
    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f1
    .line 282
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@f4
    move-result-object v4

    #@f5
    .line 283
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@f8
    move-result-object v5

    #@f9
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@fc
    move-result v5

    #@fd
    .line 277
    invoke-direct {v1, v3, v2, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@100
    move-object/from16 v0, p0

    #@102
    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@104
    goto/16 :goto_0

    #@106
    .line 305
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v7    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .restart local v9    # "data":[B
    .restart local v16    # "qLength":I
    :catch_0
    move-exception v12

    #@107
    .line 306
    .local v12, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@109
    const-string/jumbo v2, "error recovering public key"

    #@10c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v1
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
    .line 517
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [B

    #@6
    .line 519
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@11
    .line 521
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@19
    .line 522
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    #@1c
    move-result v1

    #@1d
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@1f
    .line 515
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
    .line 529
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7
    .line 530
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 531
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@e
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    #@11
    .line 527
    return-void
.end method


# virtual methods
.method public engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 472
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 475
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
    .line 498
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 500
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 503
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    #@9
    .line 505
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 318
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    #@0
    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 382
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    move-result-object v6

    #@12
    .line 383
    .local v6, "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_0

    #@14
    .line 385
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@18
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@1a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@21
    .line 387
    .restart local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@23
    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@26
    .line 407
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v9, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2d
    move-result-object v1

    #@2e
    .line 409
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@30
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@47
    move-result-object v4

    #@48
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@4a
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4d
    move-result-object v3

    #@4e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@51
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@54
    move-result-object v8

    #@55
    .line 408
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@57
    .line 411
    .local v8, "p":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@59
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5b
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5d
    invoke-direct {v2, v3, v9}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@60
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@63
    move-result-object v3

    #@64
    invoke-direct {v7, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@67
    .line 414
    .local v7, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    #@6a
    move-result-object v2

    #@6b
    return-object v2

    #@6c
    .line 389
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v7    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v8    # "p":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6e
    if-nez v2, :cond_2

    #@70
    .line 391
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@72
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@74
    invoke-direct {v9, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@77
    .restart local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    #@78
    .line 395
    .end local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@7a
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@7d
    move-result-object v2

    #@7e
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@81
    move-result-object v1

    #@82
    .line 397
    .restart local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@84
    .line 399
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@86
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@89
    move-result-object v2

    #@8a
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@8c
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8f
    move-result-object v2

    #@90
    .line 400
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@92
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@95
    move-result-object v3

    #@96
    .line 401
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@98
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@9b
    move-result v4

    #@9c
    int-to-long v4, v4

    #@9d
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a0
    move-result-object v4

    #@a1
    .line 402
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@a3
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@aa
    move-result-object v5

    #@ab
    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@ae
    .line 404
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@b0
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    #@b3
    .restart local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto/16 :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 323
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 442
    return-object v1

    #@6
    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

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
    .line 435
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 457
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    #@0
    .prologue
    .line 450
    new-instance v0, Ljava/security/spec/ECPoint;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@19
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    #@0
    .prologue
    .line 493
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
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    #@c
    .line 491
    return-void

    #@d
    .line 493
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 480
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 481
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 483
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "EC Public Key"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 484
    const-string/jumbo v2, "            X: "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@21
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 485
    const-string/jumbo v2, "            Y: "

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    return-object v2
.end method
