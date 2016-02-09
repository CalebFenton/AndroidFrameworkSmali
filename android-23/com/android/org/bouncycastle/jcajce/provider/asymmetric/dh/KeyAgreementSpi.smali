.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# static fields
.field private static final algorithms:Ljava/util/Hashtable;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private result:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 35
    new-instance v4, Ljava/util/Hashtable;

    #@2
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@7
    .line 39
    const/16 v4, 0x40

    #@9
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v3

    #@d
    .line 40
    .local v3, "i64":Ljava/lang/Integer;
    const/16 v4, 0xc0

    #@f
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    .line 41
    .local v1, "i192":Ljava/lang/Integer;
    const/16 v4, 0x80

    #@15
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v0

    #@19
    .line 42
    .local v0, "i128":Ljava/lang/Integer;
    const/16 v4, 0x100

    #@1b
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    .line 44
    .local v2, "i256":Ljava/lang/Integer;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@21
    const-string/jumbo v5, "DES"

    #@24
    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 45
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@29
    const-string/jumbo v5, "DESEDE"

    #@2c
    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 46
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@31
    const-string/jumbo v5, "BLOWFISH"

    #@34
    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 47
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@39
    const-string/jumbo v5, "AES"

    #@3c
    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    #@3
    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
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


# virtual methods
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
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

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
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@6a
    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@6c
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

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
    .locals 3
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
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Diffie-Hellman not initialised."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@f
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@12
    move-result-object v0

    #@13
    .line 140
    .local v0, "secret":[B
    array-length v1, p1

    #@14
    sub-int/2addr v1, p2

    #@15
    array-length v2, v0

    #@16
    if-ge v1, v2, :cond_1

    #@18
    .line 142
    new-instance v1, Ljavax/crypto/ShortBufferException;

    #@1a
    const-string/jumbo v2, "DHKeyAgreement - buffer too short"

    #@1d
    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 145
    :cond_1
    array-length v1, v0

    #@22
    const/4 v2, 0x0

    #@23
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 147
    array-length v1, v0

    #@27
    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 153
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 155
    new-instance v4, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v5, "Diffie-Hellman not initialised."

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 158
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 159
    .local v0, "algKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@14
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@17
    move-result-object v3

    #@18
    .line 161
    .local v3, "res":[B
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@1a
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 163
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/Integer;

    #@28
    .line 165
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v4

    #@2c
    div-int/lit8 v4, v4, 0x8

    #@2e
    new-array v1, v4, [B

    #@30
    .line 166
    .local v1, "key":[B
    array-length v4, v1

    #@31
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@34
    .line 168
    const-string/jumbo v4, "DES"

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_1

    #@3d
    .line 170
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@40
    .line 173
    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    #@42
    invoke-direct {v4, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@45
    return-object v4

    #@46
    .line 176
    .end local v1    # "key":[B
    .end local v2    # "length":Ljava/lang/Integer;
    :cond_2
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    #@48
    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@4b
    return-object v4
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
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@f
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@12
    move-result-object v0

    #@13
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
    .line 216
    instance-of v1, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 218
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
    .line 221
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@10
    .line 223
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
    .line 224
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
    .line 225
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@2c
    .line 214
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
    .line 185
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 187
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
    .line 189
    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@10
    .line 191
    .local v1, "privKey":Ljavax/crypto/interfaces/DHPrivateKey;
    if-eqz p2, :cond_2

    #@12
    .line 193
    instance-of v2, p2, Ljavax/crypto/spec/DHParameterSpec;

    #@14
    if-nez v2, :cond_1

    #@16
    .line 195
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@18
    const-string/jumbo v3, "DHKeyAgreement only accepts DHParameterSpec"

    #@1b
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    :cond_1
    move-object v0, p2

    #@20
    .line 197
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    #@22
    .line 199
    .local v0, "p":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@28
    .line 200
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@2e
    .line 208
    .end local v0    # "p":Ljavax/crypto/spec/DHParameterSpec;
    :goto_0
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@34
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->x:Ljava/math/BigInteger;

    #@36
    .line 183
    return-void

    #@37
    .line 204
    :cond_2
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@3e
    move-result-object v2

    #@3f
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->p:Ljava/math/BigInteger;

    #@41
    .line 205
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@48
    move-result-object v2

    #@49
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi;->g:Ljava/math/BigInteger;

    #@4b
    goto :goto_0
.end method
