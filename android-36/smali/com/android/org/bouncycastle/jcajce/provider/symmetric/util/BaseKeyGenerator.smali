.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "BaseKeyGenerator.java"


# instance fields
.field protected blacklist algName:Ljava/lang/String;

.field protected blacklist defaultKeySize:I

.field protected blacklist engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

.field protected blacklist keySize:I

.field protected blacklist uninitialised:Z


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->keySize:I

    .line 37
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .line 79
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 85
    :cond_17
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .registers 5

    if-nez p2, :cond_6

    .line 66
    :try_start_2
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 73
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineInit(Ljava/security/SecureRandom;)V
    .registers 5

    if-eqz p1, :cond_11

    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    :cond_11
    return-void
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3

    .line 45
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
