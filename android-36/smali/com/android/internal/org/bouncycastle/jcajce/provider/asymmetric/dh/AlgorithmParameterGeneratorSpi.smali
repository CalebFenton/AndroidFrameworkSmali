.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field private blacklist l:I

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    .line 25
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 57
    .local v0, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v1

    .line 59
    .local v1, "certainty":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    .line 67
    .local v2, "p":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    :try_start_1a
    const-string v3, "DH"

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 68
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_34

    .line 73
    nop

    .line 75
    return-object v3

    .line 70
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :catch_34
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 33
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 34
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 35
    return-void
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

    .line 42
    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-eqz v0, :cond_16

    .line 46
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 48
    .local v0, "spec":Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 49
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 51
    return-void

    .line 44
    .end local v0    # "spec":Ljavax/crypto/spec/DHGenParameterSpec;
    :cond_16
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
