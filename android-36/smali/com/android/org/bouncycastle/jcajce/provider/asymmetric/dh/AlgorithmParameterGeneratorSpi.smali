.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field private blacklist l:I

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    const/16 v0, 0x800

    .line 25
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 57
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v1

    .line 59
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 67
    :try_start_1a
    const-string v1, "DH"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 68
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    invoke-direct {v2, v3, v0, p0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_33

    return-object v1

    :catch_33
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 3

    .line 33
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 34
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4

    .line 42
    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-eqz v0, :cond_15

    .line 46
    check-cast p1, Ljavax/crypto/spec/DHGenParameterSpec;

    .line 48
    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->strength:I

    .line 49
    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->l:I

    .line 50
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void

    .line 44
    :cond_15
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
