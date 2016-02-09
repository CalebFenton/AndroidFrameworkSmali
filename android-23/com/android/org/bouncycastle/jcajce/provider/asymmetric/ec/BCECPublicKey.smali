.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
.super Ljava/lang/Object;
.source "BCECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field static final serialVersionUID:J = 0x219f7a8aa3ea4824L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private withCompression:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 186
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 187
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@c
    .line 188
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@f
    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 166
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 167
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    .line 168
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@13
    .line 169
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@15
    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p4, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 136
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@b
    move-result-object v0

    #@c
    .line 138
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 140
    if-nez p3, :cond_0

    #@10
    .line 142
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@1b
    move-result-object v1

    #@1c
    .line 144
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@22
    .line 153
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@24
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@27
    move-result-object v2

    #@28
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4a
    .line 155
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@4c
    .line 134
    return-void

    #@4d
    .line 148
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@58
    move-result-object v1

    #@59
    .line 150
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5f
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    .param p3, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p4, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v2, "EC"

    #@6
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 111
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@b
    move-result-object v0

    #@c
    .line 113
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 114
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    .line 116
    if-nez p3, :cond_0

    #@16
    .line 118
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
    .line 120
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@28
    .line 127
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@2a
    .line 109
    return-void

    #@2b
    .line 124
    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 57
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    .line 58
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@12
    .line 59
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@14
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@16
    .line 60
    iget-object v0, p2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@18
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1a
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    const-string/jumbo v3, "EC"

    #@7
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@9
    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@b
    .line 80
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@11
    .line 82
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 84
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1e
    move-result-object v0

    #@1f
    .line 85
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
    .line 88
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4d
    .line 89
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@50
    move-result-object v3

    #@51
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@54
    move-result-object v3

    #@55
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@57
    .line 102
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@59
    .line 77
    return-void

    #@5a
    .line 93
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5f
    move-result-object v3

    #@60
    if-nez v3, :cond_1

    #@62
    .line 95
    invoke-interface {p3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@65
    move-result-object v2

    #@66
    .line 97
    .local v2, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@69
    move-result-object v3

    #@6a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@73
    move-result-object v4

    #@74
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@76
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@7d
    move-result-object v5

    #@7e
    const/4 v6, 0x0

    #@7f
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@82
    move-result-object v3

    #@83
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@85
    .line 99
    .end local v2    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@87
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPublicKeySpec;
    .param p3, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 68
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@a
    .line 69
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@10
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1d
    .line 71
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1f
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "EC"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@8
    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@e
    .line 177
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@14
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@21
    .line 174
    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4
    .param p1, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "dp"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    #@2
    .line 195
    new-instance v1, Ljava/security/spec/ECPoint;

    #@4
    .line 196
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
    .line 197
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
    .line 195
    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1f
    .line 198
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@22
    move-result-object v2

    #@23
    .line 199
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@2a
    move-result v3

    #@2b
    .line 193
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
    .line 339
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    #@5
    move-result-object v2

    #@6
    .line 340
    .local v2, "val":[B
    array-length v3, v2

    #@7
    if-ge v3, v6, :cond_0

    #@9
    .line 342
    new-array v1, v6, [B

    #@b
    .line 343
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
    .line 344
    move-object v2, v1

    #@14
    .line 347
    .end local v1    # "tmp":[B
    :cond_0
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-eq v0, v6, :cond_1

    #@17
    .line 349
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
    .line 347
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 337
    :cond_1
    return-void
.end method

.method private populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 17
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 204
    new-instance v15, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@2
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
    .line 208
    .local v15, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 210
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v14

    #@19
    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b
    .line 211
    .local v14, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@1e
    move-result-object v11

    #@1f
    .line 213
    .local v11, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@22
    move-result-object v8

    #@23
    .line 214
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@26
    move-result-object v1

    #@27
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@2a
    move-result-object v3

    #@2b
    .line 216
    .local v3, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@2d
    .line 217
    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 219
    new-instance v4, Ljava/security/spec/ECPoint;

    #@33
    .line 220
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
    .line 221
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
    .line 219
    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4e
    .line 222
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@51
    move-result-object v5

    #@52
    .line 223
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@55
    move-result-object v6

    #@56
    .line 216
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@59
    move-object/from16 v0, p0

    #@5b
    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@5d
    .line 246
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v14    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@60
    move-result-object v7

    #@61
    .line 247
    .local v7, "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@64
    move-result-object v9

    #@65
    .line 248
    .local v9, "data":[B
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@67
    invoke-direct {v13, v9}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@6a
    .line 253
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
    .line 254
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
    .line 256
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@86
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    #@89
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@8c
    move-result v16

    #@8d
    .line 258
    .local v16, "qLength":I
    array-length v1, v9

    #@8e
    add-int/lit8 v1, v1, -0x3

    #@90
    move/from16 v0, v16

    #@92
    if-lt v0, v1, :cond_1

    #@94
    .line 262
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
    .line 270
    .end local v16    # "qLength":I
    .restart local v13    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@9c
    invoke-direct {v10, v8, v13}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@9f
    .line 272
    .local v10, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a2
    move-result-object v1

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a7
    .line 202
    return-void

    #@a8
    .line 225
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
    .line 227
    const/4 v1, 0x0

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@b3
    .line 228
    move-object/from16 v0, p0

    #@b5
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@b7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@be
    move-result-object v8

    #@bf
    .restart local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    #@c0
    .line 232
    .end local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c3
    move-result-object v1

    #@c4
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@c7
    move-result-object v11

    #@c8
    .line 234
    .restart local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@cb
    move-result-object v8

    #@cc
    .line 235
    .restart local v8    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    #@cf
    move-result-object v1

    #@d0
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@d3
    move-result-object v3

    #@d4
    .line 237
    .restart local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    #@d6
    .line 239
    new-instance v2, Ljava/security/spec/ECPoint;

    #@d8
    .line 240
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@db
    move-result-object v4

    #@dc
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@e3
    move-result-object v4

    #@e4
    .line 241
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@eb
    move-result-object v5

    #@ec
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@ef
    move-result-object v5

    #@f0
    .line 239
    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f3
    .line 242
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@f6
    move-result-object v4

    #@f7
    .line 243
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@fa
    move-result-object v5

    #@fb
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@fe
    move-result v5

    #@ff
    .line 237
    invoke-direct {v1, v3, v2, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@102
    move-object/from16 v0, p0

    #@104
    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@106
    goto/16 :goto_0

    #@108
    .line 265
    .end local v3    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v11    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v7    # "bits":Lcom/android/org/bouncycastle/asn1/DERBitString;
    .restart local v9    # "data":[B
    .restart local v16    # "qLength":I
    :catch_0
    move-exception v12

    #@109
    .line 266
    .local v12, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10b
    const-string/jumbo v2, "error recovering public key"

    #@10e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@111
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
    .line 437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 441
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@10
    move-result-object v1

    #@11
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@14
    .line 443
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@16
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@18
    .line 435
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
    .line 450
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 452
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@a
    .line 448
    return-void
.end method


# virtual methods
.method public engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@6
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@8
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

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
    .line 418
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 420
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 423
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@9
    .line 425
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 277
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    #@0
    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 292
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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
    .line 293
    .local v6, "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_0

    #@14
    .line 295
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@18
    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@1a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@21
    .line 297
    .restart local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@23
    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@26
    .line 317
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v9, "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2d
    move-result-object v1

    #@2e
    .line 321
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@30
    if-nez v2, :cond_3

    #@32
    .line 324
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@4b
    move-result-object v4

    #@4c
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@4e
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@51
    move-result-object v3

    #@52
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@55
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@58
    move-result-object v8

    #@59
    .line 323
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@5b
    .line 332
    .local v8, "p":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :goto_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5d
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5f
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@61
    invoke-direct {v2, v3, v9}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@64
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@67
    move-result-object v3

    #@68
    invoke-direct {v7, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@6b
    .line 334
    .local v7, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    #@6e
    move-result-object v2

    #@6f
    return-object v2

    #@70
    .line 299
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v7    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v8    # "p":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@72
    if-nez v2, :cond_2

    #@74
    .line 301
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@76
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@78
    invoke-direct {v9, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@7b
    .restart local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    #@7c
    .line 305
    .end local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@7e
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@81
    move-result-object v2

    #@82
    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@85
    move-result-object v1

    #@86
    .line 307
    .restart local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@88
    .line 309
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8a
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@8d
    move-result-object v2

    #@8e
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@90
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@93
    move-result-object v2

    #@94
    .line 310
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@96
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@99
    move-result-object v3

    #@9a
    .line 311
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@9c
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@9f
    move-result v4

    #@a0
    int-to-long v4, v4

    #@a1
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@a4
    move-result-object v4

    #@a5
    .line 312
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@a7
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@aa
    move-result-object v5

    #@ab
    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    #@ae
    move-result-object v5

    #@af
    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@b2
    .line 314
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    #@b4
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    #@b7
    .restart local v9    # "params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto/16 :goto_0

    #@b9
    .line 329
    .end local v0    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    #@bb
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@c6
    move-result-object v3

    #@c7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d2
    move-result-object v4

    #@d3
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@d5
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d8
    move-result-object v3

    #@d9
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@dc
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@df
    move-result-object v8

    #@e0
    .line 328
    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@e2
    .restart local v8    # "p":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto/16 :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
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
    .line 360
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 362
    return-object v1

    #@6
    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@8
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

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
    .line 355
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 377
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    #@0
    .prologue
    .line 370
    new-instance v0, Ljava/security/spec/ECPoint;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .line 430
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 413
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
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    #@c
    .line 411
    return-void

    #@d
    .line 413
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
    .line 400
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 401
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "line.separator"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 403
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "EC Public Key"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 404
    const-string/jumbo v2, "            X: "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .line 405
    const-string/jumbo v2, "            Y: "

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

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
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    return-object v2
.end method
