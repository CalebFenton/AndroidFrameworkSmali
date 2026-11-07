.class public Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# instance fields
.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist strength:I


# direct methods
.method public constructor blacklist <init>(Ljava/security/SecureRandom;I)V
    .registers 4
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "strength"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    .line 27
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public blacklist getStrength()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return v0
.end method
