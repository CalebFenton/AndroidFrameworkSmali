.class public Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;
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
    .registers 2

    .line 38
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    new-array v0, v0, [B

    .line 40
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 26
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 28
    new-instance p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v0, "SymKeyGen"

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method
