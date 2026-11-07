.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseStreamCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist availableSpecs:[Ljava/lang/Class;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

.field private blacklist digest:I

.field private blacklist ivLength:I

.field private blacklist ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

.field private blacklist keySizeInBits:I

.field private blacklist pbeAlgorithm:Ljava/lang/String;

.field private blacklist pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;I)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I

    .line 65
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;III)V

    .line 66
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;II)V
    .registers 5
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I
    .param p3, "keySizeInBits"    # I

    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;III)V

    .line 74
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;III)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I
    .param p3, "keySizeInBits"    # I
    .param p4, "digest"    # I

    .line 81
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 56
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 59
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    .line 83
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    .line 84
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    .line 85
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    .line 86
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 14
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

    .line 424
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1d

    .line 429
    if-eqz p3, :cond_12

    .line 431
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v3, "input":[B
    .local v4, "inputOffset":I
    .local v5, "inputLen":I
    .local v6, "output":[B
    .local v7, "outputOffset":I
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    goto :goto_17

    .line 429
    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_12
    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 434
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    .restart local v5    # "inputLen":I
    .restart local v6    # "output":[B
    .restart local v7    # "outputOffset":I
    :goto_17
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 436
    return v5

    .line 426
    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_1d
    move-object v3, p1

    move v4, p2

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 402
    if-eqz p3, :cond_c

    .line 404
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    .line 406
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 408
    return-object v0

    .line 411
    .end local v0    # "out":[B
    :cond_c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->reset()V

    .line 413
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 101
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 2
    .param p1, "inputLen"    # I

    .line 107
    return p1
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_93

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_17

    .line 118
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 119
    .local v0, "engineParams":Ljava/security/AlgorithmParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 121
    return-object v0

    .line 123
    .end local v0    # "engineParams":Ljava/security/AlgorithmParameters;
    :catch_14
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_93

    .line 130
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_32

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_32
    const-string v1, "ChaCha7539"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 138
    const-string v0, "ChaCha7539"

    goto :goto_71

    .line 140
    :cond_3d
    const-string v1, "Grain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 142
    const-string v0, "Grainv1"

    goto :goto_71

    .line 144
    :cond_48
    const-string v1, "HC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 146
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 147
    .local v1, "endIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .end local v1    # "endIndex":I
    :cond_71
    :goto_71
    :try_start_71
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 153
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_87} :catch_88

    .line 158
    goto :goto_93

    .line 155
    :catch_88
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9
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

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_29

    .line 331
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_c

    goto :goto_29

    .line 335
    :cond_c
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t handle parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 340
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 341
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_7} :catch_9

    .line 356
    nop

    .line 357
    return-void

    .line 353
    :catch_9
    move-exception v0

    .line 355
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 16
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

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 201
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 208
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_160

    .line 213
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_4f

    .line 215
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    .line 216
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
    move-object v1, p3

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 217
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v1, :cond_34

    .line 219
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->getSalt()[B

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->getIterationCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 222
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->getEncoded()[B

    move-result-object v4

    iget v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->keySizeInBits:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    mul-int/lit8 v8, v1, 0x8

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x2

    invoke-static/range {v4 .. v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 223
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_e5

    .line 224
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_4f
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_af

    .line 226
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 228
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_6d

    .line 234
    :cond_67
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 237
    :goto_6d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 240
    .local v1, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_9a

    .line 242
    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_87
    instance-of v1, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_a7

    .line 244
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 245
    .restart local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    move-object v2, p3

    check-cast v2, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 252
    :goto_9a
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v2

    if-eqz v2, :cond_a5

    .line 254
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 256
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_a5
    move-object v0, v1

    goto :goto_e5

    .line 249
    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_a7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PBE requires PBE parameters to be set."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_af
    if-nez p3, :cond_c7

    .line 259
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->digest:I

    if-gtz v0, :cond_bf

    .line 263
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_e5

    .line 261
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_bf
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Algorithm requires a PBE key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_c7
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_157

    .line 267
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v2, p3

    check-cast v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 268
    .restart local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 275
    :goto_e5
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    const/4 v2, 0x1

    if-eqz v1, :cond_117

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v1, :cond_117

    .line 277
    move-object v1, p4

    .line 279
    .local v1, "ivRandom":Ljava/security/SecureRandom;
    if-nez v1, :cond_f5

    .line 281
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 284
    :cond_f5
    if-eq p1, v2, :cond_103

    const/4 v3, 0x3

    if-ne p1, v3, :cond_fb

    goto :goto_103

    .line 294
    :cond_fb
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "no IV set when one expected"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_103
    :goto_103
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivLength:I

    new-array v3, v3, [B

    .line 288
    .local v3, "iv":[B
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 289
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v4

    .line 290
    move-object v4, v0

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 291
    .end local v3    # "iv":[B
    move-object v1, v0

    goto :goto_118

    .line 300
    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    :cond_117
    move-object v1, v0

    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .local v1, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_118
    packed-switch p1, :pswitch_data_184

    .line 311
    :try_start_11b
    new-instance v0, Ljava/security/InvalidParameterException;

    goto :goto_12f

    .line 308
    :pswitch_11e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 309
    goto :goto_12b

    .line 304
    :pswitch_125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 305
    nop

    .line 317
    :goto_12b
    nop

    .line 318
    return-void

    .line 314
    :catch_12d
    move-exception v0

    goto :goto_14d

    .line 311
    :goto_12f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    throw v0
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_14d} :catch_12d

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :goto_14d
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_157
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_160
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key for algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_125
        :pswitch_11e
        :pswitch_125
        :pswitch_11e
    .end packed-switch
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 172
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 174
    :cond_11
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2a
    :goto_2a
    return-void
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 185
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    return-void

    .line 187
    :cond_9
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 14
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

    .line 379
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_24

    .line 386
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
    :try_end_7
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_5 .. :try_end_7} :catch_13

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v3, "input":[B
    .local v4, "inputOffset":I
    .local v5, "inputLen":I
    .local v6, "output":[B
    .local v7, "outputOffset":I
    :try_start_c
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I
    :try_end_f
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_c .. :try_end_f} :catch_10

    .line 388
    return v5

    .line 390
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :catch_13
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .line 393
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    .restart local v5    # "inputLen":I
    .restart local v6    # "output":[B
    .restart local v7    # "outputOffset":I
    .local p1, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :goto_1a
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 381
    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_24
    move-object v3, p1

    move v4, p2

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 364
    new-array v4, p3, [B

    .line 366
    .local v4, "out":[B
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .local v1, "input":[B
    .local v2, "inputOffset":I
    .local v3, "inputLen":I
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 368
    return-object v4
.end method
