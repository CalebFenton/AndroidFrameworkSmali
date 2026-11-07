.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-object p0
.end method

.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
