.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "BaseKeyGenerator.java"


# instance fields
.field protected blacklist algName:Ljava/lang/String;

.field protected blacklist defaultKeySize:I

.field protected blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

.field protected blacklist keySize:I

.field protected blacklist uninitialised:Z


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;)V
    .registers 5
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "defaultKeySize"    # I
    .param p3, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    .line 34
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->keySize:I

    .line 37
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    .line 38
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 85
    :cond_17
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 64
    if-nez p2, :cond_7

    .line 66
    :try_start_2
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    move-object p2, v0

    .line 68
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_14} :catch_16

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :catch_16
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 51
    if-eqz p1, :cond_11

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 56
    :cond_11
    return-void
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
