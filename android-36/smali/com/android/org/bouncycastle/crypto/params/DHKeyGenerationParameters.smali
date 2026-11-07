.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DHKeyGenerationParameters.java"


# instance fields
.field private blacklist params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 4

    .line 20
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method

.method static blacklist getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-object p0
.end method
