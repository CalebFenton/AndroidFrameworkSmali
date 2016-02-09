.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 49
    new-array v0, v2, [I

    #@6
    .line 51
    .local v0, "res":[I
    array-length v1, p0

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 53
    aget v1, p0, v5

    #@b
    aput v1, v0, v5

    #@d
    .line 106
    :goto_0
    return-object v0

    #@e
    .line 57
    :cond_0
    array-length v1, p0

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Only Trinomials and pentanomials supported"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 62
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
    .line 64
    aget v1, p0, v5

    #@28
    aput v1, v0, v5

    #@2a
    .line 65
    aget v1, p0, v3

    #@2c
    aget v2, p0, v4

    #@2e
    if-ge v1, v2, :cond_2

    #@30
    .line 67
    aget v1, p0, v3

    #@32
    aput v1, v0, v3

    #@34
    .line 68
    aget v1, p0, v4

    #@36
    aput v1, v0, v4

    #@38
    goto :goto_0

    #@39
    .line 72
    :cond_2
    aget v1, p0, v4

    #@3b
    aput v1, v0, v3

    #@3d
    .line 73
    aget v1, p0, v3

    #@3f
    aput v1, v0, v4

    #@41
    goto :goto_0

    #@42
    .line 76
    :cond_3
    aget v1, p0, v3

    #@44
    aget v2, p0, v4

    #@46
    if-ge v1, v2, :cond_5

    #@48
    .line 78
    aget v1, p0, v3

    #@4a
    aput v1, v0, v5

    #@4c
    .line 79
    aget v1, p0, v5

    #@4e
    aget v2, p0, v4

    #@50
    if-ge v1, v2, :cond_4

    #@52
    .line 81
    aget v1, p0, v5

    #@54
    aput v1, v0, v3

    #@56
    .line 82
    aget v1, p0, v4

    #@58
    aput v1, v0, v4

    #@5a
    goto :goto_0

    #@5b
    .line 86
    :cond_4
    aget v1, p0, v4

    #@5d
    aput v1, v0, v3

    #@5f
    .line 87
    aget v1, p0, v5

    #@61
    aput v1, v0, v4

    #@63
    goto :goto_0

    #@64
    .line 92
    :cond_5
    aget v1, p0, v4

    #@66
    aput v1, v0, v5

    #@68
    .line 93
    aget v1, p0, v5

    #@6a
    aget v2, p0, v3

    #@6c
    if-ge v1, v2, :cond_6

    #@6e
    .line 95
    aget v1, p0, v5

    #@70
    aput v1, v0, v3

    #@72
    .line 96
    aget v1, p0, v3

    #@74
    aput v1, v0, v4

    #@76
    goto :goto_0

    #@77
    .line 100
    :cond_6
    aget v1, p0, v3

    #@79
    aput v1, v0, v3

    #@7b
    .line 101
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
    .line 173
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v8, p0

    #@5
    .line 175
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@7
    .line 176
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@a
    move-result-object v11

    #@b
    .line 178
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    #@d
    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@f
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@12
    move-result-object v11

    #@13
    .line 183
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@15
    .line 184
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    #@18
    move-result-object v13

    #@19
    .line 185
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
    .line 183
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@35
    return-object v12

    #@36
    .line 187
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    #@38
    if-eqz v0, :cond_2

    #@3a
    move-object v9, p0

    #@3b
    .line 189
    check-cast v9, Ljava/security/interfaces/ECPrivateKey;

    #@3d
    .line 190
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
    .line 191
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@48
    .line 192
    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@4b
    move-result-object v13

    #@4c
    .line 193
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
    .line 191
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@68
    return-object v12

    #@69
    .line 200
    .end local v9    # "privKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    #@6c
    move-result-object v6

    #@6d
    .line 202
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    #@6f
    .line 204
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
    .line 215
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    #@79
    .line 216
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
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 207
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
    .line 209
    .local v10, "privateKey":Ljava/security/PrivateKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPrivateKey;

    #@a1
    if-eqz v0, :cond_4

    #@a3
    .line 211
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@a6
    move-result-object v0

    #@a7
    return-object v0

    #@a8
    .line 220
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
    .line 113
    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@3
    if-eqz v0, :cond_1

    #@5
    move-object v8, p0

    #@6
    .line 115
    check-cast v8, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@8
    .line 116
    .local v8, "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@b
    move-result-object v11

    #@c
    .line 118
    .local v11, "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    #@e
    .line 120
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@10
    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@13
    move-result-object v11

    #@14
    .line 122
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@16
    .line 123
    check-cast v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@18
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b
    move-result-object v13

    #@1c
    .line 124
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
    .line 122
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@38
    return-object v12

    #@39
    .line 128
    .restart local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    :cond_0
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@3b
    .line 129
    invoke-interface {v8}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v13

    #@3f
    .line 130
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
    .line 128
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@5b
    return-object v12

    #@5c
    .line 133
    .end local v8    # "k":Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    #@5e
    if-eqz v0, :cond_2

    #@60
    move-object v9, p0

    #@61
    .line 135
    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    #@63
    .line 136
    .local v9, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@66
    move-result-object v0

    #@67
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@6a
    move-result-object v11

    #@6b
    .line 137
    .restart local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@6d
    .line 138
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
    .line 139
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
    .line 137
    invoke-direct {v12, v13, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    #@95
    return-object v12

    #@96
    .line 146
    .end local v9    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v11    # "s":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@99
    move-result-object v6

    #@9a
    .line 148
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    #@9c
    .line 150
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
    .line 161
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    #@a6
    .line 162
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
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 153
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
    .line 155
    .local v10, "publicKey":Ljava/security/PublicKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPublicKey;

    #@ce
    if-eqz v0, :cond_4

    #@d0
    .line 157
    invoke-static {v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@d3
    move-result-object v0

    #@d4
    return-object v0

    #@d5
    .line 166
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
    .line 299
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 301
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 303
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 304
    if-nez v0, :cond_0

    #@c
    .line 306
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 320
    :cond_0
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 272
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v0

    #@4
    .line 274
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_1

    #@6
    .line 276
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@9
    move-result-object v0

    #@a
    .line 277
    if-nez v0, :cond_0

    #@c
    .line 279
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@f
    move-result-object v0

    #@10
    .line 281
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 283
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@15
    move-result-object v0

    #@16
    .line 293
    :cond_1
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    #@6
    .line 249
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    move-result-object v0

    #@a
    .line 250
    if-nez v0, :cond_0

    #@c
    .line 252
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    move-result-object v0

    #@10
    .line 266
    :cond_0
    return-object v0
.end method

.method public static getOrderBitLength(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "order"    # Ljava/math/BigInteger;
    .param p1, "privateValue"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 225
    if-nez p0, :cond_1

    #@2
    .line 227
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@7
    move-result-object v0

    #@8
    .line 229
    .local v0, "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v0, :cond_0

    #@a
    .line 231
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 234
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
    .line 238
    .end local v0    # "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@1b
    move-result v1

    #@1c
    return v1
.end method
