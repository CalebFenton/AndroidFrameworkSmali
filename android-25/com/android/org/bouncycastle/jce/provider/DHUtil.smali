.class public Lcom/android/org/bouncycastle/jce/provider/DHUtil;
.super Ljava/lang/Object;
.source "DHUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 42
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@7
    .line 44
    .local v0, "k":Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    #@9
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    .line 45
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v5

    #@1f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@26
    move-result v6

    #@27
    const/4 v7, 0x0

    #@28
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2b
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@2e
    return-object v1

    #@2f
    .line 48
    .end local v0    # "k":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    #@31
    const-string/jumbo v2, "can\'t identify DH private key."

    #@34
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPublicKey;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 27
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    #@7
    .line 29
    .local v0, "k":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@9
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    .line 30
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@1e
    move-result-object v5

    #@1f
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@26
    move-result v6

    #@27
    const/4 v7, 0x0

    #@28
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@2b
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@2e
    return-object v1

    #@2f
    .line 33
    .end local v0    # "k":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    #@31
    const-string/jumbo v2, "can\'t identify DH public key."

    #@34
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method
