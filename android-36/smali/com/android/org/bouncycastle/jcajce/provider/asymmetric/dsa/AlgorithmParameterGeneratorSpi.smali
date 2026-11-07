.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field protected blacklist params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x400

    .line 30
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 7

    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_c

    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    goto :goto_15

    .line 74
    :cond_c
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lcom/android/org/bouncycastle/crypto/SavableDigest;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 77
    :goto_15
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_1f

    .line 79
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 82
    :cond_1f
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    .line 84
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-ne v3, v1, :cond_38

    .line 86
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0xa0

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 87
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_4e

    :cond_38
    if-le v3, v1, :cond_49

    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_4e

    .line 96
    :cond_49
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 99
    :goto_4e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 105
    :try_start_52
    const-string v1, "DSA"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    .line 106
    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 5

    const/16 v0, 0x200

    if-lt p1, v0, :cond_2d

    const/16 v0, 0xc00

    if-gt p1, v0, :cond_2d

    const/16 v0, 0x400

    if-gt p1, v0, :cond_19

    .line 42
    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_11

    goto :goto_19

    .line 44
    :cond_11
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    if-le p1, v0, :cond_28

    .line 47
    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_20

    goto :goto_28

    .line 49
    :cond_20
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_28
    :goto_28
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void

    .line 39
    :cond_2d
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be from 512 - 3072"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3

    .line 61
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
