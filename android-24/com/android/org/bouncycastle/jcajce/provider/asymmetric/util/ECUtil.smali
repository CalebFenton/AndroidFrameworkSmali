.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static convertMidTerms([I)[I
    .locals 6
    .param p0, "k"    # [I

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    .line 51
    new-array v0, v2, [I

    #@6
    .line 53
    .local v0, "res":[I
    array-length v1, p0

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 55
    aget v1, p0, v5

    #@b
    aput v1, v0, v5

    #@d
    .line 108
    :goto_0
    return-object v0

    #@e
    .line 59
    :cond_0
    array-length v1, p0

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Only Trinomials and pentanomials supported"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 64
    :cond_1
    aget v1, p0, v5

    #@1c
    aget v2, p0, v3

    #@1e
    if-ge v1, v2, :cond_3

    #@20
    aget v1, p0, v5

    #@22
    aget v2, p0, v4

    #@24
    if-ge v1, v2, :cond_3

    #@26
    .line 66
    aget v1, p0, v5

    #@28
    aput v1, v0, v5

    #@2a
    .line 67
    aget v1, p0, v3

    #@2c
    aget v2, p0, v4

    #@2e
    if-ge v1, v2, :cond_2

    #@30
    .line 69
    aget v1, p0, v3

    #@32
    aput v1, v0, v3

    #@34
    .line 70
    aget v1, p0, v4

    #@36
    aput v1, v0, v4

    #@38
    goto :goto_0

    #@39
    .line 74
    :cond_2
    aget v1, p0, v4

    #@3b
    aput v1, v0, v3

    #@3d
    .line 75
    aget v1, p0, v3

    #@3f
    aput v1, v0, v4

    #@41
    goto :goto_0

    #@42
    .line 78
    :cond_3
    aget v1, p0, v3

    #@44
    aget v2, p0, v4

    #@46
    if-ge v1, v2, :cond_5

    #@48
    .line 80
    aget v1, p0, v3

    #@4a
    aput v1, v0, v5

    #@4c
    .line 81
    aget v1, p0, v5

    #@4e
    aget v2, p0, v4

    #@50
    if-ge v1, v2, :cond_4

    #@52
    .line 83
    aget v1, p0, v5

    #@54
    aput v1, v0, v3

    #@56
    .line 84
    aget v1, p0, v4

    #@58
    aput v1, v0, v4

    #@5a
    goto :goto_0

    #@5b
    .line 88
    :cond_4
    aget v1, p0, v4

    #@5d
    aput v1, v0, v3

    #@5f
    .line 89
    aget v1, p0, v5

    #@61
    aput v1, v0, v4

    #@63
    goto :goto_0

    #@64
    .line 94
    :cond_5
    aget v1, p0, v4

    #@66
    aput v1, v0, v5

    #@68
    .line 95
    aget v1, p0, v5

    #@6a
    aget v2, p0, v3

    #@6c
    if-ge v1, v2, :cond_6

    #@6e
    .line 97
    aget v1, p0, v5

    #@70
    aput v1, v0, v3

    #@72
    .line 98
    aget v1, p0, v3

    #@74
    aput v1, v0, v4

    #@76
    goto :goto_0

    #@77
    .line 102
    :cond_6
    aget v1, p0, v3

    #@79
    aput v1, v0, v3

    #@7b
    .line 103
    aget v1, p0, v5

    #@7d
    aput v1, v0, v4

    #@7f
    goto :goto_0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v8, p0

    #@5
    .line 177
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@7
    .line 178
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@a
    move-result-object v11

    #@b
    .line 180
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    #@d
    .line 182
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@f
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@12
    move-result-object v11

    #@13
    .line 185
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@15
    .line 186
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v13

    #@19
    .line 187
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@1b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@2e
    move-result-object v5

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@32
    .line 185
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@35
    return-object v12

    #@36
    .line 189
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    #@38
    if-eqz v0, :cond_2

    #@3a
    move-object v9, p0

    #@3b
    .line 191
    check-cast v9, Ljava/security/interfaces/ECPrivateKey;

    #@3d
    .line 192
    .local v9, "privKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@40
    move-result-object v0

    #@41
    const/4 v1, 0x0

    #@42
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@45
    move-result-object v11

    #@46
    .line 193
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@48
    .line 194
    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@4b
    move-result-object v13

    #@4c
    .line 195
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@4e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@61
    move-result-object v5

    #@62
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@65
    .line 193
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@68
    return-object v12

    #@69
    .line 202
    .end local v9    # "privKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    #@6c
    move-result-object v6

    #@6d
    .line 204
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    #@6f
    .line 206
    new-instance v0, Ljava/security/InvalidKeyException;

    #@71
    const-string/jumbo v1, "no encoding for EC private key"

    #@74
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@77
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    .line 217
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    #@79
    .line 218
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, "cannot identify EC private key: "

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@96
    throw v0

    #@97
    .line 209
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@9a
    move-result-object v0

    #@9b
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    #@9e
    move-result-object v10

    #@9f
    .line 211
    .local v10, "privateKey":Ljava/security/PrivateKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPrivateKey;

    #@a1
    if-eqz v0, :cond_4

    #@a3
    .line 213
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a6
    move-result-object v0

    #@a7
    return-object v0

    #@a8
    .line 222
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    #@aa
    const-string/jumbo v1, "can\'t identify EC private key."

    #@ad
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@3
    if-eqz v0, :cond_1

    #@5
    move-object v8, p0

    #@6
    .line 117
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@8
    .line 118
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v11

    #@c
    .line 120
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    #@e
    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@10
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@13
    move-result-object v11

    #@14
    .line 124
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@16
    .line 125
    check-cast v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@18
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b
    move-result-object v13

    #@1c
    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@1e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@31
    move-result-object v5

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@35
    .line 124
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@38
    return-object v12

    #@39
    .line 130
    .restart local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@3b
    .line 131
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v13

    #@3f
    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@41
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@54
    move-result-object v5

    #@55
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@58
    .line 130
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@5b
    return-object v12

    #@5c
    .line 135
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    #@5e
    if-eqz v0, :cond_2

    #@60
    move-object v9, p0

    #@61
    .line 137
    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    #@63
    .line 138
    .local v9, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@66
    move-result-object v0

    #@67
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@6a
    move-result-object v11

    #@6b
    .line 139
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@6d
    .line 140
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@70
    move-result-object v0

    #@71
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@74
    move-result-object v1

    #@75
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@78
    move-result-object v13

    #@79
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@7b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    #@8e
    move-result-object v5

    #@8f
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@92
    .line 139
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@95
    return-object v12

    #@96
    .line 148
    .end local v9    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@99
    move-result-object v6

    #@9a
    .line 150
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    #@9c
    .line 152
    new-instance v0, Ljava/security/InvalidKeyException;

    #@9e
    const-string/jumbo v1, "no encoding for EC public key"

    #@a1
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a5
    .line 163
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    #@a6
    .line 164
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@a8
    new-instance v1, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v2, "cannot identify EC public key: "

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v0

    #@c4
    .line 155
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@c7
    move-result-object v0

    #@c8
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    #@cb
    move-result-object v10

    #@cc
    .line 157
    .local v10, "publicKey":Ljava/security/PublicKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPublicKey;

    #@ce
    if-eqz v0, :cond_4

    #@d0
    .line 159
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@d3
    move-result-object v0

    #@d4
    return-object v0

    #@d5
    .line 168
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    #@d7
    const-string/jumbo v1, "cannot identify EC public key."

    #@da
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v0
.end method

.method public static getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 383
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 387
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 388
    if-nez v0, :cond_0

    #@c
    .line 390
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 404
    :cond_0
    return-object v0
.end method

.method public static getNamedCurveByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    .line 358
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_1

    #@6
    .line 360
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@9
    move-result-object v0

    #@a
    .line 361
    if-nez v0, :cond_0

    #@c
    .line 363
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v0

    #@10
    .line 365
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 367
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@15
    move-result-object v0

    #@16
    .line 377
    :cond_1
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 329
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    .line 331
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_1

    #@6
    .line 333
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@9
    move-result-object v0

    #@a
    .line 334
    if-nez v0, :cond_0

    #@c
    .line 336
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v0

    #@10
    .line 338
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 340
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@15
    move-result-object v0

    #@16
    .line 350
    :cond_1
    return-object v0
.end method

.method public static getNamedCurveOid(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 5
    .param p0, "ecParameterSpec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 308
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    #@3
    move-result-object v1

    #@4
    .local v1, "names":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 310
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 312
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@13
    move-result-object v2

    #@14
    .line 314
    .local v2, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 315
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    .line 314
    if-eqz v3, :cond_0

    #@30
    .line 316
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@3b
    move-result v3

    #@3c
    .line 314
    if-eqz v3, :cond_0

    #@3e
    .line 317
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    #@49
    move-result v3

    #@4a
    .line 314
    if-eqz v3, :cond_0

    #@4c
    .line 319
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4f
    move-result-object v3

    #@50
    return-object v3

    #@51
    .line 323
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1
    const/4 v3, 0x0

    #@52
    return-object v3
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p0, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 249
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 251
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v2

    #@c
    add-int/lit8 v2, v2, 0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 260
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    #@13
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    const/16 v3, 0x30

    #@19
    if-lt v2, v3, :cond_1

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v2

    #@20
    const/16 v3, 0x32

    #@22
    if-gt v2, v3, :cond_1

    #@24
    .line 262
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@29
    return-object v2

    #@2a
    .line 255
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    move-object v1, p0

    #@2b
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 266
    :cond_1
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->lookupOidByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 270
    :catch_0
    move-exception v0

    #@32
    .line 271
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->lookupOidByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    move-result-object v2

    #@36
    return-object v2
.end method

.method public static getOrderBitLength(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "order"    # Ljava/math/BigInteger;
    .param p1, "privateValue"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 227
    if-nez p0, :cond_1

    #@2
    .line 229
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@7
    move-result-object v0

    #@8
    .line 231
    .local v0, "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v0, :cond_0

    #@a
    .line 233
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 236
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 240
    .end local v0    # "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method private static lookupOidByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v0

    #@4
    .line 279
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    #@6
    .line 281
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v0

    #@a
    .line 282
    if-nez v0, :cond_0

    #@c
    .line 284
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    move-result-object v0

    #@10
    .line 302
    :cond_0
    return-object v0
.end method
