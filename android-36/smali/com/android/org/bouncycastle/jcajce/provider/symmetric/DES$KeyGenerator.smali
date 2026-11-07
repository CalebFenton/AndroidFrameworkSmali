.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$KeyGenerator;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "DES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 236
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    const-string v1, "DES"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 5

    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_17

    .line 250
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engine:Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->uninitialised:Z

    .line 254
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
    .registers 3

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method
