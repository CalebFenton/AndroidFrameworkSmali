.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DHKeyGenerationParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@0
    .prologue
    .line 16
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@7
    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@9
    .line 14
    return-void
.end method

.method static getStrength(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)I
    .locals 1
    .param p0, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@2
    return-object v0
.end method
