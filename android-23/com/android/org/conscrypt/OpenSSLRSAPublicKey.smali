.class public Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private transient fetchedParams:Z

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 10
    .param p1, "spec"    # Ljava/security/spec/RSAPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    .line 51
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@c
    move-result-object v0

    #@d
    .line 52
    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@14
    move-result-object v1

    #@15
    .line 53
    const/4 v2, 0x0

    #@16
    .line 54
    const/4 v3, 0x0

    #@17
    .line 55
    const/4 v4, 0x0

    #@18
    .line 56
    const/4 v5, 0x0

    #@19
    .line 57
    const/4 v6, 0x0

    #@1a
    .line 58
    const/4 v7, 0x0

    #@1b
    .line 50
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@1e
    move-result-wide v0

    #@1f
    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@22
    iput-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 48
    return-void

    #@25
    .line 59
    :catch_0
    move-exception v8

    #@26
    .line 60
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@28
    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v0
.end method

.method private ensureReadParams()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 96
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 97
    return-void

    #@6
    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@8
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    #@f
    move-result-object v0

    #@10
    .line 101
    .local v0, "params":[[B
    new-instance v1, Ljava/math/BigInteger;

    #@12
    const/4 v2, 0x0

    #@13
    aget-object v2, v0, v2

    #@15
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    #@18
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@1a
    .line 102
    new-instance v1, Ljava/math/BigInteger;

    #@1c
    aget-object v2, v0, v3

    #@1e
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    #@21
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@23
    .line 104
    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    #@25
    .line 95
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 10
    .param p0, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    .line 67
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@9
    move-result-object v0

    #@a
    .line 68
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@11
    move-result-object v1

    #@12
    .line 69
    const/4 v2, 0x0

    #@13
    .line 70
    const/4 v3, 0x0

    #@14
    .line 71
    const/4 v4, 0x0

    #@15
    .line 72
    const/4 v5, 0x0

    #@16
    .line 73
    const/4 v6, 0x0

    #@17
    .line 74
    const/4 v7, 0x0

    #@18
    .line 66
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@1b
    move-result-wide v0

    #@1c
    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v9

    #@20
    .line 75
    :catch_0
    move-exception v8

    #@21
    .line 76
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@23
    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 173
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    #@6
    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    .line 175
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@11
    move-result-object v1

    #@12
    move-object v3, v2

    #@13
    move-object v4, v2

    #@14
    move-object v5, v2

    #@15
    move-object v6, v2

    #@16
    move-object v7, v2

    #@17
    .line 173
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@1e
    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@20
    .line 182
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    #@23
    .line 170
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@3
    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 185
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 121
    if-ne p1, p0, :cond_0

    #@4
    .line 122
    return v5

    #@5
    .line 125
    :cond_0
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@7
    if-eqz v3, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 126
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    #@c
    .line 132
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@e
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 133
    return v5

    #@19
    .line 137
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_1
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 138
    return v2

    #@1e
    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@21
    move-object v1, p1

    #@22
    .line 143
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    #@24
    .line 144
    .local v1, "other":Ljava/security/interfaces/RSAPublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@26
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 145
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@32
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    .line 144
    :cond_3
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "RSA"

    #@3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@3
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@3
    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@5
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@3
    .line 152
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@5
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@8
    move-result v0

    #@9
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@b
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@e
    move-result v1

    #@f
    xor-int/2addr v0, v1

    #@10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 157
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    #@5
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    const-string/jumbo v1, "OpenSSLRSAPublicKey{"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "modulus="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 161
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    #@15
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 162
    const/16 v1, 0x2c

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 163
    const-string/jumbo v1, "publicExponent="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 164
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    #@29
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 165
    const/16 v1, 0x7d

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method
