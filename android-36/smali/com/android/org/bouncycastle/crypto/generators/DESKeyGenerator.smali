.class public Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .registers 3

    const/16 v0, 0x8

    .line 45
    new-array v0, v0, [B

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 51
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    .line 27
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 29
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    const/16 v0, 0x8

    if-eqz p1, :cond_18

    const/4 v1, 0x7

    if-ne p1, v1, :cond_d

    goto :goto_18

    :cond_d
    if-ne p1, v0, :cond_10

    goto :goto_1a

    .line 35
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DES key must be 64 bits long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_18
    :goto_18
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 40
    :goto_1a
    new-instance p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 p1, 0x0

    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v1, "DESKeyGen"

    const/16 v2, 0x38

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
