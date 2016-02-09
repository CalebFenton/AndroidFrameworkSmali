.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "KeyFactorySpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDSA;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDH;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;

.field configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@5
    .line 38
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@7
    .line 35
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@a
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@c
    invoke-direct {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@f
    return-object v0

    #@10
    .line 132
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@16
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@18
    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    #@1a
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1c
    invoke-direct {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@1f
    return-object v0

    #@20
    .line 137
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@a
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@c
    invoke-direct {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@f
    return-object v0

    #@10
    .line 148
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@16
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@18
    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    #@1a
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@1c
    invoke-direct {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@1f
    return-object v0

    #@20
    .line 153
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 62
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    #@3
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    #@b
    if-eqz v3, :cond_1

    #@d
    move-object v2, p1

    #@e
    .line 64
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    #@10
    .line 65
    .local v2, "k":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@13
    move-result-object v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 67
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@18
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1f
    move-result-object v5

    #@20
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@23
    return-object v3

    #@24
    .line 71
    :cond_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@26
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@29
    move-result-object v0

    #@2a
    .line 73
    .local v0, "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@2c
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@37
    move-result-object v6

    #@38
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@3f
    move-result-object v5

    #@40
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@43
    return-object v3

    #@44
    .line 76
    .end local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v2    # "k":Ljava/security/interfaces/ECPublicKey;
    :cond_1
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    #@46
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_3

    #@4c
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    #@4e
    if-eqz v3, :cond_3

    #@50
    move-object v1, p1

    #@51
    .line 78
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    #@53
    .line 80
    .local v1, "k":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@56
    move-result-object v3

    #@57
    if-eqz v3, :cond_2

    #@59
    .line 82
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    #@5b
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@5e
    move-result-object v4

    #@5f
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@66
    return-object v3

    #@67
    .line 86
    :cond_2
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@69
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@6c
    move-result-object v0

    #@6d
    .line 88
    .restart local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    #@6f
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@7a
    move-result-object v6

    #@7b
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    #@82
    move-result-object v5

    #@83
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@86
    return-object v3

    #@87
    .line 91
    .end local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v1    # "k":Ljava/security/interfaces/ECPrivateKey;
    :cond_3
    const-class v3, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@89
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_5

    #@8f
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    #@91
    if-eqz v3, :cond_5

    #@93
    move-object v2, p1

    #@94
    .line 93
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    #@96
    .line 94
    .restart local v2    # "k":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@99
    move-result-object v3

    #@9a
    if-eqz v3, :cond_4

    #@9c
    .line 96
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@9e
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@a1
    move-result-object v4

    #@a2
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@a5
    move-result-object v5

    #@a6
    invoke-static {v4, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a9
    move-result-object v4

    #@aa
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@ad
    move-result-object v5

    #@ae
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b1
    move-result-object v5

    #@b2
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@b5
    return-object v3

    #@b6
    .line 100
    :cond_4
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@b8
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@bb
    move-result-object v0

    #@bc
    .line 102
    .restart local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;

    #@be
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@c1
    move-result-object v4

    #@c2
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@c5
    move-result-object v5

    #@c6
    invoke-static {v4, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c9
    move-result-object v4

    #@ca
    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@cd
    return-object v3

    #@ce
    .line 105
    .end local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v2    # "k":Ljava/security/interfaces/ECPublicKey;
    :cond_5
    const-class v3, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@d0
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d3
    move-result v3

    #@d4
    if-eqz v3, :cond_7

    #@d6
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    #@d8
    if-eqz v3, :cond_7

    #@da
    move-object v1, p1

    #@db
    .line 107
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    #@dd
    .line 109
    .restart local v1    # "k":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@e0
    move-result-object v3

    #@e1
    if-eqz v3, :cond_6

    #@e3
    .line 111
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@e5
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@e8
    move-result-object v4

    #@e9
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@ec
    move-result-object v5

    #@ed
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@f0
    move-result-object v5

    #@f1
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@f4
    return-object v3

    #@f5
    .line 115
    :cond_6
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@f7
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@fa
    move-result-object v0

    #@fb
    .line 117
    .restart local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    #@fd
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@100
    move-result-object v4

    #@101
    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@104
    return-object v3

    #@105
    .line 121
    .end local v0    # "implicitSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v1    # "k":Ljava/security/interfaces/ECPrivateKey;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@108
    move-result-object v3

    #@109
    return-object v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@6
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    #@8
    .end local p1    # "key":Ljava/security/Key;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@a
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@d
    return-object v0

    #@e
    .line 49
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@14
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    #@16
    .end local p1    # "key":Ljava/security/Key;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@18
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@1b
    return-object v0

    #@1c
    .line 54
    .restart local p1    # "key":Ljava/security/Key;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    #@1e
    const-string/jumbo v1, "key type unknown"

    #@21
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 161
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 163
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@16
    invoke-direct {v1, v2, p1, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@19
    return-object v1

    #@1a
    .line 167
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "algorithm identifier "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " in key not recognised"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method public generatePublic(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 176
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    #@14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@16
    invoke-direct {v1, v2, p1, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@19
    return-object v1

    #@1a
    .line 182
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "algorithm identifier "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " in key not recognised"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method
