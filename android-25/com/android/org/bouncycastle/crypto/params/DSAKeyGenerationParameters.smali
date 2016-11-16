.class public Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DSAKeyGenerationParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@0
    .prologue
    .line 16
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@d
    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@f
    .line 14
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@2
    return-object v0
.end method
