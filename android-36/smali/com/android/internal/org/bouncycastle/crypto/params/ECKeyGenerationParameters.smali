.class public Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.source "ECKeyGenerationParameters.java"


# instance fields
.field private blacklist domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "domainParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 20
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 22
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
