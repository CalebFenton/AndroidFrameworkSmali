.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "KeyAgreementSpi.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "Diffie-Hellman"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "kdf"    # Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V

    #@3
    .line 45
    return-void
.end method


# virtual methods
.method protected bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "r"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 57
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@3
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v3, v3, 0x7

    #@9
    div-int/lit8 v0, v3, 0x8

    #@b
    .line 59
    .local v0, "expectedLength":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@e
    move-result-object v2

    #@f
    .line 61
    .local v2, "tmp":[B
    array-length v3, v2

    #@10
    if-ne v3, v0, :cond_0

    #@12
    .line 63
    return-object v2

    #@13
    .line 66
    :cond_0
    aget-byte v3, v2, v5

    #@15
    if-nez v3, :cond_1

    #@17
    array-length v3, v2

    #@18
    add-int/lit8 v4, v0, 0x1

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 68
    array-length v3, v2

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    new-array v1, v3, [B

    #@21
    .line 70
    .local v1, "rv":[B
    array-length v3, v1

    #@22
    const/4 v4, 0x1

    #@23
    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 71
    return-object v1

    #@27
    .line 76
    .end local v1    # "rv":[B
    :cond_1
    new-array v1, v0, [B

    #@29
    .line 78
    .restart local v1    # "rv":[B
    array-length v3, v1

    #@2a
    array-length v4, v2

    #@2b
    sub-int/2addr v3, v4

    #@2c
    array-length v4, v2

    #@2d
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    .line 80
    return-object v1
.end method

.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 88
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "Diffie-Hellman not initialised."

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 93
    :cond_0
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 95
    new-instance v1, Ljava/security/InvalidKeyException;

    #@14
    const-string/jumbo v2, "DHKeyAgreement doPhase requires DHPublicKey"

    #@17
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    :cond_1
    move-object v0, p1

    #@1c
    .line 97
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    #@1e
    .line 99
    .local v0, "pubKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@28
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@38
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 104
    if-eqz p2, :cond_3

    #@40
    .line 106
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@42
    .end local p1    # "key":Ljava/security/Key;
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@48
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@4a
    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@50
    .line 107
    return-object v4

    #@51
    .line 101
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    #@53
    const-string/jumbo v2, "DHPublicKey not for this KeyAgreement!"

    #@56
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1

    #@5a
    .line 111
    :cond_3
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@5c
    .end local p1    # "key":Ljava/security/Key;
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@5f
    move-result-object v1

    #@60
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@62
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@64
    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@67
    move-result-object v1

    #@68
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@6a
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@6c
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@6e
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@71
    move-result-object v3

    #@72
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    #@75
    return-object v1
.end method

.method protected engineGenerateSecret([BI)I
    .locals 2
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Diffie-Hellman not initialised."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret([BI)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Diffie-Hellman not initialised."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@f
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@12
    move-result-object v0

    #@13
    .line 153
    .local v0, "res":[B
    const-string/jumbo v1, "TlsPremasterSecret"

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 155
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@1e
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->trimZeroes([B)[B

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@25
    return-object v1

    #@26
    .line 158
    :cond_1
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Diffie-Hellman not initialised."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 125
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->engineGenerateSecret()[B

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 209
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v2, "DHKeyAgreement requires DHPrivateKey"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 212
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@10
    .line 214
    .local v0, "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@1a
    .line 215
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@24
    .line 216
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2c
    .line 205
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 169
    new-instance v2, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v3, "DHKeyAgreement requires DHPrivateKey for initialisation"

    #@9
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    :cond_0
    move-object v1, p1

    #@e
    .line 171
    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@10
    .line 173
    .local v1, "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    if-eqz p2, :cond_3

    #@12
    .line 175
    instance-of v2, p2, Ljavax/crypto/spec/DHParameterSpec;

    #@14
    if-eqz v2, :cond_1

    #@16
    move-object v0, p2

    #@17
    .line 177
    nop

    #@18
    nop

    #@19
    .line 179
    .local v0, "p":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@1f
    .line 180
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@25
    .line 199
    .end local v0    # "p":Ljavax/crypto/spec/DHParameterSpec;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->result:Ljava/math/BigInteger;

    #@2b
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2d
    .line 165
    return-void

    #@2e
    .line 182
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v2, p2, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 184
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@3c
    .line 185
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@43
    move-result-object v2

    #@44
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@46
    .line 186
    nop

    #@47
    nop

    #@48
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->getUserKeyingMaterial()[B

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    #@4e
    goto :goto_0

    #@4f
    .line 190
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@51
    const-string/jumbo v3, "DHKeyAgreement only accepts DHParameterSpec"

    #@54
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 195
    :cond_3
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@5f
    move-result-object v2

    #@60
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@62
    .line 196
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@69
    move-result-object v2

    #@6a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@6c
    goto :goto_0
.end method
