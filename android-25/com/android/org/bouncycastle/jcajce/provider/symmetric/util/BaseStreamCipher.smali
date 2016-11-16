.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseStreamCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

.field private digest:I

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private keySizeInBits:I

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V
    .locals 1
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 61
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;III)V

    #@4
    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;III)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I
    .param p3, "keySizeInBits"    # I
    .param p4, "digest"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 64
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
    .line 52
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@15
    .line 54
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@17
    .line 55
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@19
    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@1b
    .line 71
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@1d
    .line 72
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    #@1f
    .line 73
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    #@21
    .line 68
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    add-int v0, p5, p3

    #@2
    array-length v1, p4

    #@3
    if-le v0, v1, :cond_0

    #@5
    .line 392
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@7
    const-string/jumbo v1, "output buffer too short for input."

    #@a
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 395
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@12
    move-object v1, p1

    #@13
    move v2, p2

    #@14
    move v3, p3

    #@15
    move-object v4, p4

    #@16
    move v5, p5

    #@17
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    #@1a
    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@1c
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@1f
    .line 402
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
    .line 368
    if-eqz p3, :cond_0

    #@3
    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineUpdate([BII)[B

    #@6
    move-result-object v0

    #@7
    .line 372
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@9
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@c
    .line 374
    return-object v0

    #@d
    .line 377
    .end local v0    # "out":[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@f
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->reset()V

    #@12
    .line 379
    new-array v1, v2, [B

    #@14
    return-object v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 78
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
    .line 83
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
    .line 89
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
    .line 95
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 100
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 102
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@e
    move-result-object v1

    #@f
    .line 107
    .local v1, "engineParams":Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@11
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 109
    return-object v1

    #@15
    .line 112
    .end local v1    # "engineParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@16
    .line 113
    .local v0, "e":Ljava/lang/Exception;
    return-object v3

    #@17
    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

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
    .line 282
    const/4 v2, 0x0

    #@1
    .line 284
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    #@3
    .line 286
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
    .line 290
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
    .line 299
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    if-nez v2, :cond_1

    #@13
    .line 301
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
    .line 294
    .restart local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    #@32
    .line 286
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@38
    .line 306
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3a
    .line 280
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
    .line 317
    const/4 v1, 0x0

    #@1
    :try_start_0
    nop

    #@2
    nop

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 313
    return-void

    #@7
    .line 320
    :catch_0
    move-exception v0

    #@8
    .line 321
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 15
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
    .line 155
    const/4 v1, 0x0

    #@1
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@3
    .line 156
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@6
    .line 158
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@9
    .line 163
    move-object/from16 v0, p2

    #@b
    instance-of v1, v0, Ljavax/crypto/SecretKey;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 165
    new-instance v1, Ljava/security/InvalidKeyException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Key for algorithm "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " not suitable for symmetric enryption."

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 168
    :cond_0
    move-object/from16 v0, p2

    #@36
    instance-of v1, v0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    #@38
    if-eqz v1, :cond_4

    #@3a
    move-object/from16 v11, p2

    #@3c
    .line 170
    nop

    #@3d
    nop

    #@3e
    .line 171
    .local v11, "k":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    #@40
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    move-object/from16 v0, p3

    #@42
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@44
    .line 172
    instance-of v1, v11, Lcom/android/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    #@46
    if-eqz v1, :cond_1

    #@48
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@4a
    if-nez v1, :cond_1

    #@4c
    .line 174
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    #@4e
    move-object v1, v11

    #@4f
    nop

    #@50
    nop

    #@51
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->getSalt()[B

    #@54
    move-result-object v3

    #@55
    move-object v1, v11

    #@56
    nop

    #@57
    nop

    #@58
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->getIterationCount()I

    #@5b
    move-result v1

    #@5c
    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@61
    .line 177
    :cond_1
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->getEncoded()[B

    #@64
    move-result-object v1

    #@65
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    #@67
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    #@69
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@6b
    mul-int/lit8 v5, v2, 0x8

    #@6d
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@6f
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@71
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    const/4 v2, 0x2

    #@76
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@79
    move-result-object v13

    #@7a
    .line 230
    .end local v11    # "k":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    .local v13, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@7c
    if-eqz v1, :cond_3

    #@7e
    instance-of v1, v13, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@80
    if-eqz v1, :cond_c

    #@82
    .line 255
    :cond_3
    :goto_1
    packed-switch p1, :pswitch_data_0

    #@85
    .line 266
    :try_start_0
    new-instance v1, Ljava/security/InvalidParameterException;

    #@87
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v3, "unknown opmode "

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    move/from16 v0, p1

    #@95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    const-string/jumbo v3, " passed"

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a8
    .line 270
    :catch_0
    move-exception v8

    #@a9
    .line 271
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@ab
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v1

    #@b3
    .line 179
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    move-object/from16 v0, p2

    #@b5
    instance-of v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@b7
    if-eqz v1, :cond_8

    #@b9
    move-object/from16 v12, p2

    #@bb
    .line 181
    nop

    #@bc
    nop

    #@bd
    .line 183
    .local v12, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    move-result-object v1

    #@c1
    if-eqz v1, :cond_5

    #@c3
    .line 185
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ca
    move-result-object v1

    #@cb
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@cd
    .line 192
    :goto_2
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@d0
    move-result-object v1

    #@d1
    if-eqz v1, :cond_6

    #@d3
    .line 194
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@d6
    move-result-object v13

    #@d7
    .line 195
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@d9
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    #@dc
    move-result-object v2

    #@dd
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    #@e0
    move-result v3

    #@e1
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@e4
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@e6
    .line 207
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_3
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    #@e9
    move-result v1

    #@ea
    if-eqz v1, :cond_2

    #@ec
    move-object v1, v13

    #@ed
    .line 209
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@ef
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@f1
    goto :goto_0

    #@f2
    .line 189
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    #@f8
    goto :goto_2

    #@f9
    .line 197
    :cond_6
    move-object/from16 v0, p3

    #@fb
    instance-of v1, v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@fd
    if-eqz v1, :cond_7

    #@ff
    .line 199
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@101
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    move-object/from16 v0, p3

    #@107
    invoke-static {v12, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@10a
    move-result-object v13

    #@10b
    .line 200
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    nop

    #@10c
    nop

    #@10d
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    move-object/from16 v0, p3

    #@10f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@111
    goto :goto_3

    #@112
    .line 204
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@114
    const-string/jumbo v2, "PBE requires PBE parameters to be set."

    #@117
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v1

    #@11b
    .line 212
    .end local v12    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_8
    if-nez p3, :cond_a

    #@11d
    .line 214
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    #@11f
    if-lez v1, :cond_9

    #@121
    .line 216
    new-instance v1, Ljava/security/InvalidKeyException;

    #@123
    const-string/jumbo v2, "Algorithm requires a PBE key"

    #@126
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@129
    throw v1

    #@12a
    .line 218
    :cond_9
    new-instance v13, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@12c
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@12f
    move-result-object v1

    #@130
    invoke-direct {v13, v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@133
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_0

    #@135
    .line 220
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_a
    move-object/from16 v0, p3

    #@137
    instance-of v1, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@139
    if-eqz v1, :cond_b

    #@13b
    .line 222
    new-instance v13, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@13d
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@13f
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@142
    move-result-object v2

    #@143
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@146
    nop

    #@147
    nop

    #@148
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@14b
    move-result-object v2

    #@14c
    invoke-direct {v13, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@14f
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v13

    #@150
    .line 223
    nop

    #@151
    nop

    #@152
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@154
    goto/16 :goto_0

    #@156
    .line 227
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_b
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@158
    const-string/jumbo v2, "unknown parameter type."

    #@15b
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@15e
    throw v1

    #@15f
    .line 232
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_c
    move-object/from16 v10, p4

    #@161
    .line 234
    .local v10, "ivRandom":Ljava/security/SecureRandom;
    if-nez p4, :cond_d

    #@163
    .line 236
    new-instance v10, Ljava/security/SecureRandom;

    #@165
    .end local v10    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    #@168
    .line 239
    .restart local v10    # "ivRandom":Ljava/security/SecureRandom;
    :cond_d
    const/4 v1, 0x1

    #@169
    move/from16 v0, p1

    #@16b
    if-eq v0, v1, :cond_e

    #@16d
    const/4 v1, 0x3

    #@16e
    move/from16 v0, p1

    #@170
    if-ne v0, v1, :cond_f

    #@172
    .line 241
    :cond_e
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    #@174
    new-array v9, v1, [B

    #@176
    .line 243
    .local v9, "iv":[B
    invoke-virtual {v10, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@179
    .line 244
    new-instance v14, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@17b
    invoke-direct {v14, v13, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@17e
    .end local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v14, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v14

    #@17f
    .line 245
    nop

    #@180
    nop

    #@181
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@183
    move-object v13, v14

    #@184
    .line 240
    .end local v14    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v13    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_1

    #@186
    .line 249
    .end local v9    # "iv":[B
    :cond_f
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@188
    const-string/jumbo v2, "no IV set when one expected"

    #@18b
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@18e
    throw v1

    #@18f
    .line 259
    .end local v10    # "ivRandom":Ljava/security/SecureRandom;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@191
    const/4 v2, 0x1

    #@192
    invoke-interface {v1, v2, v13}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@195
    .line 151
    :goto_4
    return-void

    #@196
    .line 263
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@198
    const/4 v2, 0x0

    #@199
    invoke-interface {v1, v2, v13}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@19c
    goto :goto_4

    #@19d
    .line 255
    nop

    #@19e
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
    .line 127
    const-string/jumbo v0, "ECB"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 129
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
    .line 125
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
    .line 140
    const-string/jumbo v0, "NoPadding"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 142
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
    .line 138
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
    .line 345
    add-int v0, p5, p3

    #@2
    array-length v1, p4

    #@3
    if-le v0, v1, :cond_0

    #@5
    .line 347
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@7
    const-string/jumbo v1, "output buffer too short for input."

    #@a
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 352
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/org/bouncycastle/crypto/StreamCipher;

    #@10
    move-object v1, p1

    #@11
    move v2, p2

    #@12
    move v3, p3

    #@13
    move-object v4, p4

    #@14
    move v5, p5

    #@15
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 354
    return p3

    #@19
    .line 357
    :catch_0
    move-exception v6

    #@1a
    .line 359
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 330
    new-array v4, p3, [B

    #@2
    .line 332
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
    .line 334
    return-object v4
.end method
