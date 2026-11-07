.class public Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# instance fields
.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist strength:I


# direct methods
.method public constructor blacklist <init>(Ljava/security/SecureRandom;I)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    .line 27
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return-void
.end method


# virtual methods
.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public blacklist getStrength()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return p0
.end method
