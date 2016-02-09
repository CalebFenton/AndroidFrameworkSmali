.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseStreamCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 38
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 43
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v3

    #@c
    .line 44
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 37
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    #@13
    .line 50
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@15
    .line 52
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@17
    .line 53
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@19
    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@1b
    .line 60
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@1d
    .line 57
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    #@0
    .prologue
    .line 355
    if-eqz p3, :cond_0

    #@2
    .line 357
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    #@c
    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@e
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@11
    .line 362
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 334
    if-eqz p3, :cond_0

    #@3
    .line 336
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineUpdate([BII)[B

    #@6
    move-result-object v0

    #@7
    .line 338
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@9
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@c
    .line 340
    return-object v0

    #@d
    .line 343
    .end local v0    # "out":[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@f
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@12
    .line 345
    new-array v1, v2, [B

    #@14
    return-object v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected engineGetIV()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 76
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    mul-int/lit8 v0, v0, 0x8

    #@7
    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 82
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 87
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 89
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@e
    move-result-object v1

    #@f
    .line 94
    .local v1, "engineParams":Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@11
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 96
    return-object v1

    #@15
    .line 99
    .end local v1    # "engineParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@16
    .line 100
    .local v0, "e":Ljava/lang/Exception;
    return-object v3

    #@17
    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@19
    return-object v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    const/4 v2, 0x0

    #@1
    .line 256
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    #@3
    .line 258
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    #@6
    array-length v3, v3

    #@7
    if-eq v1, v3, :cond_0

    #@9
    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    #@b
    aget-object v3, v3, v1

    #@d
    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 271
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    if-nez v2, :cond_1

    #@13
    .line 273
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "can\'t handle parameter "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 266
    .restart local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    #@32
    .line 258
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@38
    .line 278
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3a
    .line 252
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    const/4 v1, 0x0

    #@1
    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 285
    return-void

    #@7
    .line 292
    :catch_0
    move-exception v0

    #@8
    .line 293
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@a
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 142
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@4
    .line 143
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@6
    .line 145
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@8
    .line 150
    instance-of v6, p2, Ljavax/crypto/SecretKey;

    #@a
    if-nez v6, :cond_0

    #@c
    .line 152
    new-instance v6, Ljava/security/InvalidKeyException;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Key for algorithm "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    const-string/jumbo v8, " not suitable for symmetric enryption."

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@30
    throw v6

    #@31
    .line 155
    :cond_0
    instance-of v6, p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@33
    if-eqz v6, :cond_6

    #@35
    move-object v3, p2

    #@36
    .line 157
    check-cast v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@38
    .line 159
    .local v3, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b
    move-result-object v6

    #@3c
    if-eqz v6, :cond_3

    #@3e
    .line 161
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@48
    .line 168
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@4b
    move-result-object v6

    #@4c
    if-eqz v6, :cond_4

    #@4e
    .line 170
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@51
    move-result-object v4

    #@52
    .line 171
    .local v4, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    #@54
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    #@5b
    move-result v8

    #@5c
    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@5f
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@61
    .line 183
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_1

    #@67
    move-object v6, v4

    #@68
    .line 185
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@6a
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@6c
    .line 202
    .end local v3    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1
    :goto_2
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@6e
    if-eqz v6, :cond_2

    #@70
    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@72
    if-eqz v6, :cond_9

    #@74
    .line 227
    :cond_2
    :goto_3
    packed-switch p1, :pswitch_data_0

    #@77
    .line 238
    :try_start_0
    new-instance v6, Ljava/security/InvalidParameterException;

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "unknown opmode "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    const-string/jumbo v8, " passed"

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@97
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@98
    .line 242
    :catch_0
    move-exception v0

    #@99
    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    #@9b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v6

    #@a3
    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    #@a6
    move-result-object v6

    #@a7
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@a9
    goto :goto_0

    #@aa
    .line 173
    :cond_4
    instance-of v6, p3, Ljavax/crypto/spec/PBEParameterSpec;

    #@ac
    if-eqz v6, :cond_5

    #@ae
    .line 175
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@b0
    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    invoke-static {v3, p3, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@b7
    move-result-object v4

    #@b8
    .line 176
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    #@ba
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@bc
    goto :goto_1

    #@bd
    .line 180
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@bf
    const-string/jumbo v7, "PBE requires PBE parameters to be set."

    #@c2
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v6

    #@c6
    .line 188
    .end local v3    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_6
    if-nez p3, :cond_7

    #@c8
    .line 190
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@ca
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    #@cd
    move-result-object v6

    #@ce
    invoke-direct {v4, v6}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@d1
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2

    #@d2
    .line 192
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_7
    instance-of v6, p3, Ljavax/crypto/spec/IvParameterSpec;

    #@d4
    if-eqz v6, :cond_8

    #@d6
    .line 194
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@d8
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@da
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    #@dd
    move-result-object v7

    #@de
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@e1
    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    #@e3
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@e6
    move-result-object v7

    #@e7
    invoke-direct {v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@ea
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v6, v4

    #@eb
    .line 195
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@ed
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@ef
    goto/16 :goto_2

    #@f1
    .line 199
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_8
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@f3
    const-string/jumbo v7, "unknown parameter type."

    #@f6
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@f9
    throw v6

    #@fa
    .line 204
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_9
    move-object v2, p4

    #@fb
    .line 206
    .local v2, "ivRandom":Ljava/security/SecureRandom;
    if-nez v2, :cond_a

    #@fd
    .line 208
    new-instance v2, Ljava/security/SecureRandom;

    #@ff
    .end local v2    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    #@102
    .line 211
    .restart local v2    # "ivRandom":Ljava/security/SecureRandom;
    :cond_a
    if-eq p1, v9, :cond_b

    #@104
    const/4 v6, 0x3

    #@105
    if-ne p1, v6, :cond_c

    #@107
    .line 213
    :cond_b
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@109
    new-array v1, v6, [B

    #@10b
    .line 215
    .local v1, "iv":[B
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@10e
    .line 216
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@110
    invoke-direct {v5, v4, v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@113
    .end local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v5, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v6, v5

    #@114
    .line 217
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@116
    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@118
    move-object v4, v5

    #@119
    .line 212
    .end local v5    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v4    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_3

    #@11b
    .line 221
    .end local v1    # "iv":[B
    :cond_c
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@11d
    const-string/jumbo v7, "no IV set when one expected"

    #@120
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@123
    throw v6

    #@124
    .line 231
    .end local v2    # "ivRandom":Ljava/security/SecureRandom;
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@126
    const/4 v7, 0x1

    #@127
    invoke-interface {v6, v7, v4}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@12a
    .line 138
    :goto_4
    return-void

    #@12b
    .line 235
    :pswitch_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@12d
    const/4 v7, 0x0

    #@12e
    invoke-interface {v6, v7, v4}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@131
    goto :goto_4

    #@132
    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, "ECB"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "can\'t support mode "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 112
    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "NoPadding"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 129
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Padding "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " unknown."

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 125
    :cond_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 321
    return p3

    #@b
    .line 324
    :catch_0
    move-exception v6

    #@c
    .line 325
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@e
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 302
    new-array v4, p3, [B

    #@2
    .line 304
    .local v4, "out":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@4
    const/4 v5, 0x0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    #@b
    .line 306
    return-object v4
.end method
