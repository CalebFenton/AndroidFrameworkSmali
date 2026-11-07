.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .registers 3

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    .local v0, "newKey":[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 51
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 53
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_4

    .line 55
    return-object v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 7
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 27
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 29
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/16 v1, 0x8

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_f

    goto :goto_1c

    .line 33
    :cond_f
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-ne v0, v1, :cond_14

    goto :goto_1e

    .line 35
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1c
    :goto_1c
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    .line 40
    :goto_1e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "DESKeyGen"

    const/16 v4, 0x38

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 41
    return-void
.end method
