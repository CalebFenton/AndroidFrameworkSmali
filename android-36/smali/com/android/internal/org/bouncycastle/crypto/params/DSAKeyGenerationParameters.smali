.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DSAKeyGenerationParameters.java"


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 20
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 22
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
