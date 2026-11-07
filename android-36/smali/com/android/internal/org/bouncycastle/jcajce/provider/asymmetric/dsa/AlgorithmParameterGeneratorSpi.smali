.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field protected blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    .line 30
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .line 68
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_c

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .local v0, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    goto :goto_15

    .line 74
    .end local v0    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 77
    .restart local v0    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :goto_15
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_1f

    .line 79
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 82
    :cond_1f
    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    .line 84
    .local v2, "certainty":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-ne v3, v1, :cond_3a

    .line 86
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0xa0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 87
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_58

    .line 89
    :cond_3a
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-le v3, v1, :cond_51

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 92
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_58

    .line 96
    :cond_51
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 99
    :goto_58
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 105
    .local v1, "p":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :try_start_5c
    const-string v3, "DSA"

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 106
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_76} :catch_78

    .line 111
    nop

    .line 113
    return-object v3

    .line 108
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :catch_78
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 5
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 37
    const/16 v0, 0x200

    if-lt p1, v0, :cond_2f

    const/16 v0, 0xc00

    if-gt p1, v0, :cond_2f

    .line 42
    const/16 v0, 0x400

    if-gt p1, v0, :cond_1a

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_11

    goto :goto_1a

    .line 44
    :cond_11
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1a
    :goto_1a
    if-le p1, v0, :cond_2a

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_21

    goto :goto_2a

    .line 49
    :cond_21
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2a
    :goto_2a
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 54
    return-void

    .line 39
    :cond_2f
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be from 512 - 3072"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
