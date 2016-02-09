.class public Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

.field private key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "pubKey"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 62
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@3
    .line 64
    .local v0, "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v2, "Diffie-Hellman public key has wrong parameters."

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@1e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@24
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@d
    move-result v0

    #@e
    add-int/lit8 v0, v0, 0x7

    #@10
    div-int/lit8 v0, v0, 0x8

    #@12
    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 31
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 33
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@7
    .line 34
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@d
    .line 41
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    instance-of v2, v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@f
    if-nez v2, :cond_1

    #@11
    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "DHEngine expects DHPrivateKeyParameters"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p1

    #@1b
    .line 38
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@1d
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    #@1e
    .line 46
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@20
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@22
    .line 47
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@24
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@2a
    .line 27
    return-void
.end method
