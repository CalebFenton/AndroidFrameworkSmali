.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    .line 23
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
