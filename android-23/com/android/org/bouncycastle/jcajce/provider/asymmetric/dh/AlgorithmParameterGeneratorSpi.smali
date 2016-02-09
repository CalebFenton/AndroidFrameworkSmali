.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field private l:I

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    #@3
    .line 19
    const/16 v0, 0x400

    #@5
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    #@7
    .line 21
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    #@a
    .line 15
    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    #@0
    .prologue
    const/16 v6, 0x14

    #@2
    .line 49
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    #@4
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    #@7
    .line 51
    .local v2, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 53
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    #@d
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@f
    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    #@12
    .line 60
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@15
    move-result-object v1

    #@16
    .line 66
    .local v1, "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :try_start_0
    const-string/jumbo v4, "DH"

    #@19
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@1c
    move-result-object v3

    #@1d
    .line 67
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@26
    move-result-object v6

    #@27
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    #@29
    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2c
    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 74
    return-object v3

    #@30
    .line 57
    .end local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    #@32
    new-instance v5, Ljava/security/SecureRandom;

    #@34
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    #@37
    invoke-virtual {v2, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    #@3a
    goto :goto_0

    #@3b
    .line 70
    .restart local v1    # "p":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    :catch_0
    move-exception v0

    #@3c
    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@3e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 27
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    #@2
    .line 28
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@4
    .line 25
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    instance-of v1, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 38
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v2, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 40
    check-cast v0, Ljavax/crypto/spec/DHGenParameterSpec;

    #@10
    .line 42
    .local v0, "spec":Ljavax/crypto/spec/DHGenParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    #@16
    .line 43
    invoke-virtual {v0}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    #@1c
    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    #@1e
    .line 34
    return-void
.end method
