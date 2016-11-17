.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "BaseKeyGenerator.java"


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "defaultKeySize"    # I
    .param p3, "engine"    # Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    #@3
    .line 23
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    #@6
    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    #@8
    .line 31
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    #@a
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->keySize:I

    #@c
    .line 32
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@e
    .line 28
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@6
    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@8
    new-instance v2, Ljava/security/SecureRandom;

    #@a
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    #@d
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    #@f
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@15
    .line 77
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    #@18
    .line 80
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    #@1a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@1c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->algName:Ljava/lang/String;

    #@22
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@25
    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 59
    if-nez p2, :cond_0

    #@2
    .line 61
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    #@4
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@7
    .end local p2    # "random":Ljava/security/SecureRandom;
    .local v1, "random":Ljava/security/SecureRandom;
    move-object p2, v1

    #@8
    .line 63
    .end local v1    # "random":Ljava/security/SecureRandom;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@a
    new-instance v3, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@c
    invoke-direct {v3, p2, p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@f
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@12
    .line 64
    const/4 v2, 0x0

    #@13
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 55
    return-void

    #@16
    .line 67
    :catch_0
    move-exception v0

    #@17
    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/InvalidParameterException;

    #@19
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 46
    if-eqz p1, :cond_0

    #@2
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@4
    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@6
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    #@8
    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@e
    .line 49
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    #@11
    .line 44
    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2
    const-string/jumbo v1, "Not Implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
