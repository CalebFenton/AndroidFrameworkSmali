.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field protected params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    #@3
    .line 20
    const/16 v0, 0x400

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@7
    .line 16
    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x50

    #@2
    const/16 v7, 0x400

    #@4
    .line 58
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@6
    if-gt v4, v7, :cond_1

    #@8
    .line 60
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    #@a
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    #@d
    .line 67
    .local v2, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@f
    if-nez v4, :cond_0

    #@11
    .line 69
    new-instance v4, Ljava/security/SecureRandom;

    #@13
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    #@16
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@18
    .line 72
    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@1a
    if-ne v4, v7, :cond_2

    #@1c
    .line 74
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@1e
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@20
    const/16 v6, 0xa0

    #@22
    invoke-direct {v4, v7, v6, v8, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    #@25
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@27
    .line 75
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@29
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    #@2c
    .line 87
    :goto_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@2f
    move-result-object v1

    #@30
    .line 93
    .local v1, "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :try_start_0
    const-string/jumbo v4, "DSA"

    #@33
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@36
    move-result-object v3

    #@37
    .line 94
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/security/spec/DSAParameterSpec;

    #@39
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@44
    move-result-object v7

    #@45
    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@48
    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 101
    return-object v3

    #@4c
    .line 64
    .end local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .end local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    #@4e
    new-instance v4, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    #@50
    invoke-direct {v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    #@53
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@56
    .restart local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    goto :goto_0

    #@57
    .line 77
    :cond_2
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@59
    if-le v4, v7, :cond_3

    #@5b
    .line 79
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@5d
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@5f
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@61
    const/16 v7, 0x100

    #@63
    invoke-direct {v4, v5, v7, v8, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    #@66
    iput-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@68
    .line 80
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    #@6a
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    #@6d
    goto :goto_1

    #@6e
    .line 84
    :cond_3
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@70
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@72
    const/16 v6, 0x14

    #@74
    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    #@77
    goto :goto_1

    #@78
    .line 97
    .restart local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :catch_0
    move-exception v0

    #@79
    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@7b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@82
    throw v4
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    const/16 v1, 0x400

    #@2
    .line 27
    const/16 v0, 0x200

    #@4
    if-lt p1, v0, :cond_0

    #@6
    const/16 v0, 0xc00

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 29
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    #@c
    const-string/jumbo v1, "strength must be from 512 - 3072"

    #@f
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 32
    :cond_1
    if-gt p1, v1, :cond_2

    #@15
    rem-int/lit8 v0, p1, 0x40

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 34
    new-instance v0, Ljava/security/InvalidParameterException;

    #@1b
    const-string/jumbo v1, "strength must be a multiple of 64 below 1024 bits."

    #@1e
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 37
    :cond_2
    if-le p1, v1, :cond_3

    #@24
    rem-int/lit16 v0, p1, 0x400

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 39
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2a
    const-string/jumbo v1, "strength must be a multiple of 1024 above 1024 bits."

    #@2d
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 42
    :cond_3
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    #@33
    .line 43
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@35
    .line 25
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2
    const-string/jumbo v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
