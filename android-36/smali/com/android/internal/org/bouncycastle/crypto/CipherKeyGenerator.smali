.class public Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;
.super Ljava/lang/Object;
.source "CipherKeyGenerator.java"


# instance fields
.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateKey()[B
    .registers 3

    .line 38
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    new-array v0, v0, [B

    .line 40
    .local v0, "key":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 42
    return-object v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 25
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v1, "SymKeyGen"

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 29
    return-void
.end method
